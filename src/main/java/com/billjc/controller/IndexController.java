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

/**
 * @author xulin28709
 *
 */
@Controller
public class IndexController {

	private static Logger logger = LoggerFactory
					.getLogger(IndexController.class);

	/**
	 * @return 页面名称
	 */
	@RequestMapping("/resource/mybrothers")
	public String login() {
		return "login";
	}

	@RequestMapping("/resource/idel")
	public String login2() {
		return "login2";
	}

	@RequestMapping("/alert")
	public String alert() {
		return "alert";
	}

	@RequestMapping("/help")
	public String help() {
		return "help";
	}

	@RequestMapping("/login")
	public ModelAndView index(String workId, HttpSession session,
					ModelAndView mav) {
		logger.debug("workId {} " + workId);
		// 解密workId
		String decodeWorkId = QEncodeUtil.decrypt(workId);
		setProfilePower(session, mav, decodeWorkId);

		mav = new ModelAndView("index2");

		return mav;
	}

	@RequestMapping("/login2")
	public String index2(String workId, HttpSession session, ModelAndView mav) {
		logger.debug("workId {} " + workId);
		// 解密workId
		String decodeWorkId = QEncodeUtil.decrypt(workId);
		setProfilePower(session, mav, decodeWorkId);
		return "index2";
	}

	@RequestMapping("/error")
	public String error(String workId, HttpSession session, ModelAndView mav) {
		logger.debug("workId {} " + workId);
		return "error";
	}

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
		List<Integer> resourceIds = PowerUtil.findResourceIds(workId);
		String decodeWorkId = QEncodeUtil.encrypt(workId);
		mav.addObject("resourceIds", resourceIds);
		mav.addObject("workId", workId);
		mav.addObject("decodeWorkId", decodeWorkId);

		session.setAttribute("workId", workId);
		session.setAttribute("decodeWorkId", decodeWorkId);
		session.setAttribute("resourceIds", resourceIds);
	}

}
