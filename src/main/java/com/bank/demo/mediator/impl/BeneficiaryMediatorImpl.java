package com.bank.demo.mediator.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bank.demo.mediator.BeneficiaryMediator;
import com.bank.demo.model.Mxaxisbankbenemtb;
import com.bank.demo.model.Mxotherbankbenemtb;
import com.bank.demo.repository.MxaxisbankbenemtbRepository;
import com.bank.demo.repository.MxotherbankRepository;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
@Component
public class BeneficiaryMediatorImpl implements BeneficiaryMediator{
	@Autowired
	MxaxisbankbenemtbRepository axisBankBenRep;
	@Autowired
	MxotherbankRepository otherBankRep;
	
	@Override
	public <T> List<T> fetchDataBasedOnBank(String type) {
		List<T> resultList = new ArrayList<>();
		if (type.equalsIgnoreCase("Axis")) {
			resultList = (List<T>) axisBankBenRep.findAll();
		} else if (type.equalsIgnoreCase("Other")) {
			resultList = (List<T>) otherBankRep.findAll();
		}
		return resultList;
	}
	
	public List insertRecepient(String requestBody,String type) throws JsonParseException, JsonMappingException, IOException{
		List result = null;
		ObjectMapper mapper = new ObjectMapper();
		if(type.equalsIgnoreCase("Axis")){
			Mxaxisbankbenemtb mxaxisbankbenemtb = mapper.readValue(requestBody, Mxaxisbankbenemtb.class);
			axisBankBenRep.save(mxaxisbankbenemtb);
			result = axisBankBenRep.findAll();
		}else if(type.equalsIgnoreCase("Other")){
			Mxotherbankbenemtb mxotherbankbenemtb = mapper.readValue(requestBody, Mxotherbankbenemtb.class);
			otherBankRep.save(mxotherbankbenemtb);
			result = otherBankRep.findAll();
		}
		return result;
	}
}
