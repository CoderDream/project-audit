package com.billjc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.billjc.model.User;
import com.billjc.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static Logger logger = LoggerFactory
			.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/home")
	public ModelAndView home(Long id) {
		ModelAndView mav = new ModelAndView("user/home");
		mav.addObject("user", userService.selectByPrimaryKey(""));
		return mav;
	}

	// @RequestMapping("/save")
	// public ModelAndView save(User user) {
	// ModelAndView mav = new ModelAndView("user/detail");
	// logger.debug(user);
	// userService.save(user);
	// logger.debug(user);
	// logger.debug("id \t" + user.getId());
	// mav.addObject("user", userService.selectByPrimaryKey(user.getId()));
	// return mav;
	// }

	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public Map<String, String> selectByParams(String value) {
		logger.debug("like {}", value);
		Map<String, String> map = new HashMap<String, String>();
		List<User> userList = userService.selectByParams(value);
		for (User user : userList) {
			logger.debug(user.toString());
			map.put(user.getWorkId(), user.getUsername());
		}

		return map;
	}
}
