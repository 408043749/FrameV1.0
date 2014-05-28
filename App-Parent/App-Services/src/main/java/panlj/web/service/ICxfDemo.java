package panlj.web.service;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

public interface  ICxfDemo {
	@GET
	@Path("/sayHello/{foo}")
    public String sayHello(@PathParam("foo")String foo);
	
	@GET
	@Path("/sayHello2")
	public String sayHello2(@PathParam("name")String name,@PathParam("pwd")String pwd);
}
