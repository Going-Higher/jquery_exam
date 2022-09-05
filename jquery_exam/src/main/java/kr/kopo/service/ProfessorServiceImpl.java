package kr.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kopo.domain.ProfessorVO;
import kr.kopo.mapper.ProfessorMapper;

@Service
public class ProfessorServiceImpl implements ProfessorService {
	
	@Autowired
	private ProfessorMapper mapper;
	@Override
	public List<ProfessorVO> list() {
		return mapper.list();
	}
	
	@Override
	public void insert(ProfessorVO item) {
		mapper.insert(item);
	}

	@Override
	public ProfessorVO read(long pid) {
		return mapper.read(pid);
	}

	@Override
	public void delete(long pid) {
		mapper.delete(pid);		
	}

	@Override
	public void update(ProfessorVO item) {
		mapper.update(item);		
	}	
	
}
