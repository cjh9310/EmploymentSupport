package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.FalseReportVO;
import kr.or.ddit.dto.ReportVO;

public interface FalseReportService {
	
	// 전체보기
	Map<String, Object> getAllFalseReportList(Criteria cri, String indId)throws SQLException;
	
	// 상세보기
	FalseReportVO getFalseReport(int falNo)throws SQLException;
	
	//자신이 쓴 공고글 정보 자세히 찾기
	FalseReportVO getFalseReportById(int falNo, String id) throws SQLException;
	
	// 등록
	void regist(FalseReportVO falseReport, String savePath)throws SQLException;
	
	// 수정
	void modify(FalseReportVO falseReport)throws SQLException;
	
	// 삭제
	void remove(int falNo)throws SQLException;
}
