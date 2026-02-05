package com.nt.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.nt.vo.EmployeeVO;

public interface IEmployeeMgmtService {
	public  List<EmployeeVO>   showAllEmployees();
	public   String  registerEmployee(EmployeeVO empVO);
	public   EmployeeVO  showEmployeeById(int no);
	public  String   editEmployee(EmployeeVO empVO);
	public  String    removeEmployeeById(int id);
	
	public  Page<EmployeeVO>  showEmployeesByPagination(Pageable pageable);

}
