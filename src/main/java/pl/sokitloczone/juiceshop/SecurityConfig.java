package pl.sokitloczone.juiceshop;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation
          .web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import pl.sokitloczone.juiceshop.security.SpringDataUserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/newOrder/").hasAnyRole("USER", "ADMIN")
                .antMatchers("/adminPanel/**").hasRole("ADMIN")
                .antMatchers("/box/create/").hasRole("ADMIN")
                .and().formLogin()
                .loginPage("/login")
                .and().exceptionHandling().accessDeniedPage("/403")
                .and().logout().logoutSuccessUrl("/");
    }
    // ADMIN PASSWORD:123

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SpringDataUserDetailsService customUserDetailsService() {
        return new SpringDataUserDetailsService();
    }
}