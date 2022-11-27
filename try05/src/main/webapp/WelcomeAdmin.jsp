<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Portal</title>
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
	color: #68dd49;
	text-align: center;
	margin: 40px 0;
}

.bc {
	position: relative;
	top: 8%;
}

.aa {
	position: relative;
	top: 10%;
}

.bb {
	position: relative;
	top: 12%;
}

.cc {
	position: relative;
	top: 14%;
}
.dc {
	position: relative;
	top: 16%;
}
.logout {
	position: relative;
	top: 18%;
}

.bc button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #68dd49;
	border-radius: 5px;
	cursor: pointer;
}

.aa button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #68dd49;
	border-radius: 5px;
	cursor: pointer;
}

.bb button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #68dd49;
	border-radius: 5px;
	cursor: pointer;
}

.cc button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #68dd49;
	border-radius: 5px;
	cursor: pointer;
}
.dc button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #68dd49;
	border-radius: 5px;
	cursor: pointer;
}

.logout button {
	font-size: 18px;
	font-weight: bold;
	margin: 0 0;
	padding: 2.5px 2.5px;
	width: 15%;
	border: 0;
	background-color: #68dd49;
	border-radius: 5px;
	cursor: pointer;
}.bc button:hover{background:#ffc107;
}.aa button:hover{background:#ffc107;
}.bb button:hover{background:#ffc107;
}.cc button:hover{background:#ffc107;
}.dc button:hover{background:#ffc107;}
.logout button:hover{background:#ffc107;}
</style>
<body>
	<h1>welcome ${username}!!</h1>
	<div class="bc">
		<form action="Display" method="post">
			<button>
				<font>View Books</font>
			</button>
		</form>
	</div>
	<div class="aa">
		<form action="DisplayUser" method="post">
			<button>
				<font>View Users</font>
			</button>
		</form>
	</div>
	<div class="bb">
		<form action="IssuedBooks" method="post">
			<button>
				<font>View books issued</font>
			</button>
		</form>
	</div>
	<div class="cc">
		<form action="DisplayReturnBook" method="post">
			<button>Returned Books</button>
		</form>
	</div>
	<div class="dc">
		<form action="AddBook.jsp" method="post">
			<button>
				<font>Add Book</font>
			</button>
		</form>
	</div>
	<div class="logout">
		<a href=Login.jsp><button>Log out</button>
	</div>
</body>
</html>