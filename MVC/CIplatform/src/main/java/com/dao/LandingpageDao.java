package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component
public class LandingpageDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
}
