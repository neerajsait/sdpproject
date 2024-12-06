package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Recruiter;

public interface RecruiterService {

	public String RecruiterRegistration(Recruiter rq);
	public Recruiter checkRecruiterlogin(String gmail,String pwd);
	
}
