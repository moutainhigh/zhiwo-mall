/**
 * 
 */
package com.zwo.modules.mall.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zwo.modules.mall.dao.PrCategoryMapper;
import com.zwo.modules.mall.domain.OrderDelivery;
import com.zwo.modules.mall.domain.PrCategory;
import com.zwo.modules.mall.domain.PrCategoryCriteria;
import com.zwo.modules.mall.domain.PrProductCriteria;
import com.zwo.modules.mall.domain.PrCategoryCriteria.Criteria;
import com.zwo.modules.mall.service.IPrCategoryService;
import com.zwotech.common.utils.RedisUtil;
import com.zwotech.common.utils.SpringContextHolder;
import com.zwotech.common.utils.TreeBuilder;
import com.zwotech.modules.core.service.impl.BaseService;

import tk.mybatis.mapper.common.Mapper;

/**
 * @author hjx
 *
 */
@Service
@Lazy(true)
@Transactional(readOnly = false)
public class PrCategoryServiceImpl extends BaseService<PrCategory> implements
		IPrCategoryService {
	private static Logger logger = LoggerFactory
			.getLogger(PrCategoryServiceImpl.class);

	private static final String BASE_MESSAGE = "【PrCategoryServiceImpl服务类提供的基础操作增删改查等】";
	public static final String KEY_PRCATEGORY = "_key_prCategory";
	public static final String KEY_TREEP_RCATEGORY = "key_TreeprCategory";
	@Autowired
	@Lazy(true)
	private PrCategoryMapper prCategoryMapper;

	@Override
	public Mapper<PrCategory> getBaseMapper() {
		return null;
	}

	@SuppressWarnings("rawtypes")
	private RedisTemplate redisTemplate;

	public PrCategoryServiceImpl() {
		super();
		if (SpringContextHolder.getApplicationContext().containsBean(
				"redisTemplate")) {
			redisTemplate = SpringContextHolder.getBean("redisTemplate");
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#insertBatch(java.util.List)
	 */
	/*
	 * @Override public int insertBatch(List<PrCategory> list) { // TODO
	 * Auto-generated method stub return 0; }
	 */

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#countByExample(java.lang.
	 * Object)
	 */
	/*
	 * @Override public int countByExample(Object example) { // TODO
	 * Auto-generated method stub return 0; }
	 */

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#deleteByExample(java.lang.
	 * Object)
	 */
	@Override
	@CacheEvict(value = "PrCategory", allEntries = true)
	public int deleteByExample(Object example) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByExample批量删除开始");
		List<PrCategory> list = this.prCategoryMapper
				.selectByExample((PrCategoryCriteria) example);
		for (PrCategory category : list) {
			RedisUtil.removeRedisKey(redisTemplate, category.getId()
					+ KEY_PRCATEGORY);
		}
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		// 逻辑操作
		int result = prCategoryMapper
				.deleteByExample((PrCategoryCriteria) example);

		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByExample批量删除结束");
		return result;
	}

	@CacheEvict(value = "PrCategory", allEntries = true)
	// @Override
	public int deleteBatch(List<String> list) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteBatch批量删除开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteBatch批量删除ID为：" + list.toString());

		// 逻辑操作
		PrCategoryCriteria prCategoryCriteria = new PrCategoryCriteria();
		prCategoryCriteria.createCriteria().andIdIn(list);
		List<PrCategory> categories = this.prCategoryMapper
				.selectByExample(prCategoryCriteria);
		for (PrCategory category : categories) {
			RedisUtil.removeRedisKey(redisTemplate, category.getId()
					+ KEY_PRCATEGORY);
		}
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		int result = prCategoryMapper.deleteByExample(prCategoryCriteria);

		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteBatch批量删除结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#deleteByPrimaryKey(java.
	 * lang.String)
	 */
	@Override
	@CacheEvict(value = "PrCategory", key = "#id+'_key_prCategory'")
	public int deleteByPrimaryKey(String id) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByPrimaryKey删除开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByPrimaryKey删除ID为："
					+ id.toString());
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		RedisUtil.removeRedisKey(redisTemplate, id + KEY_PRCATEGORY);
		// 逻辑操作
		int result = prCategoryMapper.deleteByPrimaryKey(id);

		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByPrimaryKey删除结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#insert(java.lang.Object)
	 */
	@Override
	// @CachePut(value = "PrCategory", key = "#record.id+'_prCategory'")
	public int insert(PrCategory record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入对象为：" + record.toString());
		if ("".equals(record.getParentId())) {
			record.setParentId(null);
		}
		// 如果数据没有设置id,默认使用时间戳
		if (null == record.getId() || "".equals(record.getId())) {
			record.setId(System.currentTimeMillis() + ""
					+ Math.round(Math.random() * 99));
		}
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		int result = prCategoryMapper.insert(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#insertSelective(java.lang.
	 * Object)
	 */

	@Override
	// @CachePut(value = "PrCategory", key = "#record.id+'_prCategory'")
	public int insertSelective(PrCategory record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入对象为：" + record.toString());
		if ("".equals(record.getParentId())) {
			record.setParentId(null);
		}
		// 如果数据没有设置id,默认使用时间戳
		if (null == record.getId() || "".equals(record.getId())) {
			record.setId(System.currentTimeMillis() + ""
					+ Math.round(Math.random() * 99));
		}
		if ("".equals(record.getParentId())) {
			record.setParentId(null);
		}
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		int result = prCategoryMapper.insertSelective(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#selectByExample(java.lang.
	 * Object)
	 */
	@Override
	@Transactional(readOnly = true)
	public List<PrCategory> selectByExample(Object example) {
		return this.prCategoryMapper
				.selectByExample((PrCategoryCriteria) example);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#selectByPrimaryKey(java.
	 * lang.String)
	 */
	@Override
	@Cacheable(key = "#id+'_key_prCategory'", value = "PrCategory")
	@Transactional(readOnly = true)
	public PrCategory selectByPrimaryKey(String id) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "selectByPrimaryKey查询开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "selectByPrimaryKey查询参数为：" + id);

		// 逻辑操作
		PrCategory prCategory = prCategoryMapper.selectByPrimaryKey(id);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "selectByPrimaryKey查询结束");
		return prCategory;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByExampleSelective(
	 * java.lang.Object, java.lang.Object)
	 */
	@CacheEvict(value = "PrCategory", allEntries = true)
	@Override
	public int updateByExampleSelective(PrCategory record, Object example) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleSelective更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleSelective更新条件对象为："
					+ record.toString());
		List<PrCategory> categories = this.prCategoryMapper
				.selectByExample((PrCategoryCriteria) example);
		for (PrCategory category : categories) {
			RedisUtil.removeRedisKey(redisTemplate, category.getId()
					+ KEY_PRCATEGORY);
		}
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		// 逻辑操作
		int result = prCategoryMapper.updateByExampleSelective(record,
				(PrCategoryCriteria) example);
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleSelective更新结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByExample(java.lang.
	 * Object, java.lang.Object)
	 */
	@Override
	@CacheEvict(value = "PrCategory", allEntries = true)
	public int updateByExample(PrCategory record, Object example) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExample更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExample更新对象为："
					+ record.toString());
		List<PrCategory> categories = this.prCategoryMapper
				.selectByExample((PrCategoryCriteria) example);
		for (PrCategory category : categories) {
			RedisUtil.removeRedisKey(redisTemplate, category.getId()
					+ KEY_PRCATEGORY);
		}
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		// 逻辑操作
		int result = prCategoryMapper.updateByExample(record,
				(PrCategoryCriteria) example);
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExample更新结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByPrimaryKeySelective
	 * (java.lang.Object)
	 */
	@Override
	@CacheEvict(value = "PrCategory", key = "#record.id+'_key_prCategory'")
	public int updateByPrimaryKeySelective(PrCategory record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeySelective更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeySelective更新对象为："
					+ record.toString());
		if ("".equals(record.getParentId())) {
			record.setParentId(null);
		}
		RedisUtil
				.removeRedisKey(redisTemplate, record.getId() + KEY_PRCATEGORY);
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		// 逻辑操作
		int result = prCategoryMapper.updateByPrimaryKeySelective(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeySelective更新结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByPrimaryKey(java.
	 * lang.Object)
	 */
	@Override
	@CacheEvict(value = "PrCategory", key = "#record.id+'_key_prCategory'")
	public int updateByPrimaryKey(PrCategory record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKey更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKey更新对象为："
					+ record.toString());
		if ("".equals(record.getParentId())) {
			record.setParentId(null);
		}
		RedisUtil
				.removeRedisKey(redisTemplate, record.getId() + KEY_PRCATEGORY);
		RedisUtil.removeRedisKey(redisTemplate, KEY_TREEP_RCATEGORY);
		// 逻辑操作
		int result = prCategoryMapper.updateByPrimaryKey(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKey更新结束");
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#selectByPageInfo(java.lang.
	 * Object, com.github.pagehelper.PageInfo)
	 */
	@Transactional(readOnly = true)
	@Override
	public PageInfo<PrCategory> selectByPageInfo(Object example,
			PageInfo<PrCategory> pageInfo) {
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "分页开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "分页参数：" + pageInfo.toString());
		PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
		List<PrCategory> list = this.prCategoryMapper
				.selectByExample((PrCategoryCriteria) example);
		// if(logger.isInfoEnabled())
		// logger.info(MESSAGE+"分页开始");
		// if(logger.isInfoEnabled())
		// logger.info(MESSAGE+"分页参数：" + pageInfo.toString());

		PageInfo<PrCategory> page = new PageInfo<PrCategory>(list);
		pageInfo.setList(list);
		pageInfo.setTotal(page.getTotal());
		pageInfo.setEndRow(page.getEndRow());
		pageInfo.setStartRow(page.getStartRow());
		// if(logger.isInfoEnabled())
		// logger.info(MESSAGE+"分页结束");
		// return pageInfo;
		// pageInfo = super.selectByPageInfo(example, pageInfo);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "分页结束");
		return pageInfo;
	}

    @Override
	@Transactional(readOnly = true)
    @Cacheable(key = "key_TreeprCategory'", value = "TreePrCategory")
	public List<PrCategory> getTreeCategory(String parentId) {
		PrCategoryCriteria categoryCriteria = new PrCategoryCriteria();

		// 日志记录开始,方法开始
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "getTreeCategory开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "参数ID为：" + parentId);

		// 定义局部变量
		List<PrCategory> categories = new ArrayList<PrCategory>();
		PrCategoryCriteria prCategoryCriteria = new PrCategoryCriteria();
		Criteria criteria = prCategoryCriteria.createCriteria();
		// 业务操作开始
		if (null == parentId) {
			criteria.andParentIdIsNull();
		} else {
			criteria.andParentidsLike(parentId);
		}

		prCategoryCriteria.setOrderByClause("sort asc");

		List<PrCategory> list = prCategoryMapper
				.selectByExample(prCategoryCriteria);
		if (null == parentId) {
			for (PrCategory category : list) {
				PrCategoryCriteria orgCriteria = new PrCategoryCriteria();
				Criteria cri = prCategoryCriteria.createCriteria();
				cri.andParentidsLike("%" + category.getId() + "%");
				List<PrCategory> prCategories = prCategoryMapper
						.selectByExample(orgCriteria);
				categories.addAll(prCategories);
			}
		}

		TreeBuilder<PrCategory> tb = new TreeBuilder<PrCategory>();
		if (null == parentId) {
			categories = tb.buildListToTree(categories, false);
		} else {
			list = tb.buildListToTree(list, false);
		}

		// 业务操作结束

		// 日志记录结束,方法结束
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "getOrgCheckboxTree结束");

		return null == parentId ? categories : list;
	}

}
