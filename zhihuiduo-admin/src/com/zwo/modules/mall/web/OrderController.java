package com.zwo.modules.mall.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zwo.modules.mall.domain.OrderTrade;
import com.zwo.modules.mall.service.IOrderTradeService;
import com.zwo.modules.system.domain.TbUser;
import com.zwotech.common.web.BaseController;

@Controller
@RequestMapping("order")
@Lazy(true)
public class OrderController extends BaseController<OrderTrade> {
	@Autowired
	@Lazy(true)
	private IOrderTradeService orderService;

	private static final String basePath = "views/mall/order/";

	/**
	 * 默认执行方法。
	 * 
	 * @param uiModel
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping()
	String defaultMethod(Model uiModel, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		return list(httpServletRequest);
	}
	
	@RequiresPermissions("mall:order:view")
	@RequestMapping(value = {"list" })
	public String list(HttpServletRequest httpServletRequest) {
		return basePath + "order_list";
	}

	/**
	 * 只查询我的订单。
	 * 
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @return
	 */
	@RequestMapping(value = { "myOrderList" }, method = RequestMethod.GET)
	public String myOrderList(HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		return basePath + "myOrderList";
	}

	@RequestMapping(value = "myOrderEdit/{id}", method = RequestMethod.GET)
	public String myOrderEdit(@PathVariable("id") String id, Model uiModel,
			HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		OrderTrade order = orderService.selectByPrimaryKey(id);
		uiModel.addAttribute("order", order);
		return basePath + "myOrderEdit";
	}

	@RequiresPermissions("mall:order:edit")
	@RequestMapping(value = "updateMyOrder", method = RequestMethod.POST)
	public String updateMyOrder(@ModelAttribute OrderTrade order,
			BindingResult result, Model uiModel,
			RedirectAttributes redirectAttributes,
			HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {

		if (result.hasErrors()) {
			uiModel.addAttribute("order", order);
			uiModel.addAttribute("message", "填入的数据有误！");
			return "redirect:/order/myOrderEdit/" + order.getId();
		}

		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser != null) {
			TbUser user = (TbUser) currentUser.getSession()
					.getAttribute("user");
			if (user != null) {
				order.setUpdater(user.getUsername());
			}
		}

		int res = this.orderService.updateByPrimaryKeySelective(order);
		if (res == 1) {
			redirectAttributes.addFlashAttribute("order", order);
			redirectAttributes.addFlashAttribute("message", "保存成功！");
		}
		return "redirect:/order/myOrderEdit/" + order.getId();
	}

	// //////////////////////////////////////////////////
	// //////////////////////////////////////////////////
	// //////////////////////////////////////////////////
	// //////////////////////////////////////////////////
	@RequiresPermissions("mall:order:create")
	@RequestMapping(value = { "create" }, method = RequestMethod.GET)
	public String tocreate(@Valid OrderTrade order, BindingResult result,
			Model uiModel, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		uiModel.addAttribute("order", order);
		return basePath + "order_edit";
	}

	@RequiresPermissions("mall:order:view")
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") String id, Model uiModel,
			HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		OrderTrade order = orderService.selectByPrimaryKey(id);

		uiModel.addAttribute("order", order);
		uiModel.addAttribute("operation", "edit");
		return basePath + "order_edit";
	}

	@RequiresPermissions("mall:order:create")
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(@Valid OrderTrade order, BindingResult result,
			Model uiModel, RedirectAttributes redirectAttributes,
			HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("order", order);
			redirectAttributes.addFlashAttribute("message", "数据绑定有误！");
			return "redirect:/order/create";
		}

		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser != null) {
			TbUser user = (TbUser) currentUser.getSession()
					.getAttribute("user");
			if (user != null) {
				order.setCreator(user.getUsername());
			}
		}

		int res = orderService.insertSelective(order);
		if (res != 0) {
			redirectAttributes.addFlashAttribute("order", order);
			redirectAttributes.addFlashAttribute("message", "保存成功！");
		}

		return "redirect:/order/create";
	}

	@RequiresPermissions("mall:order:edit")
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@Valid OrderTrade order, BindingResult result,
			Model uiModel, RedirectAttributes redirectAttributes,
			HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		if (order.getId() == null || "".equals(order.getId())) {
			redirectAttributes.addFlashAttribute("message", "请不要编辑不存在的对象！");
			return "redirect:/order/create";
		}
		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("order", order);
			redirectAttributes.addFlashAttribute("message", "填入的数据有误！");
			return "redirect:/order/create";
		}

		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser != null) {
			TbUser user = (TbUser) currentUser.getSession()
					.getAttribute("user");
			if (user != null) {
				order.setUpdater(user.getUsername());
			}
		}

		int res = this.orderService.updateByPrimaryKeySelective(order);
		if (res == 1) {
			redirectAttributes.addFlashAttribute("order", order);
			redirectAttributes.addFlashAttribute("message", "保存成功！");
		}
		redirectAttributes.addAttribute("operation", "edit");
		return "redirect:/order/edit/" + order.getId();
	}
}
