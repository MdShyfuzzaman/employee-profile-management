package com.employee.profile;

import com.employee.profile.configuration.JpaConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;


@Import(JpaConfiguration.class)
@SpringBootApplication(scanBasePackages = {"com.employee.profile."})
public class App {

    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }
}
