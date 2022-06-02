<?php

require_once "vendor/autoload.php";
require_once "./utils.php";

use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

date_default_timezone_set('Europe/Paris');

class Config {
    private static ?Config $instance = null;
    public ?EntityManager $entityManager = null;
    public $options = null;

    private function __construct()
    {
        $isDevMode = true;
        $config = Setup::createYAMLMetadataConfiguration(array(__DIR__ . "/config/yaml"), $isDevMode);
        $conn = array(
            'host' => 'ec2-52-30-159-47.eu-west-1.compute.amazonaws.com',
            'driver' => 'pdo_pgsql',
            'user' => 'tpdbrgwagalrvd',
            'password' => '9588ff6a51d403ea3794eae77617e32f2907f7884d724d4f38c5446c5dcf8ce2',
            'dbname' => 'd5uglnoonppbmm',
            'port' => '5432'
        );
        $this->entityManager = EntityManager::create($conn, $config);

        $this->options = [
            "attribute" => "token",
            "header" => "Authorization",
            "regexp" => "/Bearer\s+(.*)$/i",
            "secure" => false,
            "algorithm" => ["HS256"],
            "secret" => JWT_SECRET,
            "path" => ["/api"],
            "ignore" => ["/api/signin", "/api/signup"],
            "error" => function ($response, $arguments) {
                $data["status"] = "error";
                $data["message"] = $arguments["message"];
                return $response
                    ->withHeader("Content-Type", "application/json")
                    ->getBody()->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
            }
        ];
    }

    public static function getInstance() : Config {
        if (self::$instance == null) {
            self::$instance = new Config();
        }
        return self::$instance;
    }

}


