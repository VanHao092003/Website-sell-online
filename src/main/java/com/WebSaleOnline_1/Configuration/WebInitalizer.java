package com.WebSaleOnline_1.Configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInitalizer implements WebApplicationInitializer{
	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext annotationConfigWebApplicationContext = new AnnotationConfigWebApplicationContext();
		annotationConfigWebApplicationContext.register(Configuration.class);
		annotationConfigWebApplicationContext.setServletContext(servletContext);
		
		DispatcherServlet dispatcherServlet = new DispatcherServlet(annotationConfigWebApplicationContext);
		dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);
		
		ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher", dispatcherServlet);
		servlet.setLoadOnStartup(1);
		servlet.addMapping("/");
	}
}
