package kr.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kopo.domain.CustomerVO;
import kr.kopo.mapper.CustomerMapper;
@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper mapper;
	
	@Override
	public List<CustomerVO> list() {
		return mapper.list();
	}

	@Override
	public CustomerVO read(long cid) {
		return mapper.read(cid);
	}

	@Override
	public void insert(CustomerVO item) {
		mapper.insert(item);
	}

	@Override
	public void delete(long cid) {
		mapper.delte(cid);
	}

	@Override
	public void update(CustomerVO item) {
		mapper.update(item);
	}

}
