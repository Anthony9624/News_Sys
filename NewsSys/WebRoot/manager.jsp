﻿
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="javascript/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	//setMenuHeight
	$('.menu').height($(window).height()-51-27-26);
	$('.sidebar').height($(window).height()-51-27-26);
	$('.page').height($(window).height()-51-27-26);
	$('.page iframe').width($(window).width()-15-168);
	
	//menu on and off
	$('.btn').click(function(){
		$('.menu').toggle();
		
		if($(".menu").is(":hidden")){
			$('.page iframe').width($(window).width()-15+5);
			}else{
			$('.page iframe').width($(window).width()-15-168);
				}
		});
		
	//
	$('.subMenu a[href="#"]').click(function(){
		$(this).next('ul').toggle();
		return false;
		});
})
</script>
<style>
	#top {
	width:100%;
	backcolor: #red;
	}
	#top ul {
	    list-style-type: none;
	    margin: 0;
	    padding: 0;
	    overflow: hidden;
	    background-color: black;
	}
	
	#top li {
	    float: left;
	}
	
	#top li a {
	    display: block;
	    color: white;
	    text-align: center;
	    padding: 14px 16px;
	    text-decoration: none;
	}
	
	#top li a:hover {
	    background-color: #111;
	}
	#tab td{
	font-size: 16px;
		border:solid;
		border-color: #000000;
	}
</style>
<body background="bg.jpg">

	<div id="wrap">
	<div id="header">
    <div class="logo fleft"></div>
    <div class="nav fleft">
    	<ul>
    	<div class="nav-left fleft"></div>
      <li class="first">管理员页面</li>
	  <li><a class="active" href="main.jsp">管理员退出</a></li>
	  <li><a href="servlet/write.jsp">发布新闻</a></li>
	  <li><a href="servlet/NewsManage.jsp">新闻管理</a></li>
	  <div class="nav-right fleft"></div>
	</ul>
    </div>
    <a class="logout fright" href="login.html"> </a>
    <div class="clear"></div>
    <div class="subnav">
    	<div class="subnavLeft fleft"></div>
        <div class="fleft"></div>
        <div class="subnavRight fright"></div>
    </div>
    </div><!--#header -->
    <div id="content">
    <div class="space"></div>
    <div class="menu fleft">
    	<ul>
        	<li class="subMenuTitle">新闻中心</li>
            <li class="subMenu"><a href="#">国内</a></li>
            <li class="subMenu"><a href="#" target="right">国际</a></li>
            <li class="subMenu"><a href="#" target="right">军事</a></li>
            <li class="subMenu"><a href="#" target="right">财经</a></li>
            <li class="subMenu"><a href="#" target="right">娱乐</a></li>
            <li class="subMenu"><a href="#" target="right">体育</a></li>
            <li class="subMenu"><a href="#" target="right">游戏</a></li>
        </ul>
    </div>
    <div class="sidebar fleft"><div class="btn"></div></div>
    <div class="page">




    </div>
    </div><!--#content -->
    <div class="clear"></div>
    <div id="footer"></div><!--#footer -->
</div><!--#wrap -->
<div style="text-align:center;">

</div>


</body>
</html>
