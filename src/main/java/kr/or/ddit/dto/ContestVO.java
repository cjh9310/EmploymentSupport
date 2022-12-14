package kr.or.ddit.dto;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class ContestVO {

	private int conNo;// 공모전 일련번호
	private String coId;// 공모전 주최기업아이디
	private String conTitle;// 공모전 제목
	private String conContent;// 공모전 카드에 들어갈 간단내용
	private String conPicture;// 공모전 포스터이미지파일명
	private String conField;// 공모전 분야
	private String conAward;// 공모전 시상내역
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date conDate; // 게시물 등록일자
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date conSdate;// 공모전 응모시작일자
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date conEdate;// 공모전 응모마감일자

	private List<MultipartFile> uploadFile; // 파일 업로드
	private List<AttachVO> attachList;

	// 썸네일 필드
	private String uploadpath;
	private String filename;
	private String filetype;

	public int getConNo() {
		return conNo;
	}

	public void setConNo(int conNo) {
		this.conNo = conNo;
	}

	public String getCoId() {
		return coId;
	}

	public void setCoId(String coId) {
		this.coId = coId;
	}

	public String getConTitle() {
		return conTitle;
	}

	public void setConTitle(String conTitle) {
		this.conTitle = conTitle;
	}

	public String getConContent() {
		return conContent;
	}

	public void setConContent(String conContent) {
		this.conContent = conContent;
	}

	public String getConPicture() {
		return conPicture;
	}

	public void setConPicture(String conPicture) {
		this.conPicture = conPicture;
	}

	public String getConField() {
		return conField;
	}

	public void setConField(String conField) {
		this.conField = conField;
	}

	public String getConAward() {
		return conAward;
	}

	public void setConAward(String conAward) {
		this.conAward = conAward;
	}

	public Date getConDate() {
		return conDate;
	}

	public void setConDate(Date conDate) {
		this.conDate = conDate;
	}

	public Date getConSdate() {
		return conSdate;
	}

	public void setConSdate(Date conSdate) {
		this.conSdate = conSdate;
	}

	public Date getConEdate() {
		return conEdate;
	}

	public void setConEdate(Date conEdate) {
		this.conEdate = conEdate;
	}

	public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}

	public List<AttachVO> getAttachList() {
		return attachList;
	}

	public void setAttachList(List<AttachVO> attachList) {
		this.attachList = attachList;
	}

	public String getUploadpath() {
		return uploadpath;
	}

	public void setUploadpath(String uploadpath) {
		this.uploadpath = uploadpath;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFiletype() {
		return filetype;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

	@Override
	public String toString() {
		return "ContestVO [conNo=" + conNo + ", coId=" + coId + ", conTitle=" + conTitle + ", conContent=" + conContent
				+ ", conPicture=" + conPicture + ", conField=" + conField + ", conAward=" + conAward + ", conDate="
				+ conDate + ", conSdate=" + conSdate + ", conEdate=" + conEdate + ", uploadFile=" + uploadFile
				+ ", attachList=" + attachList + "]";
	}

}
