package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Recruiter;
import com.klef.jfsd.springboot.repository.RecruiterRepository;

@Service
public class RecruiterServiceimpl implements RecruiterService {
	@Autowired
	private RecruiterRepository recruiterRepository;

	@Override
	public String RecruiterRegistration(Recruiter rq) {
		recruiterRepository.save(rq);
		return "Recruiter Registered Successfully";
	}

	@Override
	public Recruiter checkRecruiterlogin(String gmail, String pwd) {
		return recruiterRepository.checkRecruiterlogin(gmail, pwd);
	}

	

	

}
