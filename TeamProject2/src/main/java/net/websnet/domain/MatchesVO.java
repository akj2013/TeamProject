package net.websnet.domain;

import lombok.Data;

@Data
public class MatchesVO {
	/*
	
	private int mnum; // 경기 번호
	
	private String hteam; // 홈 팀
	private String ateam; // 어웨이 팀
	private int hscore; // 홈 팀 스코어
	private int ascore; // 어웨이 팀 스코어
	private String mtime; // 경기 시간
	
	private String win; // 승리 팀
	private String draw; // 무승부
	private String lose; // 패배 팀 
	
	*/
	
	private int mnum;
	private String hteam;
	private String ateam;
	private int hscore;
	private int ascore;
	private int hranking;
	private int aranking;
	private int hattackpoint;
	private int aattackpoint;
	private int hfoul;
	private int afoul;
	private String hdirector;
	private String adirector;
	private String hcaptain;
	private String acaptain;
	private String hrrecord;
	private String arrecord;
	private int hgmedal;
	private int hsmedal;
	private int hbmedal;
	private int agmedal;
	private int asmedal;
	private int abmedal;
	
}
