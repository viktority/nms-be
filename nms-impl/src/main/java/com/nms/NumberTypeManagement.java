package com.nms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.flyway.FlywayAutoConfiguration;
import org.springframework.boot.autoconfigure.jersey.JerseyAutoConfiguration;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication(exclude = {JerseyAutoConfiguration.class, FlywayAutoConfiguration.class})
@EnableEurekaClient
public class NumberTypeManagement {

    public static void main(String[] args) {
        SpringApplication.run(NumberTypeManagement.class, args);
    }

}
