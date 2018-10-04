/**
 * 
 */
package com.zwo;

import java.util.Base64;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.jwt.Jwt;
import org.springframework.security.jwt.JwtHelper;

import com.zwo.modules.system.service.impl.UserDetailService;

/**
 * @author lenovo
 *
 */
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserDetailService userDetailService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
        .csrf().disable()
            .exceptionHandling()
            .authenticationEntryPoint((request, response, authException) -> response.sendError(HttpServletResponse.SC_UNAUTHORIZED))
        .and()
            .authorizeRequests()
            .antMatchers("/**").authenticated()
        .and()
            .httpBasic();
	}

	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
//		super.configure(auth);
		auth.userDetailsService(userDetailService).passwordEncoder(new BCryptPasswordEncoder());
	}
	
	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}
	
    public static void main(String[] args) {
    	String content = "au-service:123456";
    	String encodeContent = Base64.getEncoder().encodeToString(content.getBytes());
    	System.out.println(encodeContent);
    	byte[] bs = Base64.getDecoder().decode(encodeContent);
    	String res = new String(bs);
    	System.out.println(res);
//    	Jwt jwt = JwtHelper.decode("c2VydrnljZSloaToxMjMONTY=");
//    	System.out.println(jwt.getEncoded());
	}
}
