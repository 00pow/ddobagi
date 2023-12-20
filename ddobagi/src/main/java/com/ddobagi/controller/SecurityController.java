package com.ddobagi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

	@Controller
	@RequestMapping(value = "/sec")
	public class SecurityController {

		private static final Logger logger 
			= LoggerFactory.getLogger(SecurityController.class);

		//http://localhost:8088/sec/all
		@RequestMapping(value = "/all", method = RequestMethod.GET)
		public void doAll() {
			logger.debug(" doAll() 실행 ");
		}
		//http://localhost:8088/sec/member
		@RequestMapping(value = "/member", method = RequestMethod.GET)
		public void doMember() {
			logger.debug(" doMember() 실행 ");

		}
		//http://localhost:8088/sec/admin
		@RequestMapping(value = "/admin", method = RequestMethod.GET)
		public void doAdmin() {
			logger.debug(" doAdmin() 실행 ");
		}
		
	}

