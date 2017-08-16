package com.billjc.model;

import java.util.Date;

public class Project {
    private String id;

    private String projectNo;

    private String projectName;

    private String projectMgrWorkId;

    private String projectMgrName;

    private Date projectStartDate;

    private Date projectEndDate;

    private Boolean isFinish;

    private String proState;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getProjectNo() {
        return projectNo;
    }

    public void setProjectNo(String projectNo) {
        this.projectNo = projectNo == null ? null : projectNo.trim();
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName == null ? null : projectName.trim();
    }

    public String getProjectMgrWorkId() {
        return projectMgrWorkId;
    }

    public void setProjectMgrWorkId(String projectMgrWorkId) {
        this.projectMgrWorkId = projectMgrWorkId == null ? null : projectMgrWorkId.trim();
    }

    public String getProjectMgrName() {
        return projectMgrName;
    }

    public void setProjectMgrName(String projectMgrName) {
        this.projectMgrName = projectMgrName == null ? null : projectMgrName.trim();
    }

    public Date getProjectStartDate() {
        return projectStartDate;
    }

    public void setProjectStartDate(Date projectStartDate) {
        this.projectStartDate = projectStartDate;
    }

    public Date getProjectEndDate() {
        return projectEndDate;
    }

    public void setProjectEndDate(Date projectEndDate) {
        this.projectEndDate = projectEndDate;
    }

    public Boolean getIsFinish() {
        return isFinish;
    }

    public void setIsFinish(Boolean isFinish) {
        this.isFinish = isFinish;
    }

    public String getProState() {
        return proState;
    }

    public void setProState(String proState) {
        this.proState = proState == null ? null : proState.trim();
    }
}