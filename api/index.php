<?php

require '../vendor/autoload.php';
require_once __DIR__ . '/../bootstrap.php';
require_once __DIR__ . '/utils.php';

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Tuupola\Middleware\JwtAuthentication;
use Slim\Factory\AppFactory;

$app = AppFactory::create();

/**
 * ROUTES
 */
$app->post('/api/signup', function(Request $request, Response $response, $args){
    $body = $request->getParsedBody();
    $email = $body['email'] ?? "";
    $password = $body['password'] ?? "";
    $username = $body['username'] ?? "";
    $first_name = $body['first_name'] ?? "";
    $last_name = $body['last_name'] ?? "";

    $error = $email == "" || $password == "" || $username == "" || $last_name == "" || $first_name == "";

    // Si un des champs est manquant
    if ($error) {
        $data["error"] = "One of the fileds is missing, fileds require : [email, password, username, lastname, firstname]";
        $response = $response->withStatus(403);
        $response->getBody()->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
        return $response;
    }

    $clientRespository = Config::getInstance()->entityManager->getRepository('Client');
    $client = $clientRespository->findOneBy(array("email" => $email));

    // Si l'email est déjà utilisé
    if ($client != null) {
        $data["error"] = "Error creating the account";
        $response = $response->withStatus(403);
        $response->getBody()->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
        return $response;
    }

    $newClient = new Client();
    $newClient->setEmail($email);
    $newClient->setFirstName($first_name);
    $newClient->setLastName($last_name);
    $newClient->setUsername($username);
    $newClient->setPassword(password_hash($password, PASSWORD_DEFAULT));

    // Enregistre le client en BDD
    Config::getInstance()->entityManager->persist($newClient);
    Config::getInstance()->entityManager->flush();

    $data["email"] = $email;
    $response = addHeaders($response);
    $response = $response->withHeader("Access-Control-Max-Age", TOKEN_EXPIRATION_TIME);
    $response->getBody()->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));

    return $response;
});

$app->post('/api/signin', function(Request $request, Response $response, $args) {
    $body = $request->getParsedBody();

    // Récupère les paramètres du body
    $username = $body['username'] ?? "";
    $password = $body['password'] ?? "";

    $error = $username == "" || $password == "";

    // Si un des champs est manquant
    if ($error) {
        $data["error"] = "Error with the accounts field";
        $response = $response->withStatus(403);
        $response->getBody()->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
        return $response;
    }

    $clientRespository = Config::getInstance()->entityManager->getRepository('Client');
    $client = $clientRespository->findOneBy(array("username" => $username));

    // Si il n'y a pas de client avec l'email ou mot de passe
    if ($client == null || !password_verify($password, $client->getPassword())) {
        $data["error"] = "Error with the email or password";
        $response = $response->withStatus(403);
        $response->getBody()->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
        return $response;
    }

    $data["email"] = $client->getEmail();
    $data["username"] = $client->getUsername();
    $data["first_name"] = $client->getFirstName();
    $data["last_name"] = $client->getLastName();
    $data["expiration_time"] = time() + TOKEN_EXPIRATION_TIME;

    $response = addHeaders($response);
    $response = createJWT($response, $login);
    $response->getBody()->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));

    return $response;
});

$app->get('/api/products', function(Request $request, Response $response, $args) {
    $productRepository = Config::getInstance()->entityManager->getRepository('Product');
    $products = $productRepository->findAll();

    $data = array();
    foreach($products as $product) {
        $productInfo = array(
            "id" => $product->getId(),
            "name" => $product->getName(),
            "description" => $product->getDescription(),
            "stock_sector" => $product->getStockSector(),
            "stock_name" => $product->getStockName(),
            "stock_name" => $product->getStockMarket(),
            "price" => $product->getPrice()
        );
        array_push($data, $productInfo);
    }

    $response = addHeaders($response);
    $response->getBody()->write(json_encode($data));
    return $response;
});

$app->add(new JwtAuthentication(Config::getInstance()->options));

$app->run();

