package com.idi.demo.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.User;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
    @Override
    public void configure(AuthenticationManagerBuilder web) throws Exception {
        User.UserBuilder builder = User.withDefaultPasswordEncoder();
        web.inMemoryAuthentication().withUser(builder.username("test").password("test").roles("ADMIN"));
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests(). //Restrict access based on servlet request
                anyRequest(). //All request MUST be authenticated
                authenticated().
                and().
                formLogin(). //customize form login
                loginPage("/showLogin"). //request mapping
                loginProcessingUrl("/authenticateTheUser") //post data for processing
                .permitAll()
                .and()
                .logout()
                .permitAll();
    }
}
