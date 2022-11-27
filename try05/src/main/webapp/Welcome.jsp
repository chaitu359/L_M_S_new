<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Digital Library</title>
</head>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: montserrat;
	background: black;
	height: 100vh;
	overflow: hidden;
}

h1 {
	font-size: 40px;
	color: #f15422;
	text-align: center;
	margin: 40px 0;
}
h2 {
	font-size: 40px;
	color: #f15422;
	text-align: center;
	margin: 40px 0;
}

.bc {
	position: relative;
	top: 8%;}

.B_S {
	position: relative;
	top: 9%;
}
.sc {
	position: relative;
	top: 11%;
}
.nn {
	position: relative;
	top: 14%;
}
.cc {
	position: relative;
	top: 5%;
	left:70%;
}

.bc button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #f15422;
	border-radius: 5px;
	cursor: pointer;
}

.cc button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 5%;
	border: 0;
	background-color: #f15422;
	border-radius: 5px;
	cursor: pointer;
}

.B_S button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #f15422;
	border-radius: 5px;
	cursor: pointer;
}

.sc button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #f15422;
	border-radius: 5px;
	cursor: pointer;
}
.nn button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #f15422;
	border-radius: 5px;
	cursor: pointer;
}
.cc input {
	font-size: 16px;
	padding: 5px 2px;
	width: 15%;
	border: 0;
	border-radius: 5px;
	outline: none;
}.bc button:hover{background:#ffc107;
}.cc button:hover{background:#ffc107;
}.B_S button:hover{background:#ffc107;
}.sc button:hover{background:#ffc107;
}.nn button:hover{background:#ffc107;
}
</style>
<body>
	<h1>Login Successful</h1>
	<h2>Welcome  ${username}</h2>
	<div class="bc">
		<form action="Display" method="post">
			<button>
				<font>Available Books</font>
			</button>
		</form>
	</div>
	<div class="cc">
		<form action="Search" method="post" >
			<div class="search">
				<input type="text" class="search-f" name="txtBook">
				<button class="s_btn" type="submit">Search</button>
			</div>
		</form>
	</div>
	<div class="B_S">
		<form action="BookSelection.jsp" method="post">
			<button>
				<font>Select Book</font>
			</button>
		</form>
	</div>
	<div class="sc">
		<form action="ReturnBook.jsp" method="post">
			<button>
				<font>Return Book</font>
			</button>
		</form>
	</div>
	<div class="nn">
	<a href=Login.jsp><button>Log out</button></div>
</body>
</html>