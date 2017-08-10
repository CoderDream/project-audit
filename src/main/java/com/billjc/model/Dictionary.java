package com.billjc.model;

import org.apache.ibatis.type.Alias;

/**
 * <pre>
           ([ID](<ID, int,>
           ,[Type],<Type, nvarchar(50),>
           ,[KeyName],<KeyName, nvarchar(50),>
           ,[value]  ,<value, nvarchar(50),>
           ,[ParentID]  ,<ParentID, int,>
           ,[Remark]) ,<Remark, nvarchar(100),>)
 * </pre>
 *
 */
@Alias(value = "Dictionary")
public class Dictionary {

	private Integer id;

	private String type;

	private String keyName;

	private String value;

	private Integer parentId;

	private Integer sortIndex;

	private String remark;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getSortIndex() {
		return sortIndex;
	}

	public void setSortIndex(Integer sortIndex) {
		this.sortIndex = sortIndex;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Dictionary [id=" + id + ", type=" + type + ", keyName="
				+ keyName + ", value=" + value + ", parentId=" + parentId
				+ ", remark=" + remark + "]";
	}

}