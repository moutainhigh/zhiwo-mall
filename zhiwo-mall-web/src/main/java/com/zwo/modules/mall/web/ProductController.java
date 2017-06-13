package com.zwo.modules.mall.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zwo.modules.mall.domain.PrProduct;
import com.zwo.modules.mall.service.IPrductService;
import com.zwotech.common.web.BaseController;

@Controller
@RequestMapping("product")
@Lazy(true)
public class ProductController extends BaseController<PrProduct> {
	@Autowired
	@Lazy(true)
	private IPrductService prductService;
	
	private static final String basePath = "views/mall/product/";
	
	@RequestMapping(value = { "", "list" })
	public String list(HttpServletRequest httpServletRequest) {
		return basePath+"product_list";
	}
	
}
