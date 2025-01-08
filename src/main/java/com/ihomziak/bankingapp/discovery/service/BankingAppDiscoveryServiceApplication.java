package com.ihomziak.bankingapp.discovery.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class BankingAppDiscoveryServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(BankingAppDiscoveryServiceApplication.class, args);
    }

}
