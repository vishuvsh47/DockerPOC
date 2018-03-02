package com.bank.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.bank.demo.model.Mxotherbankbenemtb;


public interface  MxotherbankRepository extends JpaRepository<Mxotherbankbenemtb,Integer> {
	/*List<?> findById(@Param("acc_num") String acc_num );*/
}
