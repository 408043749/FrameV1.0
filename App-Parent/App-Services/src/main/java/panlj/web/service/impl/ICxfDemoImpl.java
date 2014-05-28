package panlj.web.service.impl;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

import org.apache.cxf.jaxrs.JAXRSServerFactoryBean;
import org.springframework.stereotype.Service;

import panlj.web.service.ICxfDemo;

@Service(value="iCxfDemoImpl")
@Path("/iCxfDemoImpl")
public class ICxfDemoImpl implements ICxfDemo {

	public String sayHello(String foo) {
		return "hello " + foo;
	}
	
	public String sayHello2(String name,String pwd) {
		return "result: "+name+","+pwd;
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
