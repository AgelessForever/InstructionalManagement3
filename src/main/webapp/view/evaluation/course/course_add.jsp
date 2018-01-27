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
    	<li><a href="#">课程管理</a></li>
        <li>添加课程</li>
 </ul>
</div>
	
	<form action="${pageContext.request.contextPath }/evaluation/course/add.action" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
    
    
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程编号</label>
                <div class="col-sm-9">
                	<input type="text" name="courseId" readonly="readonly" class="form-control input-sm" placeholder="请输入编号"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">课程名称</label>
                <div class="col-sm-9">
                	<input type="text" name="courseName" class="form-control input-sm" placeholder="请输入课程名称"/>
                </div>
            </div>
        </div>

    </div>
    
    
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">课程时长</label>
                <div class="col-sm-9">
                	<input type="text" name="courseHour" class="form-control input-sm" placeholder="请输入时长"/>
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">课程难度</label>
                <div class="col-sm-9">
                	  <select name="courseDifficulty" class="form-control input-sm"  >
                     	<option>难</option>
                        <option>中等</option>
                        <option>简单</option>
                     </select>
                </div>
            </div>
        </div>

    </div>
    

    
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">描述</h5>
    	
    	
    	
    	<div class="row">
    		<div class="col-sm-5">
        		<div class="form-group">
        			<label class="col-sm-3 control-label">课程描述</label>
               	    <div class="col-sm-9">
                		<textarea class="form-control" name="courseDesc"></textarea>
                	</div>
           		</div>	
       		</div>
       		
		 </div>
		 

    
    <div class="row">
    	<div class="col-sm-5"></div>
    	<div class="col-sm-1">
    		<input id="cy" type="submit" class="btn btn-success" value="保存"/>
    	</div>
    	<div class="col-sm-3">
    		 <a href="${pageContext.request.contextPath }/evaluation/course/list.action">返回上一级</a>
    	</div>
    	<div class="col-sm-3"></div>
    	
    </div>
	
	
   </form>
</body>
</html>
