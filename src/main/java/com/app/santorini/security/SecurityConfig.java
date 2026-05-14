package com.app.santorini.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
        return http.httpBasic(Customizer.withDefaults())
                .authorizeHttpRequests((request)->{
                    request.anyRequest()
                            .permitAll();
                }).build();
    }

    @Bean
    public UserDetailsService userDetailsService(){
        var service = new InMemoryUserDetailsManager();
        var usuario = User.withUsername("Prueba")
                .password("1234567")
                .authorities("Test")
                .build();
        service.createUser(usuario);
        return service;
    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return NoOpPasswordEncoder.getInstance();
    }

}
