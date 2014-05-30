package panlj.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.App.Domains.App;
import org.apache.cxf.jaxrs.client.WebClient;
import org.springframework.stereotype.Service;

import panlj.web.service.ICxfDemo;

@Service(value="iCxfDemoImpl")
public class ICxfDemoImpl implements ICxfDemo {

	public String sayHello(String foo) {
		return "hello " + foo;
	}
	
	public String sayHello2(String name,String pwd) {
		return "result: "+name+","+pwd;
	}
	
	public App getApp(App app) {
		App newApp = new App();
		newApp.setId("000000001");
		newApp.setPwd(app.getPwd());
		newApp.setName(app.getName());
		List<String> list = new ArrayList<String>();
		list.add("a");
		list.add("b");
		list.add("c");
		newApp.setChilds(list);
		
		return newApp;
	}
	/**
	 * 静态调用方法
	 * @param args
	 */
	public static void main(String[] args) {
		ICxfDemo service = new ICxfDemoImpl();
		// Service instance
//		JAXRSServerFactoryBean restServer = new JAXRSServerFactoryBean();
//		restServer.setServiceBean(service);
//		restServer.setAddress("http://localhost:8080/");
//		restServer.create();
		App app = new App();
		app.setName("PANLJ");
		app.setPwd("123456");
		WebClient client = WebClient.create("http://localhost:8080/App-Services/iCxfDemo");
		client.path("/getApp/panlj");
		App resultApp = client.post(app,App.class);
		System.out.println(resultApp.getId());
	}

}
