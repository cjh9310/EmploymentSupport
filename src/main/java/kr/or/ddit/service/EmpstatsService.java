package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dto.EmpstatsVO;

public interface EmpstatsService {
	
	Map<String, Object> getTrendList()throws SQLException;

	Map<String, Object> getEmpList()throws SQLException;
	
}







