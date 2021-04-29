 package com.cognizant;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class TrainingManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(TrainingManagementSystemApplication.class, args);
	}

}
