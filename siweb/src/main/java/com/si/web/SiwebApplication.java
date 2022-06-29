package com.si.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class SiwebApplication {

	public static void main(String[] args) {
		SpringApplication.run(SiwebApplication.class, args);
	}

}
