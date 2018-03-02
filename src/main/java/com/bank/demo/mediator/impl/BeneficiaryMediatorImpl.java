package com.bank.demo.mediator.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bank.demo.mediator.BeneficiaryMediator;
import com.bank.demo.model.Mxaxisbankbenemtb;
import com.bank.demo.model.Mxotherbankbenemtb;
import com.bank.demo.model.Mxpullfundsbenemtb;
import com.bank.demo.model.Mxupibenmtb;
import com.bank.demo.model.Mxvmtbenmtb;
import com.bank.demo.repository.MxaxisbankbenemtbRepository;
import com.bank.demo.repository.MxotherbankRepository;
import com.bank.demo.repository.MxpullfundsbenemtbRepository;
import com.bank.demo.repository.MxupibenmtbRepository;
import com.bank.demo.repository.MxvmtbenmtbRepository;
import com.bank.demo.util.ValidationHelper;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
@Component
public class BeneficiaryMediatorImpl implements BeneficiaryMediator{
	@Autowired
	MxaxisbankbenemtbRepository axisBankBenRep;
	@Autowired
	MxotherbankRepository otherBankRep;
	@Autowired
	MxpullfundsbenemtbRepository pullFundRepository;
	@Autowired
	MxvmtbenmtbRepository vmtRepository;
	@Autowired
	MxupibenmtbRepository upiRepository;
/*	@Autowired
	ValidationHelper validationHelper;*/
	@Override
	public  List<?> fetchDataBasedOnBank(String type) {
		List<?> resultList = new ArrayList<>();
		if (type.equalsIgnoreCase("Axis")) {
			resultList = (List<?>) axisBankBenRep.findAll();
		} else if (type.equalsIgnoreCase("Nonaxis")) {
			resultList = (List<?>) otherBankRep.findAll();
		}else if(type.equalsIgnoreCase("VMT")){
			resultList = (List<?>) vmtRepository.findAll();
		}else if(type.equalsIgnoreCase("Pull")){
			resultList = (List<?>) pullFundRepository.findAll();
		}else if(type.equalsIgnoreCase("Upi")){
			resultList = (List<?>) upiRepository.findAll();
		}
		return resultList;
	}
	@SuppressWarnings("rawtypes")
	@Override
	public List insertRecepient(String requestBody,String type) throws JsonParseException, JsonMappingException, IOException{
		List result = null;
		ObjectMapper mapper = new ObjectMapper();
		List errors = new ArrayList();
		if(type.equalsIgnoreCase("Axis")){
			Mxaxisbankbenemtb mxaxisbankbenemtb = mapper.readValue(requestBody, Mxaxisbankbenemtb.class);
			/*mxaxisbankbenemtb = validationHelper.validateFields(type,mxaxisbankbenemtb);*/
			axisBankBenRep.save(mxaxisbankbenemtb);
			result = axisBankBenRep.findAll();
		}else if(type.equalsIgnoreCase("NonAxis")){
			Mxotherbankbenemtb mxotherbankbenemtb = mapper.readValue(requestBody, Mxotherbankbenemtb.class);
			otherBankRep.save(mxotherbankbenemtb);
			result = otherBankRep.findAll();
		}else if(type.equalsIgnoreCase("VMT")){
			Mxvmtbenmtb mxvmtbenmtb =  mapper.readValue(requestBody, Mxvmtbenmtb.class);
			System.out.println(mxvmtbenmtb.getBene_id());
			vmtRepository.save(mxvmtbenmtb);
			result =  vmtRepository.findAll();
		}else if(type.equalsIgnoreCase("Pull")){
			Mxpullfundsbenemtb mxpullfundsbenemtb =  mapper.readValue(requestBody, Mxpullfundsbenemtb.class);
			pullFundRepository.save(mxpullfundsbenemtb);
			result = pullFundRepository.findAll();
		}else if(type.equalsIgnoreCase("Upi")){
			Mxupibenmtb mxupibenmtb = mapper.readValue(requestBody, Mxupibenmtb.class);
			upiRepository.save(mxupibenmtb);
			result=upiRepository.findAll();
		}
		return result;
	}
	@Override
	public List<?> searchRecepient(String acc_num,String phone_num,String cust_id,String type){
		List<?> searchResult = new ArrayList();
		if(type.equalsIgnoreCase("Axis")){
			if(null!=cust_id){
				searchResult = axisBankBenRep.searchRecipientCustId(cust_id);
			}else if(null != acc_num){
				searchResult = axisBankBenRep.searchRecipientAccNum(acc_num);
			}
		}/*else if(type.equalsIgnoreCase("Others")){
			searchResult = otherBankRep.searchRecipientAccNum(acc_num);
		}*/
		return searchResult;
	}
}
