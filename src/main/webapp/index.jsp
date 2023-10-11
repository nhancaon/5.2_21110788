<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:import url="/header.html"/>

	<img src="assets/murachImage.jpg" width="100" height="100">
	<h1>Survey</h1>
	<p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
	<p><i>${message}</i></p>

	<h2>Your information:</h2>
	<form action="test" method="post">
		<div class="text-form">
			<input type="hidden" name="action" value="add">
			<label class="pad_top">Email:</label>
			<input type="email" name="email" value="${user.email}"><br>
			<label class="pad_top">First Name:</label>
			<input type="text" name="firstName" value="${user.firstName}"><br>
			<label class="pad_top">Last Name:</label>
			<input type="text" name="lastName" value="${user.lastName}"><br>
			<label class="pad_top">Date of birth:</label>
			<input type="text" name="dateofbirth" value="${user.dateOfBirth}"><br>
		</div>

		<h2>How did you hear about us?</h2>
		<div class="radio-form">
			<input type="radio" name="radio" value="Search engine">Search engine

			<input type="radio" name="radio" value="Word of mouth">Word of mouth

			<input type="radio" name="radio" value="Social Media">Social Media

			<input type="radio" name="radio" value="Other">Other
		</div>

		<h2>Would you like to receive announcements<br> about new CDs and special offers</h2>
		<div class="checkbox-form">
			<input type="checkbox" name="checkbox" value="YES, I'd like that.">YES, I'd like that.<br>

			<input type="checkbox" name="checkbox" value="YES, please send me email announcements.">YES, please send me
			email announcements.<br>
		</div>

		<p>Please contact me by:
			<select name="typeofContact">
				<option name="contact" value="Email or postal mail" selected>Email or postal mail</option>
				<option name="contact" value="Email">Email</option>
				<option name="contact" value="Phone number">Phone number</option>
			</select>
		</p>
		<input type="submit" value="Submit" id="submit">
	</form>
<c:import url="/footer.jsp"/>