<%@ page isELIgnored="false" isErrorPage="true"%>

<h1 style="color: red; text-align: center">404 Error Page (404.jsp)
	(Client Side Error page)</h1>

<h2 style="color: red; text-align: center">The Error Details are</h2>

<table border="1" bgcolor="cyan" align="center">
	<tr>
		<td>Status</td>
		<td>${status}</td>
	</tr>

	<tr>
		<td>Path</td>
		<td>${path}</td>
	</tr>
	<tr>
		<td>Message</td>
		<td>${message}</td>
	</tr>
	<tr>
		<td>exception</td>
		<td>${exception}</td>
	</tr>
	<tr>
		<td>timestamp</td>
		<td>${timestamp}</td>
	</tr>

	<tr>
		<td>error</td>
		<td>${error}</td>
	</tr>







</table>
