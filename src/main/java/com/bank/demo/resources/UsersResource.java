package com.bank.demo.resources;

import java.io.IOException;
import java.util.List;

import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bank.demo.mediator.BeneficiaryMediator;
import com.bank.demo.model.Mxaxisbankbenemtb;
import com.bank.demo.repository.MxaxisbankbenemtbRepository;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;



@RestController
@RequestMapping("/benificiaries")
public class UsersResource {
	
	@Autowired
	BeneficiaryMediator beneficiaryMediator;
	
	@Autowired
	MxaxisbankbenemtbRepository usersRepository;
	
	@GetMapping(value="/getRecipients")
	public ResponseEntity getAll(@RequestParam(value ="type",required=false ,defaultValue="Axis") String type)
	{
		ResponseEntity responseEntity;
		List responseList;
		try{
			responseList  =beneficiaryMediator.fetchDataBasedOnBank(type);
			responseEntity = new ResponseEntity(usersRepository.findAll(),HttpStatus.OK);
		}catch(Exception e){
			responseEntity = new ResponseEntity("Invalid input",HttpStatus.BAD_REQUEST);
		}
		return responseEntity;
	}
	@PostMapping(value="/insertRecipients")
	public List<Mxaxisbankbenemtb> persist(@RequestParam(value ="type",required=true)String type,@RequestBody String requestBody) throws JsonParseException, JsonMappingException, IOException
	{	
			List responseList;
			responseList = beneficiaryMediator.insertRecepient(requestBody,type);
			return responseList;
	}
}
