package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ActivityVO;

public interface ActivityDAO {
	
	//개인회원 자신이 참여한 공모전 리스트
	List<ActivityVO> selectActivityListCon(String indId) throws SQLException;
	
	//개인회원 자신이 참여한 공모전 리스트
	List<ActivityVO> selectActivityListMem(String indId) throws SQLException;
	
	//공모전번호로 참가자 리스트 가져오기
	List<ActivityVO> selectActivityListByConNo(int conNo) throws SQLException;
	
	//멘토링번호로 참가자 리스트 가져오기
	List<ActivityVO> selectActivityListByMenNo(int menNo) throws SQLException;
	
	List<ActivityVO> selectActivityCriteria(Criteria cri) throws SQLException;
	
	List<ActivityVO> selectAllActivityById(String id) throws SQLException;
	
	//공모전 전체 이력 가져오기
	List<ActivityVO> selectAllContestById(String id) throws SQLException;
	
	//멘토링 전체 이력 가져오기
	List<ActivityVO> selectActivityMentoringList(String id) throws SQLException;
	
	int selectActivityCriteriaTotalCount(Criteria cri) throws SQLException;
	
	ActivityVO selectActivityConByActNo(int actNo) throws SQLException;
	
	ActivityVO selectActivityMenByActNo(int actNo) throws SQLException;
	
	void insertActivityContest(ActivityVO activity) throws SQLException;
	void insertActivityMentoring(ActivityVO activity) throws SQLException;
	
	void updateActivity(ActivityVO activity) throws SQLException;
	//기업회원이 가산점 부여하는 update
	void updateActivityCom(ActivityVO activity) throws SQLException;
	
	void deleteActivity(int actNo) throws SQLException;
	
	int selectActivitySeqNext() throws SQLException;
	
}
