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
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.DatagridPage;
import com.github.pagehelper.PageInfo;
import com.zwo.modules.mall.domain.PrCategory;
import com.zwo.modules.mall.domain.PrCategoryCriteria;
import com.zwo.modules.mall.service.IPrCategoryService;
import com.zwo.modules.system.domain.TbUser;
import com.zwotech.common.web.BaseController;

@RestController
@RequestMapping("prCategory")
@Lazy(true)
public class PrCategoryRestController extends BaseController<PrCategory> {

	@Autowired
	@Lazy(true)
	private IPrCategoryService categoryService;

	/**
	 * @Title: deleteById 
	 * @Description: 批量删除 
	 * @param idstring 
	 * @param httpServletRequest 
	 * @param httpServletResponse
	 * @return String 返回类型
	 * @throws
	 */
	@RequestMapping(value = "/deleteById")
	public String deleteById(@RequestParam(value = "idstring", required = true) String ids,
			HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {

		String[] idArray = ids.split(",");
		List<String> list = new ArrayList<String>();
		for (String idstr : idArray) {
			list.add(idstr);
		}
		int result = categoryService.deleteBatch(list);
		return result + "";
	}

	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "id", required = true) String id, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		int result = categoryService.deleteByPrimaryKey(id);
		return result + "";
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
	public PrCategory getPrCategory(@PathVariable("id") String id, Model uiModel, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		PrCategory product = categoryService.selectByPrimaryKey(id);
		return product;
	}

	/**
	 * @Description: 获得树结构的列表。
	 * @param id
	 * @param uiModel
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @return
	 */
	@RequestMapping(value = "getTreeCategory")
	public List<PrCategory> getTreeCategory(Model uiModel, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {
		List<PrCategory> list = categoryService.getTreeCategory(null);
		return list;
	}

	@RequestMapping(value = "select")
	public DatagridPage<PrCategory> select(@ModelAttribute PageInfo<PrCategory> pageInfo,
			@ModelAttribute PrCategory category, Model uiModel, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {

		super.select(pageInfo, uiModel, httpServletRequest, httpServletResponse);

		PrCategoryCriteria productCriteria = null;
		productCriteria = new PrCategoryCriteria();
		PrCategoryCriteria.Criteria criteria = productCriteria.createCriteria();
		productCriteria.setOrderByClause("id desc");
		if (null != category.getName() && !"".equals(category.getName())) {
			criteria.andNameLike("%" + category.getName() + "%");
		}

		pageInfo = categoryService.selectByPageInfo(productCriteria, pageInfo);
		return super.setPage(pageInfo);
	}
}
