package net.websnet.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class CommentsDTO {
	private int cnt;
	private List<CommentsVO> list;
}
