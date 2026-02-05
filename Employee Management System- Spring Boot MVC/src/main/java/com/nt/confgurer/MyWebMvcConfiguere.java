package com.nt.confgurer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.nt.interceptor.TimeCheckingInterceptor;

@Component
public class MyWebMvcConfiguere implements WebMvcConfigurer {
	@Autowired
	private TimeCheckingInterceptor tci;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		registry.addInterceptor(tci).addPathPatterns("/**").excludePathPatterns("/", // home
				"/images/**", // images
				"/css/**", // css
				"/js/**", // js
				"/error", // spring error
				"/timeout.jsp", // timeout page
				"/favicon.ico" // browser icon
		);
	}

}
