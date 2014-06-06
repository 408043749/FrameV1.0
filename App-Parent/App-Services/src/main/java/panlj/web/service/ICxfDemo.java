package panlj.web.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import org.App.Domains.App;


@Path("/iCxfDemo")
public interface  ICxfDemo {
	
	/**
	 * 单参数传递
	 * @param foo
	 * @return
	 */
	@GET
	@Path("/sayHello/{foo}")
    public String sayHello(@PathParam("foo")String foo);
	
	/**
	 * 多参数传递
	 * @param name
	 * @param pwd
	 * @return
	 */
	@GET
	@Path("/sayHello2/{name}/{pwd}")
	public String sayHello2(@PathParam("name")String name,@PathParam("pwd")String pwd);
	
	/**
	 * 传递对象
	 * @param app
	 * @return
	 */
	@POST
	@Path("/getApp")
	public App getApp(App app);
}
