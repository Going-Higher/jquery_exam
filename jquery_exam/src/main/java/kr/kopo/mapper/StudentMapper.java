package kr.kopo.mapper;

import java.util.List;

import kr.kopo.domain.StudentVO;

public interface StudentMapper {
	
	public List<StudentVO> list();
	
	public void insert(StudentVO item);
	
	public StudentVO read(long sid);
	
	public int update(StudentVO item);
	
	public int delete(long sid);
}
