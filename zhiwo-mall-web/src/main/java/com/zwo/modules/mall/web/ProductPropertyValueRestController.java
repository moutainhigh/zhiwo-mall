package com.zwo.modules.mall.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.DatagridPage;
import com.github.pagehelper.PageInfo;
import com.zwo.modules.mall.domain.PrProductPropertyValue;
import com.zwo.modules.mall.domain.PrProductPropertyValueCriteria;
import com.zwo.modules.mall.service.IPrProductPropertyValueService;
import com.zwo.modules.mall.service.IPrductService;
import com.zwo.modules.system.domain.TbUser;
import com.zwotech.common.web.BaseController;

@RestController
@RequestMapping("product")
@Lazy(true)
public class ProductPropertyValueRestController extends BaseController<PrProductPropertyValue> {
	@Autowired
	@Lazy(true)
	private IPrProductPropertyValueService productPropertyValueService;
	
	/** 
	 * @Title: deleteById 
	 * @Description: 批量删除 
	 * @param idstring
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @return String    返回类型 
	 * @throws 
	 */
	@RequestMapping(value = "/deleteById")
	public String deleteById(@RequestParam(value = "idstring",required=true) String idstring, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) throws IOException {

		String[] ids = idstring.split(",");
		List<String> list = new ArrayList<String>();
		for (String idstr : ids) {
			list.add(idstr);
		}
		int result = productPropertyValueService.deleteBatch(list);
		return result+"";
	}
	
	/** 
	 * @Title: deleteById 
	 * @Description: 批量删除 
	 * @param idstring
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @return String    返回类型 
	 * @throws 
	 */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "id",required=true) String id, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) throws IOException {
		
		int result = productPropertyValueService.deleteByPrimaryKey(id);
		return result+"";
	}
	 
	/**
	 * @Description: 查看详情 
	 * @param id
	 * @param uiModel
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @return
	 */
	@RequestMapping(value = "/show/{id}")
	public PrProductPropertyValue getPrProductPropertyValue(@PathVariable("id") String id, Model uiModel, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		PrProductPropertyValue product = productPropertyValueService.selectByPrimaryKey(id);
		
		return product;
	}
	
	@RequestMapping(value = "/select")
	@ResponseBody
	public DatagridPage<PrProductPropertyValue> select(@ModelAttribute PageInfo<PrProductPropertyValue> pageInfo, @ModelAttribute PrProductPropertyValue product, Model uiModel,
			HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {

		super.select(pageInfo, uiModel, httpServletRequest, httpServletResponse);
 
		PrProductPropertyValueCriteria productCriteria = null;
		productCriteria = new PrProductPropertyValueCriteria();
		PrProductPropertyValueCriteria.Criteria criteria = productCriteria.createCriteria();
		productCriteria.setOrderByClause("id desc");
		if (null != product.getName() && !"".equals(product.getName())) {
			criteria.andNameLike("%" + product.getName() + "%");
		}
		
		pageInfo = productPropertyValueService.selectByPageInfo(productCriteria, pageInfo);
		return super.setPage(pageInfo);
	}
	

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(@Valid PrProductPropertyValue product, BindingResult result, Model uiModel,
			HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
		if (result.hasErrors()) {

		}
		/*Subject currentUser = SecurityUtils.getSubject();
		if(currentUser!=null){
			Session session = currentUser.getSession();
			if(session != null){
				TbUser tbUser = (TbUser) session.getAttribute("tbUser");
				if(tbUser != null){
					product.setUserId(tbUser.getId());
				}
			}
		}*/
		String res = ""+productPropertyValueService.insertSelective(product);
		return res;
	}
	
	@RequestMapping(value = "/testcreate", method = RequestMethod.GET)
	public String testcreate(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
		PrProductPropertyValue product = new PrProductPropertyValue();
		product.setId(System.currentTimeMillis()+"");
		String res = ""+productPropertyValueService.insertSelective(product);
		return res;
	}
	
	@RequestMapping(value = "/sendCreatProductTopic", method = RequestMethod.GET)
	public void sendCreatProductTopic(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
//		prductService.sendCreateProductTopic("创建一个Topic成功。");
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@Valid PrProductPropertyValue product, BindingResult result, Model uiModel,
			HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
		if (result.hasErrors()) {
			
		}
		
		String res = ""+this.productPropertyValueService.updateByPrimaryKeySelective(product);
		return res;
	}
}