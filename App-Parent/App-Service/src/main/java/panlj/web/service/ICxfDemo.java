package panlj.web.service;

import javax.jws.WebService;
import javax.ws.rs.POST;

@WebService
public interface  ICxfDemo {
    public String sayHello(String foo);
}
