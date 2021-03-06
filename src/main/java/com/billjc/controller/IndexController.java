package com.billjc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.billjc.util.PowerUtil;
import com.billjc.util.QEncodeUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @author xulin28709
 *
 */
@Controller
public class IndexController {

	private static Logger logger = LoggerFactory
					.getLogger(IndexController.class);
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/alert")
	public String alert() {
		return "alert";
	}

	@RequestMapping("/index")
	public String index(String workId, HttpSession session, ModelAndView mav) {
		logger.debug("workId {} " + workId);
		// 解密workId
		String decodeWorkId = QEncodeUtil.decrypt(workId);
		setProfilePower(session, mav, decodeWorkId);
		return "index";
	}

	@RequestMapping("/error")
	public String error(String workId, HttpSession session, ModelAndView mav) {
		logger.debug("workId {} " + workId);
		return "error";
	}
					

//	/**
//	 * @return 页面名称
//	 */
//	@RequestMapping("/login")
//	public String login() {
//		return "login";
//	}
//	
////	/**
////	 * @return 页面名称
////	 */
////	@RequestMapping("/index")
////	public String login() {
////		return "login";
////	}
////
////	@RequestMapping("/resource/idel")
////	public String login2() {
////		return "login2";
////	}
//
//	@RequestMapping("/alert")
//	public String alert() {
//		return "alert";
//	}
//
//	@RequestMapping("/help")
//	public String help() {
//		return "help";
//	}
//
////	@RequestMapping("/login")
////	public ModelAndView login(String workId, HttpSession session,
////					ModelAndView mav) {
////		logger.debug("workId {} " + workId);
////		// 解密workId
////		String decodeWorkId = QEncodeUtil.decrypt(workId);
////		setProfilePower(session, mav, decodeWorkId);
////
////		mav = new ModelAndView("index");
////
////		return mav;
////	}
//
//	@RequestMapping("/index")
//	public String index(String workId, HttpSession session, ModelAndView mav) {
//		logger.debug("workId {} " + workId);
//		// 解密workId
//		String decodeWorkId = QEncodeUtil.decrypt(workId);
//		setProfilePower(session, mav, decodeWorkId);
//		return "index";
//	}
//
//	@RequestMapping("/error")
//	public String error(String workId, HttpSession session, ModelAndView mav) {
//		logger.debug("workId {} " + workId);
//		return "error";
//	}

	/**
	 * 这里模拟登陆，所以不需要把workId放到Session中
	 * 
	 * @param session
	 *            缓存
	 * @param mav
	 *            模型和视图
	 * @param workId
	 *            员工号
	 */
	private void setProfilePower(HttpSession session, ModelAndView mav,
					String workId) {
		logger.debug("setPower", mav);
		List<String> resourceIds = PowerUtil.findResourceIds(workId);
		String decodeWorkId = QEncodeUtil.encrypt(workId);
		
		ObjectMapper mapper = new ObjectMapper();

		String resourceIdsStr = "";
		String workIdStr = "";
		String decodeWorkIdStr = "";
		try {
			resourceIdsStr = mapper.writeValueAsString(resourceIds);
			workIdStr = mapper.writeValueAsString(workId);
			decodeWorkIdStr = mapper.writeValueAsString(decodeWorkId);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		mav.addObject("resourceIds", resourceIdsStr);
		mav.addObject("workId", workIdStr);
		mav.addObject("decodeWorkId", decodeWorkIdStr);
		
//		mav.addObject("resourceIds", resourceIds);
//		mav.addObject("workId", workId);
//		mav.addObject("decodeWorkId", decodeWorkId);

		session.setAttribute("resourceIds", resourceIdsStr);
		session.setAttribute("workId", workId);
		session.setAttribute("decodeWorkId", decodeWorkId);
	}

}
