package panlj.web.service.impl;

import javax.jws.WebService;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.apache.cxf.jaxrs.JAXRSServerFactoryBean;

import panlj.web.service.ICxfDemo;

@WebService()
public class ICxfDemoImpl implements ICxfDemo {

	@GET
	@Path("/sayHello")
	public String sayHello(String foo) {
		return "hello " + foo;
	}
	
	/**
	 * 静态调用方法
	 * @param args
	 */
	public static void main(String[] args) {
		ICxfDemo service = new ICxfDemoImpl();
		// Service instance
		JAXRSServerFactoryBean restServer = new JAXRSServerFactoryBean();
		restServer.setServiceBean(service);
		restServer.setAddress("http://localhost:8080/");
		restServer.create();
	}
}
