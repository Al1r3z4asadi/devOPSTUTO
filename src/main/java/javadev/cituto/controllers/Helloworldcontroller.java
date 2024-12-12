package javadev.cituto.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/hello")
public class Helloworldcontroller {


    @GetMapping("/world")
    public String sayHello(){
        return "Hello WORLD";
    }


}
