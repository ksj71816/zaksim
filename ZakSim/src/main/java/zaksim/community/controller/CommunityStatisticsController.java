package zaksim.community.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 커뮤니티 통계 화면
@Controller
@RequestMapping(value="/zaksim/community")
public class CommunityStatisticsController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);


	// 개인 순위 화면 GET (TOP 20)
	@RequestMapping(value="/individualRanking", method=RequestMethod.GET)
	public void individualStatistics(Model model) {
		
	}
	
	// 커뮤니티 순위 화면 GET (TOP 20)
	@RequestMapping(value="/groupRanking", method=RequestMethod.GET)
	public void communityStatistics(Model model) {
		
	}
	
}
