package kr.kopo.service;

import java.util.List;

import kr.kopo.domain.ProfessorVO;

public interface ProfessorService {
	
	List<ProfessorVO> list();
	
	ProfessorVO read(long pid);
	
	void insert(ProfessorVO item);
	
	void delete(long pid);
	
	void update(ProfessorVO item);

	public void register(ProfessorVO item);
	
}
