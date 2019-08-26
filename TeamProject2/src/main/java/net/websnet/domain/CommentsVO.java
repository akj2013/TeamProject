package net.websnet.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommentsVO {
	private int idx; // 코멘트 인덱스
	private String emailc; // 유저 아이디
	private String context; // 내용
	private Date timec; // 입력 시간
	private String mnumc; // 경기 번호
	private String team;
}