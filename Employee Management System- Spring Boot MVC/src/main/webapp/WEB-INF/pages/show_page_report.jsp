<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1 style="color: red; text-align: center">Report Page By
	Pagination</h1>

<c:choose>
	<c:when test="${!empty  pageData}">
		<h2 style="color: green; text-align: center">Employees
			Information of ${pageData.getNumber()+1} /
			${pageData.getTotalPages()}</h2>
		<table align="center" bgcolor="cyan" border="1">
			<tr>
				<th>empno</th>
				<th>empname</th>
				<th>empaddrs</th>
				<th>desg</th>
				<th>salary</th>
				<th>grossSalary</th>
				<th>netSalary</th>
				<th>operations</th>
			</tr>
			<c:forEach var="emp" items="${pageData.getContent()}">
				<tr>
					<td>${emp.empno}</td>
					<td>${emp.ename}</td>
					<td>${emp.eaddrs}</td>
					<td>${emp.desg}</td>
					<td>${emp.salary}</td>s
					<td>${emp.grossSalary}</td>
					<td>${emp.netSalary}</td>
					<td><a href="edit?no=${emp.empno}"> <img
							src="images/edit.jpg" width="30px" height="20px"></a>
						&nbsp;&nbsp;&nbsp; <a href="delete?no=${emp.empno}"
						onclick="return confirm('Do you want to Delete?')"> <img
							src="images/delete.jpg" width="30px" height="20px"></a></td>
				</tr>

			</c:forEach>
		</table>
		<center>
			<c:if test="${!pageData.isFirst() }">
				<a href="page_report?page=0">first</a> &nbsp;
                         </c:if>
			<c:if test="${pageData.hasNext() }">
				<a href="page_report?page=${pageData.getNumber()+1}">next</a> &nbsp;
                         </c:if>

			<c:forEach var="i" begin="1" end="${pageData.getTotalPages()}"
				step="1">
				<c:if test="${pageData.getNumber()+1 != i}">
					<a href="page_report?page=${i-1}">[${i}]</a>  &nbsp; &nbsp;
                                 </c:if>
			</c:forEach>
			<c:if test="${pageData.hasPrevious() }">
				<a href="page_report?page=${pageData.getNumber()-1}">previous</a> &nbsp;
                         </c:if>
			<c:if test="${!pageData.isLast()}">
				<a href="page_report?page=${pageData.getTotalPages()-1}">Last</a> &nbsp;
                         </c:if>
		</center>
	</c:when>
	<c:otherwise>
		<h1 style="color: red; text-align: Center">Records not found</h1>
	</c:otherwise>

</c:choose>
<br>
<br>
<h1 style="color: red; text-align: center">${resultMsg}</h1>
<br>
<br>
<h1 style="text-align: center">
	<a href="add"> Add Employee <img src="images/add.jpg" width="70px"
		height="90px">
</h1>

<br>
<br>

<h1 style="text-align: center">
	<a href="./">home <img src="images/home.jpg" width="70px"
		height="90px">
</h1>



