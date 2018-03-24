/**
 * 
 */
package com.zwo.xiyangyang.modules.pr.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.util.HtmlUtils;

import com.zwo.xiyangyang.modules.core.service.impl.BaseServiceImpl;
import com.zwo.xiyangyang.modules.pr.dao.PrProductMapper;
import com.zwo.xiyangyang.modules.pr.domain.PrProduct;
import com.zwo.xiyangyang.modules.pr.service.IProductService;

import tk.mybatis.mapper.common.Mapper;

/**
 * @author 黃記新
 *
 */
@Service
@Lazy(true)
@Transactional(readOnly = false)
public class ProductServiceImpl extends BaseServiceImpl<PrProduct> implements IProductService {

	@Autowired
	private PrProductMapper productMapper ;

	@Override
	public Mapper<PrProduct> getBaseMapper() {
		return productMapper;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Class getImplClass() {
		return ProductServiceImpl.class;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Class getTypeClass() {
		return PrProduct.class;
	}

	@Override
	protected String getBaseMessage() {
		return "商品基础操作";
	}


	/** 
	 * 插入方法，对内容诸如"<"">"进行转换为html相对应的标签。
	 * (non-Javadoc)
	 * @see com.zwo.xiyangyang.modules.core.service.impl.BaseServiceImpl#insert(java.lang.Object)
	 */
	@Override
	public int insert(PrProduct record) {
		String content = record.getContent();
		if (!StringUtils.isEmpty(content)) {
			content = HtmlUtils.htmlEscape(content);
			record.setContent(content);
		}

		int result = super.insert(record);
		return result;
	}
	
	/** 
	 * 插入方法，对内容诸如"<"">"进行转换为html相对应的标签。
	 * (non-Javadoc)
	 * @see com.zwo.xiyangyang.modules.core.service.impl.BaseServiceImpl#insert(java.lang.Object)
	 */
	@Override
	public int insertSelective(PrProduct record) {
		String content = record.getContent();
		if (!StringUtils.isEmpty(content)) {
			content = HtmlUtils.htmlEscape(content);
			record.setContent(content);
		}

		int result = super.insertSelective(record);
		return result;
	}
	
	/**
	 * 根据条件有选择的更新。
	 * @param record
	 * @return
	 */
	@Override
	public int updateByPrimaryKeySelective(PrProduct record) {
		String content = record.getContent();
		if (!StringUtils.isEmpty(content)) {
			content = HtmlUtils.htmlEscape(content);
			record.setContent(content);
		}

		int result = super.updateByPrimaryKeySelective(record);
		return result;
	}

	/**
	 * 根据ID进行记录更新。
	 * @param record
	 * @return
	 */
	@Override
	public int updateById(PrProduct record) {
		String content = record.getContent();
		if (!StringUtils.isEmpty(content)) {
			content = HtmlUtils.htmlEscape(content);
			record.setContent(content);
		}

		int result = super.updateById(record);
		return result;	
	}
	
	@Override
	public PrProduct selectByPrimaryKey(String id) {
		PrProduct record = super.selectByPrimaryKey(id);
		
		String content = record.getContent();
		if (!StringUtils.isEmpty(content)) {
			content = HtmlUtils.htmlUnescape(content);
			record.setContent(content);
		}

		return record;
	}
}