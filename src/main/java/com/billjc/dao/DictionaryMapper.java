package com.billjc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.billjc.model.Dictionary;

public interface DictionaryMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Dictionary record);

	int insertSelective(Dictionary record);

	List<Dictionary> findAll();

	List<Dictionary> selectByParentID();

	List<Dictionary> selectByType(String type);

	List<Dictionary> selectByValue(@Param("value") String value,
			@Param("type") String type);

	Dictionary selectByKey(Integer id);

	int updateByPrimaryKeySelective(Dictionary record);

	int updateByPrimaryKey(Dictionary record);
}