package kr.kopo.mapper;

import java.util.List;

import kr.kopo.domain.CustomerVO;

public interface CustomerMapper {
	
	public List<CustomerVO> list();
	public void insert(CustomerVO item);
	public CustomerVO read(long cid);
	public int update(CustomerVO item);
	public int delte(long cid);

}
