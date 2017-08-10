package com.billjc.util;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class PowerUtil {

	private static Logger logger = LoggerFactory
			.getLogger(PowerUtil.class);

	@SuppressWarnings("unchecked")
	public static List<Integer> findResourceIds(String username) {
		RestTemplate restTemplate = new RestTemplate();
		logger.debug("findResourceIds username {}", username);
		String url = UriComponentsBuilder
				.fromHttpUrl(Constants.BASE_URL + "findResourceIds/" + username)
				.build().toUriString();

		ResponseEntity<?> responseEntity = restTemplate.getForEntity(url,
				String.class);

		String o = (String) responseEntity.getBody();
		ObjectMapper mapper = new ObjectMapper();
		List<Integer> result = null;
		try {
			result = mapper.readValue(o, List.class);
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
}
