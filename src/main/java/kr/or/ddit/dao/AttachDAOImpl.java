package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.AttachVO;


public class AttachDAOImpl implements AttachDAO {
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

//	private AttachDAO attachDAO; 
//	public void setAttachDAO(AttachDAO attachDAO) {
//		this.attachDAO = attachDAO;
//	}

	@Override
	public List<AttachVO> selectAttachesByWorkInfo( AttachVO attach) throws SQLException {
		List<AttachVO> attachList=session.selectList("Attach-Mapper.selectAttachesByWorkInfo",attach);
		return attachList;
	}

	@Override
	public AttachVO selectAttachByAno(int ano) throws SQLException {
		AttachVO attach=session.selectOne("Attach-Mapper.selectAttachByAno",ano);
		return attach;
	}

	@Override
	public void insertAttach(AttachVO attach) throws SQLException {
		session.update("Attach-Mapper.insertAttach",attach);
	}

	@Override
	public void deleteAttach(int ano) throws SQLException {
		session.update("Attach-Mapper.deleteAttach",ano);		
	}

	@Override
	public void deleteAllAttach(int pno) throws SQLException {
		session.update("Attach-Mapper.deleteAllAttach",pno);		
	}

	@Override
	public AttachVO selectAttachByAttNo(int attNo) {
		AttachVO attach=session.selectOne("Attach-Mapper.selectAttachByAttNo",attNo);
		return attach;
	}
}
