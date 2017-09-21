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

	/**
	 * @param session
	 *            缓存
	 * @param mav
	 *            模型和视图
	 * @return 权限列表
	 */
	public List<String> setPower(HttpSession session, ModelAndView mav) {
		logger.debug("setPower", mav);
		String workId = (String) session.getAttribute("workId");
		List<String> resourceIds = PowerUtil.findResourceIds(workId);
		mav.addObject("resourceIds", resourceIds);
		return resourceIds;
	}

}
