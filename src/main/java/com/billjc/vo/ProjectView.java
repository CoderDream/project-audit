package com.billjc.vo;

import java.math.BigDecimal;
import java.util.Date;

public class ProjectView {
	private String id;

	private String parentid;

	private String projectno;

	private String projectName;

	private String projectmgrWorkId;

	private String projectmgrName;

	private String company;

	private String departmentid;

	private String departmentname;

	private String projecttype;

	private String projectsubtype;

	private Date projectstartdate;

	private Date projectenddate;

	private String customerno;

	private String customername;

	private String customerdep;

	private String productfamilyname;

	private String productname;

	private String technology;

	private String deliverytype;

	private String customerpm;

	private String buManager;

	private Integer persontotal;

	private String cooperationtype;

	private String obdorppc;

	private Long wip;

	private Long stock;

	private String prostate;

	private String isjump;

	private Date procomputertime;

	private String createworkId;

	private String buManagerWorkId;

	private String buManagerName;

	private String proThreedepartmentid;

	private String proThreedepartmentname;

	private String proFourdepartmentid;

	private String proFourdepartmentname;

	private String clientproductpm;

	private String clientprojectpm;

	private String bjcproductpmWorkId;

	private String bjcproductpmname;

	private String qaworkId;

	private String qaname;

	private String projecttype2;

	private String projecttechnosphere;

	private Date projectstartdatetime;

	private Date projectenddatetime;

	private String deliveryaddress;

	private String isqasupport;

	private String workevaluate;

	private String prostateppc;

	private String isjumpppc;

	private String budgetcustomerno;

	private String budgetcustomername;

	private String oeprojectno;

	private String oeprojectName;

	private Date entrydate;

	private String beproduct;

	private String beproductname;

	private String isotherplace;

	private String teamsize;

	private Integer calendarid;

	private String calendarname;

	private String createname;

	private Date createDate;

	private String deliverycity;

	private Integer deliverycityid;

	private String areatype;

	private String issite;

	private Boolean isfinish;

	private String endname;

	private String isorder;

	private Date orderdate;

	private Long ordermoney;

	private Date applicationdate;

	private String projecttypes;

	private String contractno;

	private String contractname;

	private String readytype;

	private String firstcustomno;

	private String firstcustomname;

	private String secondcustomno;

	private String secondcustomname;

	private String thirdcustomno;

	private String thirdcustomname;

	private String levelname;

	private Integer isold;

	private Integer iscontinue;

	private String projectnewno;

	private String basetype;

	private BigDecimal overtimepaytimes;

	private BigDecimal pdrc;

	private BigDecimal planincome;

	private BigDecimal plancost;

	private BigDecimal subcontractorincome;

	private BigDecimal subcontractorcost;

	private Integer istestproject;

	private String pdDepartId;

	private String pdDepartName;

	private BigDecimal majorincome;

	private BigDecimal majorcost;

	private BigDecimal passthroughincome;

	private BigDecimal passthroughcost;

	private BigDecimal travelincome;

	private BigDecimal travelcost;

	private BigDecimal advanceincome;

	private BigDecimal advancecost;

	private BigDecimal subsidyincome;

	private BigDecimal subsidycost;

	private BigDecimal attachincome;

	private BigDecimal attachcost;

	private BigDecimal innersubcontracttotalcost;

	private Integer innersubcontractcount;

	private String oeprolist;

	private String demandrange;

	private String projectak;

	private String projectdescr;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getParentid() {
		return parentid;
	}

	public void setParentid(String parentid) {
		this.parentid = parentid == null ? null : parentid.trim();
	}

	public String getProjectno() {
		return projectno;
	}

	public void setProjectno(String projectno) {
		this.projectno = projectno == null ? null : projectno.trim();
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName == null ? null : projectName.trim();
	}

	public String getProjectmgrWorkId() {
		return projectmgrWorkId;
	}

	public void setProjectmgrWorkId(String projectmgrWorkId) {
		this.projectmgrWorkId = projectmgrWorkId == null ? null
				: projectmgrWorkId.trim();
	}

	public String getProjectmgrName() {
		return projectmgrName;
	}

	public void setProjectmgrName(String projectmgrName) {
		this.projectmgrName = projectmgrName == null ? null
				: projectmgrName.trim();
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company == null ? null : company.trim();
	}

	public String getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(String departmentid) {
		this.departmentid = departmentid == null ? null : departmentid.trim();
	}

	public String getDepartmentname() {
		return departmentname;
	}

	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname == null ? null
				: departmentname.trim();
	}

	public String getProjecttype() {
		return projecttype;
	}

	public void setProjecttype(String projecttype) {
		this.projecttype = projecttype == null ? null : projecttype.trim();
	}

	public String getProjectsubtype() {
		return projectsubtype;
	}

	public void setProjectsubtype(String projectsubtype) {
		this.projectsubtype = projectsubtype == null ? null
				: projectsubtype.trim();
	}

	public Date getProjectstartdate() {
		return projectstartdate;
	}

	public void setProjectstartdate(Date projectstartdate) {
		this.projectstartdate = projectstartdate;
	}

	public Date getProjectenddate() {
		return projectenddate;
	}

	public void setProjectenddate(Date projectenddate) {
		this.projectenddate = projectenddate;
	}

	public String getCustomerno() {
		return customerno;
	}

	public void setCustomerno(String customerno) {
		this.customerno = customerno == null ? null : customerno.trim();
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername == null ? null : customername.trim();
	}

	public String getCustomerdep() {
		return customerdep;
	}

	public void setCustomerdep(String customerdep) {
		this.customerdep = customerdep == null ? null : customerdep.trim();
	}

	public String getProductfamilyname() {
		return productfamilyname;
	}

	public void setProductfamilyname(String productfamilyname) {
		this.productfamilyname = productfamilyname == null ? null
				: productfamilyname.trim();
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname == null ? null : productname.trim();
	}

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology == null ? null : technology.trim();
	}

	public String getDeliverytype() {
		return deliverytype;
	}

	public void setDeliverytype(String deliverytype) {
		this.deliverytype = deliverytype == null ? null : deliverytype.trim();
	}

	public String getCustomerpm() {
		return customerpm;
	}

	public void setCustomerpm(String customerpm) {
		this.customerpm = customerpm == null ? null : customerpm.trim();
	}

	public String getBuManager() {
		return buManager;
	}

	public void setBuManager(String buManager) {
		this.buManager = buManager == null ? null : buManager.trim();
	}

	public Integer getPersontotal() {
		return persontotal;
	}

	public void setPersontotal(Integer persontotal) {
		this.persontotal = persontotal;
	}

	public String getCooperationtype() {
		return cooperationtype;
	}

	public void setCooperationtype(String cooperationtype) {
		this.cooperationtype = cooperationtype == null ? null
				: cooperationtype.trim();
	}

	public String getObdorppc() {
		return obdorppc;
	}

	public void setObdorppc(String obdorppc) {
		this.obdorppc = obdorppc == null ? null : obdorppc.trim();
	}

	public Long getWip() {
		return wip;
	}

	public void setWip(Long wip) {
		this.wip = wip;
	}

	public Long getStock() {
		return stock;
	}

	public void setStock(Long stock) {
		this.stock = stock;
	}

	public String getProstate() {
		return prostate;
	}

	public void setProstate(String prostate) {
		this.prostate = prostate == null ? null : prostate.trim();
	}

	public String getIsjump() {
		return isjump;
	}

	public void setIsjump(String isjump) {
		this.isjump = isjump == null ? null : isjump.trim();
	}

	public Date getProcomputertime() {
		return procomputertime;
	}

	public void setProcomputertime(Date procomputertime) {
		this.procomputertime = procomputertime;
	}

	public String getCreateworkId() {
		return createworkId;
	}

	public void setCreateworkId(String createworkId) {
		this.createworkId = createworkId == null ? null : createworkId.trim();
	}

	public String getBuManagerWorkId() {
		return buManagerWorkId;
	}

	public void setBuManagerWorkId(String buManagerWorkId) {
		this.buManagerWorkId = buManagerWorkId == null ? null
				: buManagerWorkId.trim();
	}

	public String getBuManagerName() {
		return buManagerName;
	}

	public void setBuManagerName(String buManagerName) {
		this.buManagerName = buManagerName == null ? null
				: buManagerName.trim();
	}

	public String getProThreedepartmentid() {
		return proThreedepartmentid;
	}

	public void setProThreedepartmentid(String proThreedepartmentid) {
		this.proThreedepartmentid = proThreedepartmentid == null ? null
				: proThreedepartmentid.trim();
	}

	public String getProThreedepartmentname() {
		return proThreedepartmentname;
	}

	public void setProThreedepartmentname(String proThreedepartmentname) {
		this.proThreedepartmentname = proThreedepartmentname == null ? null
				: proThreedepartmentname.trim();
	}

	public String getProFourdepartmentid() {
		return proFourdepartmentid;
	}

	public void setProFourdepartmentid(String proFourdepartmentid) {
		this.proFourdepartmentid = proFourdepartmentid == null ? null
				: proFourdepartmentid.trim();
	}

	public String getProFourdepartmentname() {
		return proFourdepartmentname;
	}

	public void setProFourdepartmentname(String proFourdepartmentname) {
		this.proFourdepartmentname = proFourdepartmentname == null ? null
				: proFourdepartmentname.trim();
	}

	public String getClientproductpm() {
		return clientproductpm;
	}

	public void setClientproductpm(String clientproductpm) {
		this.clientproductpm = clientproductpm == null ? null
				: clientproductpm.trim();
	}

	public String getClientprojectpm() {
		return clientprojectpm;
	}

	public void setClientprojectpm(String clientprojectpm) {
		this.clientprojectpm = clientprojectpm == null ? null
				: clientprojectpm.trim();
	}

	public String getBjcproductpmWorkId() {
		return bjcproductpmWorkId;
	}

	public void setBjcproductpmWorkId(String bjcproductpmWorkId) {
		this.bjcproductpmWorkId = bjcproductpmWorkId == null ? null
				: bjcproductpmWorkId.trim();
	}

	public String getBjcproductpmname() {
		return bjcproductpmname;
	}

	public void setBjcproductpmname(String bjcproductpmname) {
		this.bjcproductpmname = bjcproductpmname == null ? null
				: bjcproductpmname.trim();
	}

	public String getQaworkId() {
		return qaworkId;
	}

	public void setQaworkId(String qaworkId) {
		this.qaworkId = qaworkId == null ? null : qaworkId.trim();
	}

	public String getQaname() {
		return qaname;
	}

	public void setQaname(String qaname) {
		this.qaname = qaname == null ? null : qaname.trim();
	}

	public String getProjecttype2() {
		return projecttype2;
	}

	public void setProjecttype2(String projecttype2) {
		this.projecttype2 = projecttype2 == null ? null : projecttype2.trim();
	}

	public String getProjecttechnosphere() {
		return projecttechnosphere;
	}

	public void setProjecttechnosphere(String projecttechnosphere) {
		this.projecttechnosphere = projecttechnosphere == null ? null
				: projecttechnosphere.trim();
	}

	public Date getProjectstartdatetime() {
		return projectstartdatetime;
	}

	public void setProjectstartdatetime(Date projectstartdatetime) {
		this.projectstartdatetime = projectstartdatetime;
	}

	public Date getProjectenddatetime() {
		return projectenddatetime;
	}

	public void setProjectenddatetime(Date projectenddatetime) {
		this.projectenddatetime = projectenddatetime;
	}

	public String getDeliveryaddress() {
		return deliveryaddress;
	}

	public void setDeliveryaddress(String deliveryaddress) {
		this.deliveryaddress = deliveryaddress == null ? null
				: deliveryaddress.trim();
	}

	public String getIsqasupport() {
		return isqasupport;
	}

	public void setIsqasupport(String isqasupport) {
		this.isqasupport = isqasupport == null ? null : isqasupport.trim();
	}

	public String getWorkevaluate() {
		return workevaluate;
	}

	public void setWorkevaluate(String workevaluate) {
		this.workevaluate = workevaluate == null ? null : workevaluate.trim();
	}

	public String getProstateppc() {
		return prostateppc;
	}

	public void setProstateppc(String prostateppc) {
		this.prostateppc = prostateppc == null ? null : prostateppc.trim();
	}

	public String getIsjumpppc() {
		return isjumpppc;
	}

	public void setIsjumpppc(String isjumpppc) {
		this.isjumpppc = isjumpppc == null ? null : isjumpppc.trim();
	}

	public String getBudgetcustomerno() {
		return budgetcustomerno;
	}

	public void setBudgetcustomerno(String budgetcustomerno) {
		this.budgetcustomerno = budgetcustomerno == null ? null
				: budgetcustomerno.trim();
	}

	public String getBudgetcustomername() {
		return budgetcustomername;
	}

	public void setBudgetcustomername(String budgetcustomername) {
		this.budgetcustomername = budgetcustomername == null ? null
				: budgetcustomername.trim();
	}

	public String getOeprojectno() {
		return oeprojectno;
	}

	public void setOeprojectno(String oeprojectno) {
		this.oeprojectno = oeprojectno == null ? null : oeprojectno.trim();
	}

	public String getOeprojectName() {
		return oeprojectName;
	}

	public void setOeprojectName(String oeprojectName) {
		this.oeprojectName = oeprojectName == null ? null
				: oeprojectName.trim();
	}

	public Date getEntrydate() {
		return entrydate;
	}

	public void setEntrydate(Date entrydate) {
		this.entrydate = entrydate;
	}

	public String getBeproduct() {
		return beproduct;
	}

	public void setBeproduct(String beproduct) {
		this.beproduct = beproduct == null ? null : beproduct.trim();
	}

	public String getBeproductname() {
		return beproductname;
	}

	public void setBeproductname(String beproductname) {
		this.beproductname = beproductname == null ? null
				: beproductname.trim();
	}

	public String getIsotherplace() {
		return isotherplace;
	}

	public void setIsotherplace(String isotherplace) {
		this.isotherplace = isotherplace == null ? null : isotherplace.trim();
	}

	public String getTeamsize() {
		return teamsize;
	}

	public void setTeamsize(String teamsize) {
		this.teamsize = teamsize == null ? null : teamsize.trim();
	}

	public Integer getCalendarid() {
		return calendarid;
	}

	public void setCalendarid(Integer calendarid) {
		this.calendarid = calendarid;
	}

	public String getCalendarname() {
		return calendarname;
	}

	public void setCalendarname(String calendarname) {
		this.calendarname = calendarname == null ? null : calendarname.trim();
	}

	public String getCreatename() {
		return createname;
	}

	public void setCreatename(String createname) {
		this.createname = createname == null ? null : createname.trim();
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getDeliverycity() {
		return deliverycity;
	}

	public void setDeliverycity(String deliverycity) {
		this.deliverycity = deliverycity == null ? null : deliverycity.trim();
	}

	public Integer getDeliverycityid() {
		return deliverycityid;
	}

	public void setDeliverycityid(Integer deliverycityid) {
		this.deliverycityid = deliverycityid;
	}

	public String getAreatype() {
		return areatype;
	}

	public void setAreatype(String areatype) {
		this.areatype = areatype == null ? null : areatype.trim();
	}

	public String getIssite() {
		return issite;
	}

	public void setIssite(String issite) {
		this.issite = issite == null ? null : issite.trim();
	}

	public Boolean getIsfinish() {
		return isfinish;
	}

	public void setIsfinish(Boolean isfinish) {
		this.isfinish = isfinish;
	}

	public String getEndname() {
		return endname;
	}

	public void setEndname(String endname) {
		this.endname = endname == null ? null : endname.trim();
	}

	public String getIsorder() {
		return isorder;
	}

	public void setIsorder(String isorder) {
		this.isorder = isorder == null ? null : isorder.trim();
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public Long getOrdermoney() {
		return ordermoney;
	}

	public void setOrdermoney(Long ordermoney) {
		this.ordermoney = ordermoney;
	}

	public Date getApplicationdate() {
		return applicationdate;
	}

	public void setApplicationdate(Date applicationdate) {
		this.applicationdate = applicationdate;
	}

	public String getProjecttypes() {
		return projecttypes;
	}

	public void setProjecttypes(String projecttypes) {
		this.projecttypes = projecttypes == null ? null : projecttypes.trim();
	}

	public String getContractno() {
		return contractno;
	}

	public void setContractno(String contractno) {
		this.contractno = contractno == null ? null : contractno.trim();
	}

	public String getContractname() {
		return contractname;
	}

	public void setContractname(String contractname) {
		this.contractname = contractname == null ? null : contractname.trim();
	}

	public String getReadytype() {
		return readytype;
	}

	public void setReadytype(String readytype) {
		this.readytype = readytype == null ? null : readytype.trim();
	}

	public String getFirstcustomno() {
		return firstcustomno;
	}

	public void setFirstcustomno(String firstcustomno) {
		this.firstcustomno = firstcustomno == null ? null
				: firstcustomno.trim();
	}

	public String getFirstcustomname() {
		return firstcustomname;
	}

	public void setFirstcustomname(String firstcustomname) {
		this.firstcustomname = firstcustomname == null ? null
				: firstcustomname.trim();
	}

	public String getSecondcustomno() {
		return secondcustomno;
	}

	public void setSecondcustomno(String secondcustomno) {
		this.secondcustomno = secondcustomno == null ? null
				: secondcustomno.trim();
	}

	public String getSecondcustomname() {
		return secondcustomname;
	}

	public void setSecondcustomname(String secondcustomname) {
		this.secondcustomname = secondcustomname == null ? null
				: secondcustomname.trim();
	}

	public String getThirdcustomno() {
		return thirdcustomno;
	}

	public void setThirdcustomno(String thirdcustomno) {
		this.thirdcustomno = thirdcustomno == null ? null
				: thirdcustomno.trim();
	}

	public String getThirdcustomname() {
		return thirdcustomname;
	}

	public void setThirdcustomname(String thirdcustomname) {
		this.thirdcustomname = thirdcustomname == null ? null
				: thirdcustomname.trim();
	}

	public String getLevelname() {
		return levelname;
	}

	public void setLevelname(String levelname) {
		this.levelname = levelname == null ? null : levelname.trim();
	}

	public Integer getIsold() {
		return isold;
	}

	public void setIsold(Integer isold) {
		this.isold = isold;
	}

	public Integer getIscontinue() {
		return iscontinue;
	}

	public void setIscontinue(Integer iscontinue) {
		this.iscontinue = iscontinue;
	}

	public String getProjectnewno() {
		return projectnewno;
	}

	public void setProjectnewno(String projectnewno) {
		this.projectnewno = projectnewno == null ? null : projectnewno.trim();
	}

	public String getBasetype() {
		return basetype;
	}

	public void setBasetype(String basetype) {
		this.basetype = basetype == null ? null : basetype.trim();
	}

	public BigDecimal getOvertimepaytimes() {
		return overtimepaytimes;
	}

	public void setOvertimepaytimes(BigDecimal overtimepaytimes) {
		this.overtimepaytimes = overtimepaytimes;
	}

	public BigDecimal getPdrc() {
		return pdrc;
	}

	public void setPdrc(BigDecimal pdrc) {
		this.pdrc = pdrc;
	}

	public BigDecimal getPlanincome() {
		return planincome;
	}

	public void setPlanincome(BigDecimal planincome) {
		this.planincome = planincome;
	}

	public BigDecimal getPlancost() {
		return plancost;
	}

	public void setPlancost(BigDecimal plancost) {
		this.plancost = plancost;
	}

	public BigDecimal getSubcontractorincome() {
		return subcontractorincome;
	}

	public void setSubcontractorincome(BigDecimal subcontractorincome) {
		this.subcontractorincome = subcontractorincome;
	}

	public BigDecimal getSubcontractorcost() {
		return subcontractorcost;
	}

	public void setSubcontractorcost(BigDecimal subcontractorcost) {
		this.subcontractorcost = subcontractorcost;
	}

	public Integer getIstestproject() {
		return istestproject;
	}

	public void setIstestproject(Integer istestproject) {
		this.istestproject = istestproject;
	}

	public String getPdDepartId() {
		return pdDepartId;
	}

	public void setPdDepartId(String pdDepartId) {
		this.pdDepartId = pdDepartId == null ? null : pdDepartId.trim();
	}

	public String getPdDepartName() {
		return pdDepartName;
	}

	public void setPdDepartName(String pdDepartName) {
		this.pdDepartName = pdDepartName == null ? null : pdDepartName.trim();
	}

	public BigDecimal getMajorincome() {
		return majorincome;
	}

	public void setMajorincome(BigDecimal majorincome) {
		this.majorincome = majorincome;
	}

	public BigDecimal getMajorcost() {
		return majorcost;
	}

	public void setMajorcost(BigDecimal majorcost) {
		this.majorcost = majorcost;
	}

	public BigDecimal getPassthroughincome() {
		return passthroughincome;
	}

	public void setPassthroughincome(BigDecimal passthroughincome) {
		this.passthroughincome = passthroughincome;
	}

	public BigDecimal getPassthroughcost() {
		return passthroughcost;
	}

	public void setPassthroughcost(BigDecimal passthroughcost) {
		this.passthroughcost = passthroughcost;
	}

	public BigDecimal getTravelincome() {
		return travelincome;
	}

	public void setTravelincome(BigDecimal travelincome) {
		this.travelincome = travelincome;
	}

	public BigDecimal getTravelcost() {
		return travelcost;
	}

	public void setTravelcost(BigDecimal travelcost) {
		this.travelcost = travelcost;
	}

	public BigDecimal getAdvanceincome() {
		return advanceincome;
	}

	public void setAdvanceincome(BigDecimal advanceincome) {
		this.advanceincome = advanceincome;
	}

	public BigDecimal getAdvancecost() {
		return advancecost;
	}

	public void setAdvancecost(BigDecimal advancecost) {
		this.advancecost = advancecost;
	}

	public BigDecimal getSubsidyincome() {
		return subsidyincome;
	}

	public void setSubsidyincome(BigDecimal subsidyincome) {
		this.subsidyincome = subsidyincome;
	}

	public BigDecimal getSubsidycost() {
		return subsidycost;
	}

	public void setSubsidycost(BigDecimal subsidycost) {
		this.subsidycost = subsidycost;
	}

	public BigDecimal getAttachincome() {
		return attachincome;
	}

	public void setAttachincome(BigDecimal attachincome) {
		this.attachincome = attachincome;
	}

	public BigDecimal getAttachcost() {
		return attachcost;
	}

	public void setAttachcost(BigDecimal attachcost) {
		this.attachcost = attachcost;
	}

	public BigDecimal getInnersubcontracttotalcost() {
		return innersubcontracttotalcost;
	}

	public void setInnersubcontracttotalcost(
			BigDecimal innersubcontracttotalcost) {
		this.innersubcontracttotalcost = innersubcontracttotalcost;
	}

	public Integer getInnersubcontractcount() {
		return innersubcontractcount;
	}

	public void setInnersubcontractcount(Integer innersubcontractcount) {
		this.innersubcontractcount = innersubcontractcount;
	}

	public String getOeprolist() {
		return oeprolist;
	}

	public void setOeprolist(String oeprolist) {
		this.oeprolist = oeprolist;
	}

	public String getDemandrange() {
		return demandrange;
	}

	public void setDemandrange(String demandrange) {
		this.demandrange = demandrange;
	}

	public String getProjectak() {
		return projectak;
	}

	public void setProjectak(String projectak) {
		this.projectak = projectak;
	}

	public String getProjectdescr() {
		return projectdescr;
	}

	public void setProjectdescr(String projectdescr) {
		this.projectdescr = projectdescr;
	}

	@Override
	public String toString() {
		return "Project [id=" + id + ", parentid=" + parentid + ", projectno="
				+ projectno + ", projectName=" + projectName
				+ ", projectmgrWorkId=" + projectmgrWorkId + ", projectmgrName="
				+ projectmgrName + ", company=" + company + ", departmentid="
				+ departmentid + ", departmentname=" + departmentname
				+ ", projecttype=" + projecttype + ", projectsubtype="
				+ projectsubtype + ", projectstartdate=" + projectstartdate
				+ ", projectenddate=" + projectenddate + ", customerno="
				+ customerno + ", customername=" + customername
				+ ", customerdep=" + customerdep + ", productfamilyname="
				+ productfamilyname + ", productname=" + productname
				+ ", technology=" + technology + ", deliverytype="
				+ deliverytype + ", customerpm=" + customerpm + ", buManager="
				+ buManager + ", persontotal=" + persontotal
				+ ", cooperationtype=" + cooperationtype + ", obdorppc="
				+ obdorppc + ", wip=" + wip + ", stock=" + stock + ", prostate="
				+ prostate + ", isjump=" + isjump + ", procomputertime="
				+ procomputertime + ", createworkId=" + createworkId
				+ ", buManagerWorkId=" + buManagerWorkId + ", buManagerName="
				+ buManagerName + ", proThreedepartmentid="
				+ proThreedepartmentid + ", proThreedepartmentname="
				+ proThreedepartmentname + ", proFourdepartmentid="
				+ proFourdepartmentid + ", proFourdepartmentname="
				+ proFourdepartmentname + ", clientproductpm=" + clientproductpm
				+ ", clientprojectpm=" + clientprojectpm
				+ ", bjcproductpmWorkId=" + bjcproductpmWorkId
				+ ", bjcproductpmname=" + bjcproductpmname + ", qaworkId="
				+ qaworkId + ", qaname=" + qaname + ", projecttype2="
				+ projecttype2 + ", projecttechnosphere=" + projecttechnosphere
				+ ", projectstartdatetime=" + projectstartdatetime
				+ ", projectenddatetime=" + projectenddatetime
				+ ", deliveryaddress=" + deliveryaddress + ", isqasupport="
				+ isqasupport + ", workevaluate=" + workevaluate
				+ ", prostateppc=" + prostateppc + ", isjumpppc=" + isjumpppc
				+ ", budgetcustomerno=" + budgetcustomerno
				+ ", budgetcustomername=" + budgetcustomername
				+ ", oeprojectno=" + oeprojectno + ", oeprojectName="
				+ oeprojectName + ", entrydate=" + entrydate + ", beproduct="
				+ beproduct + ", beproductname=" + beproductname
				+ ", isotherplace=" + isotherplace + ", teamsize=" + teamsize
				+ ", calendarid=" + calendarid + ", calendarname="
				+ calendarname + ", createname=" + createname + ", createDate="
				+ createDate + ", deliverycity=" + deliverycity
				+ ", deliverycityid=" + deliverycityid + ", areatype="
				+ areatype + ", issite=" + issite + ", isfinish=" + isfinish
				+ ", endname=" + endname + ", isorder=" + isorder
				+ ", orderdate=" + orderdate + ", ordermoney=" + ordermoney
				+ ", applicationdate=" + applicationdate + ", projecttypes="
				+ projecttypes + ", contractno=" + contractno
				+ ", contractname=" + contractname + ", readytype=" + readytype
				+ ", firstcustomno=" + firstcustomno + ", firstcustomname="
				+ firstcustomname + ", secondcustomno=" + secondcustomno
				+ ", secondcustomname=" + secondcustomname + ", thirdcustomno="
				+ thirdcustomno + ", thirdcustomname=" + thirdcustomname
				+ ", levelname=" + levelname + ", isold=" + isold
				+ ", iscontinue=" + iscontinue + ", projectnewno="
				+ projectnewno + ", basetype=" + basetype
				+ ", overtimepaytimes=" + overtimepaytimes + ", pdrc=" + pdrc
				+ ", planincome=" + planincome + ", plancost=" + plancost
				+ ", subcontractorincome=" + subcontractorincome
				+ ", subcontractorcost=" + subcontractorcost
				+ ", istestproject=" + istestproject + ", pdDepartId="
				+ pdDepartId + ", pdDepartName=" + pdDepartName
				+ ", majorincome=" + majorincome + ", majorcost=" + majorcost
				+ ", passthroughincome=" + passthroughincome
				+ ", passthroughcost=" + passthroughcost + ", travelincome="
				+ travelincome + ", travelcost=" + travelcost
				+ ", advanceincome=" + advanceincome + ", advancecost="
				+ advancecost + ", subsidyincome=" + subsidyincome
				+ ", subsidycost=" + subsidycost + ", attachincome="
				+ attachincome + ", attachcost=" + attachcost
				+ ", innersubcontracttotalcost=" + innersubcontracttotalcost
				+ ", innersubcontractcount=" + innersubcontractcount + "]";
	}

}