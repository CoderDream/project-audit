package com.billjc.model;

import java.util.Arrays;

public class User {
	private String id;

	private String username;

	private String userPwd;

	private String createDate;

	private Integer departId;

	private String email;

	private String workId;

	private String departName;

	private Integer isIntro;

	private Integer isLock;

	private byte[] userImage;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd == null ? null : userPwd.trim();
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate == null ? null : createDate.trim();
	}

	public Integer getDepartId() {
		return departId;
	}

	public void setDepartId(Integer departId) {
		this.departId = departId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public String getWorkId() {
		return workId;
	}

	public void setWorkId(String workId) {
		this.workId = workId == null ? null : workId.trim();
	}

	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName == null ? null : departName.trim();
	}

	public Integer getIsIntro() {
		return isIntro;
	}

	public void setIsIntro(Integer isIntro) {
		this.isIntro = isIntro;
	}

	public Integer getIsLock() {
		return isLock;
	}

	public void setIsLock(Integer isLock) {
		this.isLock = isLock;
	}

	public byte[] getUserImage() {
		return userImage;
	}

	public void setUserImage(byte[] userImage) {
		this.userImage = userImage;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", userPwd="
				+ userPwd + ", createDate=" + createDate + ", departId="
				+ departId + ", email=" + email + ", workId=" + workId
				+ ", departName=" + departName + ", isIntro=" + isIntro
				+ ", isLock=" + isLock + ", userImage="
				+ Arrays.toString(userImage) + "]";
	}

}