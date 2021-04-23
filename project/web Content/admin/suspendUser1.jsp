<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'suspendUser.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function popUpWithServerData(page, pagetitle,height,width) {
		var $dialog = $("<div></div>").html("<iframe style=\"border: 0px; \" src=\"" + page + "\" width=\"100%\" height=\"100%\"></iframe>")
		.dialog({autoOpen: false,
	            height: height,
	            width: width,
	            title:pagetitle,
	            modal: true,
	            });
		$dialog.dialog("open");
}
function changePassword()
{
	var id=$("#userEmpId1").val();
		if(!isExist(id)){
	 	return false;
	 } 
	parent.popUpWithServerData("<%=request.getContextPath()%>/changeUserPassByAdmin.action?uEId="+$("#uEId").val(),"Confirm Password",350,450);

}

	
	</script>
	<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jquery-1.8.2.js" /></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jquery-ui.js" /></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jmesa.js" /></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jquery.jmesa.js" /></script>
	<script type="text/javascript">

	function closeDialog()
	{
		window.parent.location.href='allusers';
	}


	</script>
  </head>
  
  <body>
  <s:set name="alreadyInactive" value="alreadyInactive"/>
  <s:if test="%{#alreadyInactive=='yes'}">
  	The selected user is already suspended.
  	<input type="button" value="OK" onclick="closeDialog()"/>
  </s:if>
  <s:else>
  	<h2>Hey Do you Really want to change the password of this Agent ?</h2>
 <br>
     
 <s:form>
    	<s:hidden name="uEId"></s:hidden>
    	<s:submit action="changeUserPassByAdmin" value ="CONFIRM- CHANGE PASSWORD"></s:submit>
    	<%-- <s:submit action="changeUserPassByAdminInput"></s:submit> --%>
    	<!-- <input type="button" onclick="changePassword()" value="yes" /> -->
    	<br>
    	<input type="button" onclick="closeDialog()" value="CANCEL" />
   		<%-- <s:submit action="changeUserPassByAdminInput" value="Yes"></s:submit> --%>
   		
   		<%-- <s:submit action="ConfirmchangeUserPassByAdmin" value="no"></s:submit> --%>
   		
   	</s:form>
  </s:else>
    
  </body>
</html>
