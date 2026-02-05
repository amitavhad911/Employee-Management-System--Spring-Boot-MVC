package com.nt.interceptor;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class TimeCheckingInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception {

		LocalTime time = LocalTime.now();
		int hour = time.getHour();

		if (hour < 9 || hour > 24) {
			res.sendRedirect(req.getContextPath() + "/timeout.jsp");
			return false;
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mav)
			throws Exception {
		System.out.println("TimeCheckingInterceptor.postHandle()");
		// add addtional model attributes
		mav.addObject("sysDate", LocalDate.now());
		mav.addObject("sysTime", LocalTime.now());
	}

	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse res, Object handler, Exception ex)
			throws Exception {
		System.out.println("TimeCheckingInterceptor.afterCompletion()");
		// nullify the model attributes
		req.removeAttribute("sysDate");
		req.removeAttribute("sysTime");
		req.removeAttribute("resultMsg");
		req.removeAttribute("empsList");

	}

}
