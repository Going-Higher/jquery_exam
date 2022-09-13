package kr.kopo.service;

import java.util.List;

import kr.kopo.domain.StudentVO;

public interface StudentService {
	
	List<StudentVO> list();
	
	StudentVO read(long pid);
	
	void insert(StudentVO item);
	
	void delete(long sid);
	
	void update(StudentVO item);
	
}
