package com.poly.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class N7Application {

	public static void main(String[] args) {
		SpringApplication.run(N7Application.class, args);
	}
}
