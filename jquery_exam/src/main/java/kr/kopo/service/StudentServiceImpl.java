package kr.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kopo.domain.StudentVO;
import kr.kopo.mapper.StudentMapper;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	StudentMapper mapper;
	
	@Override
	public List<StudentVO> list() {
		return mapper.list();
	}
	
	@Override
	public void register(StudentVO item) {
		mapper.insert(item);
	}

	@Override
	public List<StudentVO> read(long pid) {
		return mapper.read(pid);
	}

	@Override
	public void delete(long sid) {
		mapper.delete(sid);		
	}

	@Override
	public void update(StudentVO item) {
		mapper.update(item);		
	}	
	
}
