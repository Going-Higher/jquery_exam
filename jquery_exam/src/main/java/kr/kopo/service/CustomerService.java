package kr.kopo.service;

import java.util.List;

import kr.kopo.domain.CustomerVO;

public interface CustomerService {
	
	List<CustomerVO> list();
	CustomerVO read(long cid);
	void insert(CustomerVO item);
	void delete(long cid);
	void update(CustomerVO item);

}
