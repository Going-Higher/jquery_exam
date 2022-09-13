package kr.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kopo.domain.StudentVO;
import kr.kopo.mapper.StudentMapper;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentMapper mapper;
	
	@Override
	public List<StudentVO> list() {
		return mapper.list();
	}
	
	@Override
	public void insert(StudentVO item) {
		mapper.insert(item);
	}

	@Override
	public StudentVO read(long pid) {
		return mapper.read(pid);
	}

	@Override
	public void delete(long pid) {
		mapper.delete(pid);		
	}

	@Override
	public void update(StudentVO item) {
		mapper.update(item);		
	}	
	
}
