package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.SupportVO;

public interface SupportService {
	
	//리스트 조회
	Map<String, Object> getSupportList(Criteria cri) throws SQLException;
	
	Map<String, Object> getSupportListByindId(String indId) throws SQLException;
	
	//상세보기
	SupportVO getSupport(int supNo) throws SQLException;
	
	//등록
	void regist(SupportVO support, String savePath) throws SQLException;
	
	//수정
	void modify(SupportVO support) throws SQLException;
	
	//삭제
	void remove(int supNo) throws SQLException;

	void updateSupportCounselor(SupportVO support) throws SQLException;

	
	
}
