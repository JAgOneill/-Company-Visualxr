<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'userPassByAdmin.jsp' starting page</title>
<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jquery-1.8.2.js" /></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jquery-ui.js" /></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jmesa.js" /></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jquery.jmesa.js" /></script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	 
    
    
   
    
  
    
    
	if('<s:property value='navigationFlag'/>'=='success'){	
		window.parent.location.href='allusers?actionMsg='+'<s:property value='actionMsg'/>';
	}
	</script>

  </head>
  
  <body><h2><s:text name="pageTitles"></s:text></h2>
<s:if test="hasActionMessages()">
				 <div class="infoHolder">
					<s:actionmessage />
				</div>
		</s:if>
		<s:if test="hasActionErrors()">
				 <div class="errorHolder, dynErrorHolder">
					<s:actionerror />
				</div>
		</s:if>
   	<s:form>
  		<s:password label="New Password" name="newPassword"></s:password>
   		<s:password label="Confirm Password" name="confirmNewPassword"></s:password>
   		<s:hidden name="uEId"></s:hidden>
   		
   		<s:submit action="changeUserPassByAdminInput"></s:submit>
   	</s:form>
  </body>
</html>
