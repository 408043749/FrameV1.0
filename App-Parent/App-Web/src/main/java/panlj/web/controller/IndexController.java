package panlj.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping("/index")
    public String helloWorld(Model model) {
        return "/main"; 

    }
    
    @RequestMapping("/index2")
    public String helloWorld2(Model model) {
    	return "/bottom"; 
    	
    }
}
