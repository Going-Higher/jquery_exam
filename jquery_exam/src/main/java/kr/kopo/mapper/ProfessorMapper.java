package kr.kopo.mapper;

import java.util.List;

import kr.kopo.domain.ProfessorVO;

public interface ProfessorMapper {
	public List<ProfessorVO> list();
	public void insert(ProfessorVO item);
	public ProfessorVO read(long sid);
	public int update(ProfessorVO item);
	public int delete(long sid);
}
