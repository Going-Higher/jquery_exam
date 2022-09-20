package kr.kopo.service;

import java.util.List;

import kr.kopo.domain.StudentVO;

public interface StudentService {
	
	public List<StudentVO> list();
	
	public void register(StudentVO item);
	
	public List<StudentVO> read(long pid);
	
	public void delete(long sid);
	
	public void update(StudentVO item);
	
}
