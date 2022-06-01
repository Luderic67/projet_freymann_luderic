<?php

use Psr\Http\Message\ResponseInterface as Response;
use Firebase\JWT\JWT;

const JWT_SECRET = "a22a005e-dde8-4c95-be33-56a6e83a6099";
const TOKEN_EXPIRATION_TIME = 600;

function createJWT(Response $response, String $username) : Response {
    $issuedAt = time();
    $expirationTime = $issuedAt + TOKEN_EXPIRATION_TIME;
    $payload = array(
        'username' => $username,
        'iat' => $issuedAt,
        'exp' => $expirationTime
    );

    $token_jwt = JWT::encode($payload, JWT_SECRET, "HS256");
    $response = $response->withHeader("Authorization", "Bearer {$token_jwt}");
    return $response;
}

function addHeaders(Response $response) : Response {
    $response = $response->withHeader("Content-Type", "application/json")
        ->withHeader("Access-Control-Allow-Origin", "https://projet-freymann-luderic.herokuapp.com")
        ->withHeader("Access-Control-Allow-Headers", "Content-Type, Authorization")
        ->withHeader("Access-Control-Allow-Methods", "GET, POST, PUT, PATCH, DELETE, OPTIONS")
        ->withHeader("Access-Control-Expose-Headers", "Authorization");

    return $response;
}