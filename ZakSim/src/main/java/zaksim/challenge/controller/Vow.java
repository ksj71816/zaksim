package zaksim.challenge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/zaksim/challenge")
public class Vow {

	
	@RequestMapping(value="/vow", method=RequestMethod.GET)
	public void vowGet() {
		
	}
	
	@RequestMapping(value="/vow", method=RequestMethod.POST)
	public void vowPost() {
		
	}
	
	
}
