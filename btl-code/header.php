<?php 
date_default_timezone_set('Asia/Ho_Chi_Minh');
session_start();
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Quản lý đoàn viên</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<script src="css/js.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('ul li:has(ul)').eq(0).mouseenter(function(){
				$('ul li ul:has(li)').eq(0).slideDown(600);
			});
			$('ul li:has(ul)').eq(0).mouseleave(function(){
				$('ul li ul:has(li)').eq(0).slideUp(600);
			});

			$('ul li:has(ul)').eq(1).mouseenter(function(){
				$('ul li ul:has(li)').eq(1).slideDown(600);
			});
			$('ul li:has(ul)').eq(1).mouseleave(function(){
				$('ul li ul:has(li)').eq(1).slideUp(600);
			});
			
		});
	</script>
	
</head>
<body>
	
	<div class="container">
			<div class="header">
				<img src="img/logo1.png" alt=""/>
				<div class="top-foot">
				<h1>Đoàn Thanh Niên Cộng Sản Hồ Chí Minh Trường Đại Học Công Nghệ Đông Á</h1>
				<h2>Xin Chào <span><?php if(isset($_SESSION['name'])){ 
					echo $_SESSION['name'];
					}else echo "No Name";?></span>
					| Time: <?php echo date(' H:i:s') ?>| Date: <?php echo date("d/m/Y") ?> </h2>
				</div>
			</div>