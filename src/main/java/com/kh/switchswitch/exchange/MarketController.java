package com.kh.switchswitch.exchange;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("market")
public class MarketController {
	
	@GetMapping("exchangeCard")
	public void exchangeCard() {}

}