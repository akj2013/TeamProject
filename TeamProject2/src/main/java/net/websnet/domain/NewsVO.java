package net.websnet.domain;

import lombok.Data;

@Data
public class NewsVO {
	private int idx; // 뉴스 인덱스
	private String context; // 본문
	private String timec; // 입력 시간
	private String url; // 사진 URL
	
	// 뉴스 타이틀 제목 추가
	private String title; // 타이틀
	private String subTitle; // 서브 타이틀
	
	// 최종 수정 시간
	private String timen;
}
