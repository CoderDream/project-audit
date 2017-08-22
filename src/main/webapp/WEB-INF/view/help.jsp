<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>操作手册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jquery.mobile-1.4.5.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/pdrc.css" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.validate.min.js"></script>
<style type="text/css">
img {
	width: 100%;
}
</style>
</head>
<body>
	<div data-role="page" id="index">
		<div role="main" class="ui-context">
			<div>
				<ul data-role="listview" data-inset="true">


					<li>项目审计操作手册</li>
					<li>目录</li>
					<li>1. 新增项目审计</li>
					<li>1.1. 登录</li>
					<li>1.2. 选择项目信息</li>
					<li>1.3. 新增审计科目</li>
					<li>1.4. 修改审计科目</li>
					<li>1.5. 删除审计科目</li>
					<li>2. 查看我的审计</li>
					<li>2.1. 登录</li>
					<li>2.2. 查看项目信息列表</li>
					<li>3. 查看项目审计（按审计科目）</li>
					<li>3.1. 登录</li>
					<li>3.2. 选择【查看项目审计（按审计科目）】</li>
					<li>4. 查看项目审计（按项目信息）</li>
					<li>4.1. 登录</li>
					<li>4.2. 选择【查看项目审计（按项目信息）】</li>
					<li>1. 新增项目审计</li>
					<li>1.1.登录</li>
					<li>（1） 根据使用者的角色，登陆后看到如下界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image001.png">
						</div></li>
					<li>1.2. 选择项目信息</li>
					<li>(1) 点击【新增项目审计】图标后，进入项目查询界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image002.png">
						</div></li>
					<li><div class="ui-field-contain">
							<span style="white-space: pre-wrap;">(2) 输入查询条件“HiSTB”，会自动查询出匹配的项目列表：</span><span><img
								src="${pageContext.request.contextPath}/assets/image/image003.png"></span>
						</div></li>
					<li>(3) 选择需要的审计的项目：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image004.png">
						</div></li>
					<li>(4) 点击【查询】按钮，进入项目审计页面，如下图所示：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image005.png">
						</div></li>
					<li>1.3. 新增审计科目</li>
					<li>(1) 进入审计科目页面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image006.png">
						</div></li>
					<li>(2) 点击【请选择审计科目】下拉选单，弹出可选列表：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image007.png">
						</div></li>
					<li>(3) 选择【质量目标合理性】</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image008.png">
						</div></li>
					<li>(4) 输入审计内容</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image009.png">
						</div></li>
					<li>(5) 选择【是否通过】</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image010.png">
						</div></li>
					<li>(6) 点击【新增】按钮，弹出【新增成功】信息。</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image011.png">
						</div></li>
					<li>(7) 新增成功后，返回项目审计页面</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image012.png">
						</div></li>
					<li>(8) 页面校验一：</li>
					<li>新增时，【审计科目】不能为空，【评价内容】也不能为空，且不能超过100个字符！</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image013.png">
						</div></li>
					<li>(9) 页面校验二：</li>
					<li>如果用户已评价此项目的项目科目，则不能再次新增评价该审计科目，只能修改审计科目：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image014.png">
						</div></li>
					<li>1.4. 修改审计科目</li>
					<li>(1) 点击需要修改的审计科目（质量目标合理性）右边的向右图片：</li>
					<li>(2) 进入该审计科目的详情页面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image015.png">
						</div></li>
					<li>(3) 修改【审计内容】和【是否通过】信息：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image016.png">
						</div></li>
					<li>(4) 修改成功</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image017.png">
						</div></li>
					<li>用户点击“生成管道发运质检委托”按钮。点击【修改】按钮，弹出【修改成功】提示框，点击【确定】按钮后，回到项目评价信息页面</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image018.png">
						</div></li>
					<li>(5) 修改后返回</li>
					<li>1.5. 删除审计科目</li>
					<li>(1) 点击需要修改的审计科目（质量目标合理性）右边的向右图片：</li>
					<li>(2) 进入该审计科目的详情页面：</li>
					<li>(3) 点击【删除】按钮，弹出提示框：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image019.png">
						</div></li>
					<li>(4) 点击【确定】按钮，则该审计科目信息被删除，同时返回项目审计页面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image020.png">
						</div></li>
					<li>如果点击【取消】按钮，则不删除该审计科目。</li>
					<li>2. 查看我的审计</li>
					<li>2.1.登录</li>
					<li>（2） 根据使用者的角色，登陆后看到如下界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image001.png">
						</div></li>
					<li>2.2. 查看项目信息列表</li>
					<li>(1) 点击【查看我的审计】图标后，进入项目查询界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image021.png">
						</div></li>
					<li>(2) 点击某个项目，如“供应_DF_流通子产品2017年7月版本”右边详情旁的向右图标，进入该项目的审计页面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image022.png">
						</div></li>
					<li>在这个页面，可以进行审计科目的增删改查操作 。操作方法请参考【新增项目审计】章节。</li>
					<li>3. 查看项目审计（按审计科目）</li>
					<li>3.1.登录</li>
					<li>（3） 根据使用者的角色，登陆后看到如下界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image023.png">
						</div></li>
					<li>3.2. 选择【查看项目审计（按审计科目）】</li>
					<li>(1) 点击【查看项目审计（按审计科目）】图标后，进入审计科目多选查询界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image024.png">
						</div></li>
					<li>(2) 勾选【质量评价数据填报准确性】后，点击【查询】按钮：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image025.png">
						</div></li>
					<li>(3) 得到项目信息列表：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image026.png">
						</div></li>
					<li><div class="ui-field-contain">
							<span style="white-space: pre-wrap;">(4)
								点击某个项目，如“icaptain-v3.1.6-2017-06”右边详情旁的向右图标，进入该项目的审计页面，如下图所示：</span>
						</div>
						<div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image027.png">
						</div></li>
					<li>可通过微信自带的转发功能，将该项目审计信息发送给需要查看的人。</li>
					<li>4. 查看项目审计（按项目信息）</li>
					<li>4.1.登录</li>
					<li>（4） 根据使用者的角色，登陆后看到如下界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image023.png">
						</div></li>
					<li>4.2. 选择【查看项目审计（按项目信息）】</li>
					<li>(1) 点击【查看项目审计（按项目信息）】图标后，进项目信息查询界面：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image002.png">
						</div></li>
					<li>(2) 输入查询条件“HiSTB”，会自动查询出匹配的项目列表：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image003.png">
						</div></li>
					<li>(3) 选择需要的审计的项目：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image004.png">
						</div></li>
					<li>(4) 点击【查询】按钮，进入项目审计页面，如下图所示：</li>
					<li><div class="ui-field-contain">
							<img
								src="${pageContext.request.contextPath}/assets/image/image012.png">
						</div></li>
					<li>可通过微信自带的转发功能，将该项目审计信息发送给需要查看的人。</li>

				</ul>
			</div>



			<div class=WordSection1 style='layout-grid: 15.6pt'>


				<p class=MsoTocHeading>
					<span style='mso-ansi-language: ZH-CN'>目录</span><span
						style='mso-ansi-language: ZH-CN'><w:sdtPr></w:sdtPr></span>
				</p>
				<p class=MsoToc1 style='tab-stops: 51.0pt right dotted 414.8pt'>
					<!--[if supportFields]><span
 lang=EN-US><span style='mso-element:field-begin'></span><span
 style='mso-spacerun:yes'>&nbsp;</span>TOC \o &quot;1-3&quot; \h \z \u <span
 style='mso-element:field-separator'></span></span><![endif]-->
					<span lang=EN-US><span class=MsoHyperlink><span
							style='color: blue; mso-no-proof: yes'><a
								href="#_Toc491096049"><span style='font-family: 宋体'>1.</span><span
									style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
										style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</span></span><span lang=EN-US
									style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
										lang=EN-US>新增项目审计</span></span><span
									style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
										style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096049 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
									style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>3</span><span
									style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
										<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000340039000000</w:data>
 </xml><![endif]-->
								</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN; mso-no-proof: yes'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096050"><span
								style='font-family: 宋体'>1.1.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>登录</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096050 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>3</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350030000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096051"><span
								style='font-family: 宋体'>1.2.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>选择项目信息</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096051 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>3</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350031000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096052"><span
								style='font-family: 宋体; mso-fareast-language: ZH-CN'>1.3.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>新增审计科目</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096052 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>7</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350032000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096053"><span
								style='font-family: 宋体; mso-fareast-language: ZH-CN'>1.4.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>修改审计科目</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096053 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>16</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350033000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096054"><span
								style='font-family: 宋体; mso-fareast-language: ZH-CN'>1.5.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>删除审计科目</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096054 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>21</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350034000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc1 style='tab-stops: 51.0pt right dotted 414.8pt'>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue; mso-no-proof: yes'><a
							href="#_Toc491096055"><span style='font-family: 宋体'>2.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span></span><span lang=EN-US
								style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>查看我的审计</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096055 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>25</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350035000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN; mso-no-proof: yes'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096056"><span
								style='font-family: 宋体'>2.1.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>登录</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096056 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>25</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350036000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096057"><span
								style='font-family: 宋体'>2.2.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>查看项目信息列表</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096057 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>26</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350037000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc1 style='tab-stops: 51.0pt right dotted 414.8pt'>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue; mso-no-proof: yes'><a
							href="#_Toc491096058"><span
								style='font-family: 宋体; mso-fareast-language: ZH-CN'>3.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span></span><span lang=EN-US
								style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>查看项目审计（按审计科目）</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096058 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>28</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350038000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN; mso-no-proof: yes'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096059"><span
								style='font-family: 宋体'>3.1.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>登录</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096059 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>28</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000350039000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096060"><span
								style='font-family: 宋体; mso-fareast-language: ZH-CN'>3.2.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>选择【查看项目审计（按审计科目）】</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096060 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>29</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000360030000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc1 style='tab-stops: 51.0pt right dotted 414.8pt'>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue; mso-no-proof: yes'><a
							href="#_Toc491096061"><span
								style='font-family: 宋体; mso-fareast-language: ZH-CN'>4.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</span></span><span lang=EN-US
								style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>查看项目审计（按项目信息）</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096061 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>34</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000360031000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN; mso-no-proof: yes'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096062"><span
								style='font-family: 宋体'>4.1.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>登录</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096062 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>34</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000360032000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoToc2>
					<span class=MsoHyperlink><span lang=EN-US
						style='color: blue'><a href="#_Toc491096063"><span
								style='font-family: 宋体; mso-fareast-language: ZH-CN'>4.2.</span><span
								style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; color: windowtext; mso-fareast-language: ZH-CN; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1'>&nbsp;&nbsp;&nbsp; </span></span><span
								lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><span
									lang=EN-US>选择【查看项目审计（按项目信息）】</span></span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'><span
									style='mso-tab-count: 1 dotted'>.. </span></span> <!--[if supportFields]><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'><span style='mso-element:field-begin'></span></span><span
 style='color:windowtext;display:none;mso-hide:screen;text-decoration:none;
 text-underline:none'> PAGEREF _Toc491096063 \h </span><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-separator'></span></span><![endif]--> <span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>34</span><span
								style='color: windowtext; display: none; mso-hide: screen; text-decoration: none; text-underline: none'>
									<!--[if gte mso 9]><xml>
  <w:data>08D0C9EA79F9BACE118C8200AA004BA90B02000000080000000E0000005F0054006F0063003400390031003000390036003000360033000000</w:data>
 </xml><![endif]-->
							</span> <!--[if supportFields]><span style='color:windowtext;
 display:none;mso-hide:screen;text-decoration:none;text-underline:none'><span
 style='mso-element:field-end'></span></span><![endif]--></a></span></span><span
						lang=EN-US
						style='font-size: 10.5pt; mso-bidi-font-size: 11.0pt; font-family: 等线; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: "Times New Roman"; mso-bidi-theme-font: minor-bidi; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>
				<p class=MsoNormal>
					<!--[if supportFields]><b><span style='mso-ansi-language:
 ZH-CN'><span style='mso-element:field-end'></span></span></b><![endif]-->
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>
				</w:Sdt>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoToc2 style='margin-left: 0cm; text-indent: 0cm'>
					<span lang=EN-US
						style='mso-fareast-font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist21
					style='margin-left: 18.0pt; text-indent: -18.0pt; mso-list: l7 level1 lfo1; tab-stops: 21.0pt'>
					<a name="_Toc491096049"></a><a name="_Toc241050601"><span
						style='mso-bookmark: _Toc491096049'><![if !supportLists]><span
							lang=EN-US style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
								style='mso-list: Ignore'>1.<span
									style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
							style='font-family: 宋体; mso-fareast-language: ZH-CN'>新增项目审计</span></span></a><span
						style='mso-bookmark: _Toc491096049'></span><span
						style='mso-bookmark: _Toc241050601'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -144.0pt list 24.0pt'>
					<a name="_Toc491096050"></a><a name="_Toc241050602"><span
						style='mso-bookmark: _Toc491096050'><![if !supportLists]><span
							lang=EN-US style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
								style='mso-list: Ignore'>1.1.</span></span> <![endif]><span
							style='font-family: 宋体; mso-fareast-language: ZH-CN'>登录</span></span></a><span
						style='mso-bookmark: _Toc491096050'></span><span
						style='mso-bookmark: _Toc241050602'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 36.0pt; text-align: justify; text-justify: inter-ideograph; text-indent: -36.0pt; mso-list: l0 level1 lfo2; tab-stops: list 36.0pt'>
					<![if !supportLists]>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
						style='mso-list: Ignore'>（1）<span
							style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>根据使用者的角色，登陆后看到如下界面：<span
						lang=EN-US><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US style='mso-no-proof: yes'> <![if !vml]><img
						width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image001.png"
						v:shapes="图片_x0020_38"> <![endif]>
					</span><span lang=EN-US
						style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -141.6pt list 26.4pt'>
					<a name="_Toc491096051"></a><a name="_Toc241050603"><span
						style='mso-bookmark: _Toc491096051'><![if !supportLists]><span
							lang=EN-US style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
								style='mso-list: Ignore'>1.2.<span
									style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
							style='font-family: 宋体; mso-fareast-language: ZH-CN'>选择项目信息</span></span></a><span
						style='mso-bookmark: _Toc491096051'></span><span
						style='mso-bookmark: _Toc241050603'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l1 level1 lfo3; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(1)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>点击【新增项目审计】图标后，进入项目查询界面：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_39" o:spid="_x0000_i1059" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image002.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image002.png"
						v:shapes="图片_x0020_39"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l1 level1 lfo3; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(2)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>输入查询条件“<span
						lang=FR>HiSTB”</span>，会自动查询出匹配的项目列表：<span lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_40" o:spid="_x0000_i1058" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image003.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image003.png"
						v:shapes="图片_x0020_40"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l1 level1 lfo3; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(3)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>选择需要的审计的项目：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_41" o:spid="_x0000_i1057" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image004.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image004.png"
						v:shapes="图片_x0020_41"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l1 level1 lfo3; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(4)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>点击【查询】按钮，进入项目审计页面，如下图所示：</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_42" o:spid="_x0000_i1056" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image005.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image005.png"
						v:shapes="图片_x0020_42"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -141.6pt list 26.4pt'>
					<a name="_Toc491096052"></a><a name="_Toc241050604"><span
						style='mso-bookmark: _Toc491096052'><![if !supportLists]><span
							lang=EN-US
							style='font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
								style='mso-list: Ignore'>1.3.<span
									style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
							style='font-family: 宋体; mso-fareast-language: ZH-CN'>新增审计科目</span></span></a><span
						lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(1)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>进入审计科目页面：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_43" o:spid="_x0000_i1055" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image006.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image006.png"
						v:shapes="图片_x0020_43"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(2)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>点击【请选择审计科目】下拉选单，弹出可选列表：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><span
						style='mso-spacerun: yes'>&nbsp;</span></span><span lang=EN-US
						style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape id="图片_x0020_1"
 o:spid="_x0000_i1054" type="#_x0000_t75" style='width:396.75pt;height:453pt;
 visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image007.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=529 height=604
						src="${pageContext.request.contextPath}/assets/image/image007.png"
						v:shapes="图片_x0020_1"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal style='margin-left: 1.0cm'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(3)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>选择【质量目标合理性】<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_44" o:spid="_x0000_i1053" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image008.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image008.png"
						v:shapes="图片_x0020_44"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(4)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>输入审计内容<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_45" o:spid="_x0000_i1052" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image009.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image009.png"
						v:shapes="图片_x0020_45"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal style='margin-left: 1.0cm'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal align=center
					style='margin-left: 21.65pt; mso-para-margin-left: 2.04gd; text-align: center; text-indent: -1.25pt; mso-char-indent-count: -.12'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(5)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>选择【是否通过】</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_46" o:spid="_x0000_i1051" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image010.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image010.png"
						v:shapes="图片_x0020_46"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal style='margin-left: 1.0cm'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(6)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>点击【新增】按钮，弹出【新增成功】信息。</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_47" o:spid="_x0000_i1050" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image011.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image011.png"
						v:shapes="图片_x0020_47"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal style='margin-left: 1.0cm'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(7)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>新增成功后，返回项目审计页面</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_48" o:spid="_x0000_i1049" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image012.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image012.png"
						v:shapes="图片_x0020_48"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal style='margin-left: 1.0cm'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(8)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>页面校验<span
						class=GramE>一</span>：
					</span><span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><br>
					</span><span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>新增时，【审计科目】不能为空，【评价内容】也不能为空，且不能超过<span
						lang=EN-US>100</span>个字符！<span lang=EN-US><br> </span></span><span
						lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_55" o:spid="_x0000_i1048" type="#_x0000_t75" style='width:394.5pt;
 height:456pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image013.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=608
						src="${pageContext.request.contextPath}/assets/image/image013.png"
						v:shapes="图片_x0020_55"> <![endif]>
					</span><span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l4 level1 lfo4; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(9)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>页面校验二：<span
						lang=EN-US><br> </span>如果用户<span class=GramE>已评价此</span>项目的项目科目，则不能再次新增评价该审计科目，只能修改审计科目：
					</span><span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape id="图片_x0020_54"
 o:spid="_x0000_i1047" type="#_x0000_t75" style='width:395.25pt;height:455.25pt;
 visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image014.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=527 height=607
						src="${pageContext.request.contextPath}/assets/image/image014.png"
						v:shapes="图片_x0020_54"> <![endif]>
					</span><span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -141.6pt list 26.4pt'>
					<a name="_Toc491096053"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
							style='mso-list: Ignore'>1.4.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>修改审计科目</span></a><span
						lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l6 level1 lfo5; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(1)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>点击需要修改的审计科目（质量目标合理性）右边的向右图片：</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_49" o:spid="_x0000_i1046" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image012.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image012.png"
						v:shapes="图片_x0020_49"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l6 level1 lfo5; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(2)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>进入该审计科目的详情页面：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_50" o:spid="_x0000_i1045" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image015.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image015.png"
						v:shapes="图片_x0020_50"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l6 level1 lfo5; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(3)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>修改【审计内容】和【是否通过】信息：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_51" o:spid="_x0000_i1044" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image016.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image016.png"
						v:shapes="图片_x0020_51"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l6 level1 lfo5; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(4)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>修改成功</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><span
						style='mso-spacerun: yes'>&nbsp;</span></span><span lang=EN-US
						style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape id="图片_x0020_52"
 o:spid="_x0000_i1043" type="#_x0000_t75" style='width:394.5pt;height:453.75pt;
 visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image017.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image017.png"
						v:shapes="图片_x0020_52"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>用户点击“生成管道发运质检委托”按钮。点击【修改】按钮，弹出【修改成功】提示框，点击【确定】按钮后，回到项目评价信息页面<span
						lang=EN-US><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l6 level1 lfo5; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(5)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>修改后返回<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_53" o:spid="_x0000_i1042" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image018.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image018.png"
						v:shapes="图片_x0020_53"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -141.6pt list 26.4pt'>
					<a name="_Toc491096054"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
							style='mso-list: Ignore'>1.5.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>删除审计科目</span></a><span
						lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l8 level1 lfo7; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(1)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>点击需要修改的审计科目（质量目标合理性）右边的向右图片：</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_58" o:spid="_x0000_i1041" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image012.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image012.png"
						v:shapes="图片_x0020_58"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l8 level1 lfo7; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(2)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>进入该审计科目的详情页面：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_59" o:spid="_x0000_i1040" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image015.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image015.png"
						v:shapes="图片_x0020_59"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l8 level1 lfo7; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(3)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>点击【删除】按钮，弹出提示框：</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_60" o:spid="_x0000_i1039" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image019.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image019.png"
						v:shapes="图片_x0020_60"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l8 level1 lfo7; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(4)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>点击【确定】按钮，则该审计科目信息被删除，同时返回项目审计页面：</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_61" o:spid="_x0000_i1038" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image020.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image020.png"
						v:shapes="图片_x0020_61"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><br>
					</span><span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>如果点击【取消】按钮，则不删除该审计科目。<span
						lang=EN-US><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist21
					style='margin-left: 18.0pt; text-indent: -18.0pt; mso-list: l7 level1 lfo1; tab-stops: 21.0pt'>
					<a name="_Toc491096055"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
							style='mso-list: Ignore'>2.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>查看我的审计</span></a><span
						style='mso-bookmark: _Toc491096055'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -144.0pt list 24.0pt'>
					<a name="_Toc491096056"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
							style='mso-list: Ignore'>2.1.</span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>登录</span></a><span
						style='mso-bookmark: _Toc491096056'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 36.0pt; text-align: justify; text-justify: inter-ideograph; text-indent: -36.0pt; mso-list: l0 level1 lfo2; tab-stops: list 36.0pt'>
					<![if !supportLists]>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
						style='mso-list: Ignore'>（2）<span
							style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>根据使用者的角色，登陆后看到如下界面：<span
						lang=EN-US><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape id="图片_x0020_62"
 o:spid="_x0000_i1037" type="#_x0000_t75" style='width:394.5pt;height:453.75pt;
 visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image001.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image001.png"
						v:shapes="图片_x0020_62"> <![endif]>
					</span><span lang=EN-US
						style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -141.6pt list 26.4pt'>
					<a name="_Toc491096057"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
							style='mso-list: Ignore'>2.2.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>查看项目信息列表</span></a><span
						style='mso-bookmark: _Toc491096057'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l5 level1 lfo8; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(1)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>点击【查看我的审计】图标后，进入项目查询界面：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_131" o:spid="_x0000_i1036" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image021.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image021.png"
						v:shapes="图片_x0020_131"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l5 level1 lfo8; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(2)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>点击某个项目，如“供应<span
						lang=FR>_DF_</span>流通子产品<span lang=FR>2017</span>年<span lang=FR>7</span>月版本<span
						lang=FR>”</span>右边详情旁的向右图标，进入该项目的审计页面：<span lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_132" o:spid="_x0000_i1035" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image022.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image022.png"
						v:shapes="图片_x0020_132"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>在这个页面，可以进行审计科目的增删<span
						class=GramE>改查操作</span> 。操作方法请参考【新增项目审计】章节。<span lang=EN-US><o:p></o:p></span></span>
				</p>

				<p class=Numberedlist21
					style='margin-left: 18.0pt; text-indent: -18.0pt; mso-list: l7 level1 lfo1; tab-stops: 21.0pt'>
					<a name="_Toc491096058"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
							style='mso-list: Ignore'>3.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>查看项目审计（按审计科目）</span></a><span
						lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -144.0pt list 24.0pt'>
					<a name="_Toc491096059"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
							style='mso-list: Ignore'>3.1.</span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>登录</span></a><span
						style='mso-bookmark: _Toc491096059'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 36.0pt; text-align: justify; text-justify: inter-ideograph; text-indent: -36.0pt; mso-list: l0 level1 lfo2; tab-stops: list 36.0pt'>
					<![if !supportLists]>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
						style='mso-list: Ignore'>（3）<span
							style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>根据使用者的角色，登陆后看到如下界面：<span
						lang=EN-US><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape id="图片_x0020_133"
 o:spid="_x0000_i1034" type="#_x0000_t75" style='width:394.5pt;height:453.75pt;
 visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image023.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image023.png"
						v:shapes="图片_x0020_133"> <![endif]>
					</span><span lang=EN-US
						style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -141.6pt list 26.4pt'>
					<a name="_Toc491096060"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
							style='mso-list: Ignore'>3.2.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>选择【查看项目审计（按审计科目）】</span></a><span
						lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l2 level1 lfo9; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(1)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>点击</span><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>【查看项目审计（按审计科目）】</span><span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>图标后，进入审计科目多选查询界面：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_134" o:spid="_x0000_i1033" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image024.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image024.png"
						v:shapes="图片_x0020_134"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l2 level1 lfo9; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(2)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span class=GramE><span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>勾选【质量评价数据填报准确性】</span></span><span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>后，点击【查询】按钮：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_136" o:spid="_x0000_i1032" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image025.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image025.png"
						v:shapes="图片_x0020_136"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l2 level1 lfo9; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(3)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>得到项目信息列表：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_137" o:spid="_x0000_i1031" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image026.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image026.png"
						v:shapes="图片_x0020_137"> <![endif]> <o:p></o:p>
					</span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l2 level1 lfo9; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(4)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>点击某个项目，如“<span
						lang=FR>icaptain-v3.1.6-2017-06”</span>右边详情旁的向右图标，进入该项目的审计页面，
					</span><span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>如下图所示：</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_138" o:spid="_x0000_i1030" type="#_x0000_t75" style='width:310.5pt;
 height:698.25pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image027.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=414 height=931
						src="${pageContext.request.contextPath}/assets/image/image028.jpg"
						v:shapes="图片_x0020_138"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>可通过<span
						class=GramE>微信自</span>带的转发功能，将该项目审计信息发送给需要查看的人。
					</span><span lang=EN-US
						style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist21
					style='margin-left: 18.0pt; text-indent: -18.0pt; mso-list: l7 level1 lfo1; tab-stops: 21.0pt'>
					<a name="_Toc491096061"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
							style='mso-list: Ignore'>4.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>查看项目审计（按项目信息）</span></a><span
						lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -144.0pt list 24.0pt'>
					<a name="_Toc491096062"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体'><span
							style='mso-list: Ignore'>4.1.</span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>登录</span></a><span
						style='mso-bookmark: _Toc491096062'></span><span lang=EN-US
						style='font-family: 宋体'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 36.0pt; text-align: justify; text-justify: inter-ideograph; text-indent: -36.0pt; mso-list: l0 level1 lfo2; tab-stops: list 36.0pt'>
					<![if !supportLists]>
					<span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
						style='mso-list: Ignore'>（4）<span
							style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>根据使用者的角色，登陆后看到如下界面：<span
						lang=EN-US><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape id="图片_x0020_139"
 o:spid="_x0000_i1029" type="#_x0000_t75" style='width:394.5pt;height:453.75pt;
 visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image023.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image023.png"
						v:shapes="图片_x0020_139"> <![endif]>
					</span><span lang=EN-US
						style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=Numberedlist22
					style='margin-left: 0cm; text-indent: 0cm; mso-list: l7 level2 lfo1; tab-stops: -141.6pt list 26.4pt'>
					<a name="_Toc491096063"><![if !supportLists]><span lang=EN-US
						style='font-family: 宋体; mso-bidi-font-family: 宋体; mso-fareast-language: ZH-CN'><span
							style='mso-list: Ignore'>4.2.<span
								style='font: 7.0pt "Times New Roman"'> </span></span></span> <![endif]><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>选择【查看项目审计（按项目信息）】</span></a><span
						lang=EN-US style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l9 level1 lfo10; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(1)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>点击</span><span
						style='font-family: 宋体; mso-fareast-language: ZH-CN'>【查看项目审计（按项目信息）】</span><span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>图标后，<span
						class=GramE>进项目</span>信息查询界面：<span lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_144" o:spid="_x0000_i1028" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image002.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image002.png"
						v:shapes="图片_x0020_144"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l9 level1 lfo10; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(2)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>输入查询条件“<span
						lang=FR>HiSTB”</span>，会自动查询出匹配的项目列表：<span lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_145" o:spid="_x0000_i1027" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image003.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image003.png"
						v:shapes="图片_x0020_145"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l9 level1 lfo10; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(3)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'>选择需要的审计的项目：<span
						lang=FR><o:p></o:p></span></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape
 id="图片_x0020_146" o:spid="_x0000_i1026" type="#_x0000_t75" style='width:394.5pt;
 height:453.75pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image004.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image004.png"
						v:shapes="图片_x0020_146"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='margin-left: 21.25pt; text-indent: -21.25pt; mso-pagination: none; mso-outline-level: 4; mso-list: l9 level1 lfo10; tab-stops: list 21.25pt; layout-grid-mode: char'>
					<![if !supportLists]>
					<span lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: 宋体; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><span
						style='mso-list: Ignore'>(4)<span
							style='font: 7.0pt "Times New Roman"'>&nbsp; </span></span></span>
					<![endif]>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>点击【查询】按钮，进入项目审计页面，如下图所示：</span><span
						lang=FR
						style='font-size: 10.5pt; font-family: 宋体; mso-bidi-font-family: Arial; mso-ansi-language: FR; mso-fareast-language: ZH-CN; mso-bidi-font-style: italic'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span lang=EN-US style='mso-no-proof: yes'> <!--[if gte vml 1]><v:shape id="图片_x0020_147"
 o:spid="_x0000_i1025" type="#_x0000_t75" style='width:394.5pt;height:453.75pt;
 visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="${pageContext.request.contextPath}/assets/image/image029.png" o:title=""/>
</v:shape><![endif]--> <![if !vml]><img width=526 height=605
						src="${pageContext.request.contextPath}/assets/image/image029.png"
						v:shapes="图片_x0020_147"> <![endif]>
					</span><span lang=EN-US
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal
					style='text-align: justify; text-justify: inter-ideograph'>
					<span
						style='font-size: 10.5pt; font-family: 宋体; mso-fareast-language: ZH-CN'>可通过<span
						class=GramE>微信自</span>带的转发功能，将该项目审计信息发送给需要查看的人。
					</span><span lang=EN-US
						style='font-family: 宋体; mso-fareast-language: ZH-CN'><o:p></o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

				<p class=MsoNormal>
					<span lang=EN-US style='mso-fareast-language: ZH-CN'><o:p>&nbsp;</o:p></span>
				</p>

			</div>


		</div>
	</div>
</body>
</html>