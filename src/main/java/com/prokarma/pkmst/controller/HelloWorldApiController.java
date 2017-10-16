package com.prokarma.pkmst.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
/**
 * Api implemention
 * @author pkmst
 *
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.PkmstServerCodegen", date = "2017-10-13T15:19:53.170Z")

@RestController
public class HelloWorldApiController implements HelloWorldApi {
    private final ObjectMapper objectMapper;
@Autowired
    public HelloWorldApiController(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

	
	@RequestMapping("/hello/{name}")
	public String greetHello(@PathVariable("name") String userName) {
		return "Hello! welcome  " + userName;
	}
	
	@RequestMapping("/sayHello")
	public String sayHello(@RequestParam(value="name", defaultValue="World") String userName) {
		return "Hello! welcome  " + userName;
	}

}
