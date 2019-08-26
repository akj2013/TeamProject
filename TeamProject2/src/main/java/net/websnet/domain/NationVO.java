package net.websnet.domain;

import lombok.Data;

@Data
public class NationVO {
	private String nname; // 나라 이름
	private int mcount; // 경기 수
	private int wcount; // 승리 수
	private int dcount; // 무승부 수
	private int lcount; // 패배 수
}
