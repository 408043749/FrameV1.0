package panlj.web.service;

import javax.jws.WebService;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@WebService
public interface  ICxfDemo {
	@GET
	@Path("/sayHello")
    public String sayHello(String foo);
}
