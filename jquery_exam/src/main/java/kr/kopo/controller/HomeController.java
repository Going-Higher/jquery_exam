package kr.kopo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kopo.domain.ProfessorVO;
import kr.kopo.service.ProfessorService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private ProfessorService service;	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws ParseException {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		/*
		 * List<ProfessorVO> list=null; list=new ArrayList<ProfessorVO>(); ProfessorVO
		 * vo = new ProfessorVO(); String from ="1985-05-29"; Date to; SimpleDateFormat
		 * transForm = new SimpleDateFormat("yyyy-MM-dd"); to=transForm.parse(from);
		 * vo.setPid(1); vo.setPname("김상범"); vo.setDept("컴정"); vo.setPost("교수");
		 * vo.setPay(5000000); vo.setHire(to); vo.setMajor("프로그램");
		 * vo.setCampus("폴리텍4"); list.add(vo);
		 * 
		 * from ="1985-05-29"; transForm = new SimpleDateFormat("yyyy-MM-dd");
		 * to=transForm.parse(from); vo = new ProfessorVO(); vo.setPid(2);
		 * vo.setPname("이은숫"); vo.setDept("컴정"); vo.setPost("부교수"); vo.setPay(4000000);
		 * vo.setHire(to); vo.setMajor("프로그램"); vo.setCampus("폴리텍6"); list.add(vo);
		 * 
		 * from ="1985-05-29"; transForm = new SimpleDateFormat("yyyy-MM-dd");
		 * to=transForm.parse(from); vo = new ProfessorVO(); vo.setPid(3);
		 * vo.setPname("원종철"); vo.setDept("전자"); vo.setPost("부교수"); vo.setPay(3000000);
		 * vo.setHire(to); vo.setMajor("전자계산기"); vo.setCampus("폴리텍1"); list.add(vo);
		 * 
		 * from ="1985-05-29"; transForm = new SimpleDateFormat("yyyy-MM-dd");
		 * to=transForm.parse(from); vo = new ProfessorVO(); vo.setPid(4);
		 * vo.setPname("이우열"); vo.setDept("정통"); vo.setPost("조교수"); vo.setPay(3000000);
		 * vo.setHire(to); vo.setMajor("정보통신"); vo.setCampus("폴리텍7"); list.add(vo);
		 */
		 
		model.addAttribute("list",service.list());
		
		return "getajax";
	}
	@GetMapping(value="getajax")
	public String getajax(Model model) throws ParseException {
		List<ProfessorVO> list=null;
		list=new ArrayList<ProfessorVO>();
		ProfessorVO vo = new ProfessorVO();
		String from ="1985-05-29";
		Date to;
		SimpleDateFormat transForm = new SimpleDateFormat("yyyy-MM-dd");
		to=transForm.parse(from);
		vo.setPid(1);
		vo.setPname("김상범");
		vo.setDept("컴정");
		vo.setPost("교수");
		vo.setPay(5000000);
		vo.setHire(to);
		vo.setMajor("프로그램");
		vo.setCampus("폴리텍4");
		list.add(vo);
		
		from ="1985-05-29";
		transForm = new SimpleDateFormat("yyyy-MM-dd");
		to=transForm.parse(from);
		vo = new ProfessorVO();
		vo.setPid(2);
		vo.setPname("이은숫");
		vo.setDept("컴정");
		vo.setPost("부교수");
		vo.setPay(4000000);
		vo.setHire(to);
		vo.setMajor("프로그램");
		vo.setCampus("폴리텍6");
		list.add(vo);
		
		from ="1985-05-29";
		transForm = new SimpleDateFormat("yyyy-MM-dd");
		to=transForm.parse(from);
		vo = new ProfessorVO();
		vo.setPid(3);
		vo.setPname("원종철");
		vo.setDept("전자");
		vo.setPost("부교수");
		vo.setPay(3000000);
		vo.setHire(to);
		vo.setMajor("전자계산기");
		vo.setCampus("폴리텍1");
		list.add(vo);
		
		from ="1985-05-29";
		transForm = new SimpleDateFormat("yyyy-MM-dd");
		to=transForm.parse(from);
		vo = new ProfessorVO();
		vo.setPid(4);
		vo.setPname("이우열");
		vo.setDept("정통");
		vo.setPost("조교수");
		vo.setPay(3000000);
		vo.setHire(to);
		vo.setMajor("정보통신");
		vo.setCampus("폴리텍7");
		list.add(vo);
		model.addAttribute("list",list);
		return "getajax2";
	}
		
}
