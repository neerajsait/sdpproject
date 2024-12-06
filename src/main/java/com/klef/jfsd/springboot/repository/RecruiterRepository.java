package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Recruiter;

public interface RecruiterRepository extends JpaRepository<Recruiter,Integer> 
{
	@Query("select r from Recruiter r where r.gmail=?1 and r.password=?2")
	public Recruiter checkRecruiterlogin(String gmail,String pwd);

}
