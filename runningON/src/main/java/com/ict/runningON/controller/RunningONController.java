package com.ict.runningON.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class RunningONController {
	
	
    @GetMapping("/board")
    public ModelAndView freeBoard() {
        ModelAndView mv = new ModelAndView("boards/board");
        
        return mv;
    }
    
    @GetMapping("/main")
	public ModelAndView mainpage() {
		return new ModelAndView("/index");
	}
    
	@GetMapping("/my_page")
	public ModelAndView mypage1() {
		return new ModelAndView("/my");
	}
	
	
	
}

