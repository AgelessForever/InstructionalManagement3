<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib  uri="http://displaytag.sf.net" prefix="display" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<%@ include file="/view/public/common.jspf" %>
</head>
	<body>		
		<div style="padding:0px; margin:0px;">
 			<ul class="breadcrumb" style="  margin:0px; " >
    			<li><a href="#">学生评价表管理</a></li>
        		<li>学生评价表信息</li>
    		</ul>
		</div>
		
		<script type="text/javascript">
		function query(condition){
			$("#keyword").attr("name",condition.value);
		}
		</script>


	<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
		<form  action="${pageContext.request.contextPath}/evaluation/s_evaluation/list.action" method="post" class="form-horizontal">
			<div class="col-sm-1" >条件:</div>
    		<div class="col-sm-1">
    			<!-- <select class="form-control  input-sm" onchange="query(this)" name="condition">
        			<option value="staffName">姓名</option>
        		</select> -->
        		
        		
   			</div>
  			<div class="col-sm-2">被评价职工姓名</div>
    		<div class="col-sm-3">
    		
    			<input type="text"   name="staffName"  class="form-control input-sm"/>
    		</div>
    			<input type="submit"   class="btn btn-danger"   value="查询"/>
    			
    			<a class="btn btn-warning" href="${pageContext.request.contextPath }/evaluation/s_evaluation/loadadd.action">添加</a>
		
 		</form>
	</div>
		
	<div class="row" style="padding:15px; padding-top:0px; " align="right">
		<table class="table  table-condensed table-striped">
    	</table>
    		<display:table class="table table-condensed table-striped" name="list" pagesize="10" requestURI="${pageContext.request.contextPath }/evaluation/s_evaluation/list.action">
    		<display:column property="studentEvaluationId" title="学生评价表编号"></display:column>
    		<display:column property="studentName" title="学生姓名(评价人)" href="${pageContext.request.contextPath }/system/staffinfo/show.action" paramId="staffId" paramProperty="staffId"></display:column>
    		<display:column property="staffName" title="员工姓名(被评人)"></display:column> 		
    		<display:column property="courseName" title="课程名称"></display:column>
    		<display:column href="${pageContext.request.contextPath }/evaluation/s_evaluation/infor.action" paramId="studentEvaluationId" paramProperty="studentEvaluationId" value="详细信息" title="详细信息"></display:column>
    		<display:column href="${pageContext.request.contextPath }/evaluation/s_evaluation/load.action" paramId="studentEvaluationId" paramProperty="studentEvaluationId" value="修改" title="修改"></display:column>
    		<display:column href="${pageContext.request.contextPath }/evaluation/s_evaluation/delete.action" paramId="studentEvaluationId" paramProperty="studentEvaluationId" value="删除" title="删除"></display:column>
    	
    </display:table>
    
    
</div>		
	</body>
	
</html>
