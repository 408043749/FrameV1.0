package panlj.web.service.impl;

import javax.jws.WebService;

@WebService()
public class ICxfDemoImpl {

    public String sayHello(String foo) {
        return "hello "+foo;
    }
}
