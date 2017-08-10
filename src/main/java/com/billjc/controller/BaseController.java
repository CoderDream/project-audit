package com.billjc.controller;

import com.billjc.util.PowerUtil;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import org.springframework.web.servlet.ModelAndView;

/**
 * @author xulin28709
 *
 */
@Controller
public class BaseController {

	private static Logger logger = LoggerFactory.getLogger(BaseController.class);

	public List<Integer> setPower(HttpSession session, ModelAndView mav) {
		logger.debug("setPower", mav);
		String workId = (String) session.getAttribute("workId"); // TODO
		List<Integer> resourceIds = PowerUtil.findResourceIds(workId);
		mav.addObject("resourceIds", resourceIds);
		return resourceIds;
	}

}
