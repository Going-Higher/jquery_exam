package kr.kopo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.kopo.domain.SampleVO;

@RestController//xml이나 json 형태로 출력
@RequestMapping("/sample")
public class SampleController {	
	@GetMapping(value="/getText", produces="text/plain; charset=UTF-8")
	public String getText() {
		return "안녕하세요";
	}
	@GetMapping(value="/getSample")
	public SampleVO getSample() {
		return new SampleVO(112,"star","burn");
	}
}
