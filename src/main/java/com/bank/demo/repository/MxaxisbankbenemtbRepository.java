package com.bank.demo.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.bank.demo.model.Mxaxisbankbenemtb;


public interface MxaxisbankbenemtbRepository extends JpaRepository<Mxaxisbankbenemtb, Integer> {
	
		
	/* @Query("SELECT BENE_ID FROM mxaxisbankbenemtb WHERE customer_id = :ownCust_Id and bene_acc_no = :bene_acc_no")
	 public ArrayList<String> checkBeneExist(String ownCust_Id, String bene_acc_no);*/
}
