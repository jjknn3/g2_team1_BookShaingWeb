package com.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 
 */
@SpringBootApplication
@MapperScan("com.demo.mapper")
public class InformationsharingApplication extends SpringBootServletInitializer  {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(InformationsharingApplication.class);
    }
    public static void main(String[] args) {
        SpringApplication.run(InformationsharingApplication.class, args);
    }

}
