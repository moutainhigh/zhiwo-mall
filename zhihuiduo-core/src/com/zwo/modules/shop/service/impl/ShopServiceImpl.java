/**
 * 
 */
package com.zwo.modules.shop.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tk.mybatis.mapper.common.Mapper;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zwo.modules.mall.dao.PrProductMapper;
import com.zwo.modules.shop.dao.ShopMapper;
import com.zwo.modules.shop.domain.Shop;
import com.zwo.modules.shop.domain.ShopCriteria;
import com.zwo.modules.shop.domain.ShopWithBLOBs;
import com.zwo.modules.shop.service.IShopService;
import com.zwotech.common.utils.RedisUtil;
import com.zwotech.common.utils.SpringContextHolder;
import com.zwotech.modules.core.service.impl.BaseService;

/**
 * @author hjx
 *
 */
@Service
@Lazy(true)
@Transactional(readOnly = false)
public class ShopServiceImpl extends BaseService<Shop> implements IShopService {
	private static Logger logger = LoggerFactory.getLogger(ShopServiceImpl.class);

	private static final String BASE_MESSAGE = "【ShopServiceImpl服务类提供的基础操作增删改查等】";

	public static final String KEY_SHOP = "_key_shop";
	
	@Autowired
	@Lazy(true)
	private ShopMapper shopMapper;
	
	@Autowired
	@Lazy(true)
	private PrProductMapper productMapper;

	@SuppressWarnings("rawtypes")
	private RedisTemplate redisTemplate;
	
	@Override
	public Mapper<Shop> getBaseMapper() {
		return null;
	}

	public ShopServiceImpl() {
		super();
		if (redisTemplate == null) {
			if (SpringContextHolder.getApplicationContext().containsBean(
					"redisTemplate")) {
				redisTemplate = SpringContextHolder.getBean("redisTemplate");
			}
		}
	}
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#insertBatch(java.util.List)
	 */
	/*
	 * @Override public int insertBatch(List<Shop> list) { Auto-generated method
	 * stub return 0; }
	 */

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#deleteByExample(java.lang.
	 * Object)
	 */
	@Override
//	@CacheEvict(value = "Shop", allEntries = true)
	public int deleteByExample(Object example) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByExample批量删除开始");
		List<Shop> shops = this.selectByExample(example);
		for (Shop shop : shops) {
			RedisUtil.removeRedisKey(redisTemplate, shop.getId()+KEY_SHOP);
		}
		// 逻辑操作
		int result = shopMapper.deleteByExample((ShopCriteria) example);

		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByExample批量删除结束");
		return result;
	}

//	@CacheEvict(value = "Shop", allEntries = true)
	@Override
	public int deleteBatch(List<String> list) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteBatch批量删除开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteBatch批量删除ID为：" + list.toString());
		
		// 逻辑操作
		ShopCriteria shopCriteria = new ShopCriteria();
		shopCriteria.createCriteria().andIdIn(list);
		List<Shop> shops = this.selectByExample(shopCriteria);
		for (Shop shop : shops) {
			RedisUtil.removeRedisKey(redisTemplate, shop.getId()+KEY_SHOP);
		}
		int result = shopMapper.deleteByExample(shopCriteria);

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
	@CacheEvict(value = {"Shop","PrProducts"}, key = "#id+'_key_shop'")
	public int deleteByPrimaryKey(String id) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByPrimaryKey删除开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "deleteByPrimaryKey删除ID为：" + id.toString());

		// 逻辑操作
		int result = this.shopMapper.deleteByPrimaryKey(id);

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
	@Deprecated
	public int insert(Shop record) {
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#insertSelective(java.lang.
	 * Object)
	 */

	@Override
	@Deprecated
	public int insertSelective(Shop record) {
		return 0;
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
	public List<Shop> selectByExample(Object example) {
		return shopMapper.selectByExample((ShopCriteria) example);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#selectByPrimaryKey(java.
	 * lang.String)
	 */
	@Override
	@Transactional(readOnly = true)
	@Deprecated
	public Shop selectByPrimaryKey(String id) {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByExampleSelective(
	 * java.lang.Object, java.lang.Object)
	 */
	@Override
	@Deprecated
	public int updateByExampleSelective(Shop record, Object example) {
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByExample(java.lang.
	 * Object, java.lang.Object)
	 */
	@Override
	@Deprecated
	public int updateByExample(Shop record, Object example) {
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByPrimaryKeySelective
	 * (java.lang.Object)
	 */
	@Override
	@Deprecated
	public int updateByPrimaryKeySelective(Shop record) {
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.zwotech.modules.core.service.IBaseService#updateByPrimaryKey(java.
	 * lang.Object)
	 */
	@Override
	@CacheEvict(value = {"Shop"}, key = "#record.id+'_key_shop'")
	public int updateByPrimaryKey(Shop record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKey更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKey更新对象为：" + record.toString());

		// 逻辑操作
		int result = this.shopMapper.updateByPrimaryKey(record);
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
	public PageInfo<Shop> selectByPageInfo(Object example, PageInfo<Shop> pageInfo) {
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "分页开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "分页参数：" + pageInfo.toString());
		PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
		List<Shop> list = this.shopMapper.selectByExample((ShopCriteria) example);
		PageInfo<Shop> page = new PageInfo<Shop>(list);
		pageInfo.setList(list);
		pageInfo.setTotal(page.getTotal());
		pageInfo.setEndRow(page.getEndRow());
		pageInfo.setStartRow(page.getStartRow());
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "分页结束");
		return pageInfo;
	}


	@Override
	public int countByExample(ShopCriteria example) {
		return this.shopMapper.countByExample(example);
	}

	@CachePut(value = "Shop", key = "#record.id+'_key_shop'")
	@Override
	public int insert(ShopWithBLOBs record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入对象为：" + record.toString());

		// 如果数据没有设置id,默认使用时间戳
		if (null == record.getId() || "".equals(record.getId())) {
			record.setId(System.currentTimeMillis() + "" + Math.round(Math.random() * 99));
		}
		int result = this.shopMapper.insert(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入结束");
		return result;
	}

	@CachePut(value = "Shop", key = "#record.id+'_key_shop'")
	@Override
	public int insertSelective(ShopWithBLOBs record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入对象为：" + record.toString());

		// 如果数据没有设置id,默认使用时间戳
		if (null == record.getId() || "".equals(record.getId())) {
			record.setId(System.currentTimeMillis() + "" + Math.round(Math.random() * 99));
		}
		int result = this.shopMapper.insertSelective(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "insert插入结束");
		return result;
	}

	@Cacheable(key = "#id+'_key_shop'", value = "Shop")
	@Transactional(readOnly = true)
	@Override
	public ShopWithBLOBs selectByPrimKey(String id) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "selectByPrimaryKey查询开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "selectByPrimaryKey查询参数为：" + id);

		// 逻辑操作
		ShopWithBLOBs shop = this.shopMapper.selectByPrimaryKey(id);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "selectByPrimaryKey查询结束");
		return shop;
	}

	@Override
	@CacheEvict(value = {"Shop","PrProducts"}, allEntries = true)
	public int updateByExampleSelective(ShopWithBLOBs record, ShopCriteria example) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleSelective更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleSelective更新条件对象为：" + record.toString());

		// 逻辑操作
		int result = this.shopMapper.updateByExampleSelective(record, example);
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleSelective更新结束");
		return result;
	}

//	@CacheEvict(value = {"Shop"}, allEntries = true)
	@Override
	public int updateByExampleWithBLOBs(ShopWithBLOBs record, ShopCriteria example) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleWithBLOBs更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleWithBLOBs更新条件对象为：" + record.toString());
		List<Shop> shops = this.selectByExample(example);
		for (Shop shop : shops) {
			RedisUtil.removeRedisKey(redisTemplate, shop.getId()+KEY_SHOP);
		}
		// 逻辑操作
		int result = this.shopMapper.updateByExampleWithBLOBs(record, example);
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExampleWithBLOBs更新结束");
		return result;
	}

	@CacheEvict(value = {"Shop"}, allEntries = true)
	@Override
	public int updateByExample(Shop record, ShopCriteria example) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExample更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExample更新对象为：" + record.toString());
		List<Shop> shops = this.selectByExample(example);
		for (Shop shop : shops) {
			RedisUtil.removeRedisKey(redisTemplate, shop.getId()+KEY_SHOP);
		}
		// 逻辑操作
		int result = this.shopMapper.updateByExample(record, example);
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByExample更新结束");
		return result;
	}

	@CacheEvict(value = {"Shop"}, key = "#record.id+'_key_shop'")
	@Override
	public int updateByPrimaryKeySelective(ShopWithBLOBs record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeySelective更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeySelective更新对象为：" + record.toString());

		// 逻辑操作
		int result = this.shopMapper.updateByPrimaryKeySelective(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeySelective更新结束");
		return result;
	}

	@CacheEvict(value = "Shop", key = "#record.id+'_key_shop'")
	@Override
	public int updateByPrimaryKeyWithBLOBs(ShopWithBLOBs record) {
		// 日志记录
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeyWithBLOBs更新开始");
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeyWithBLOBs更新对象为：" + record.toString());

		// 逻辑操作
		int result = this.shopMapper.updateByPrimaryKeyWithBLOBs(record);
		if (logger.isInfoEnabled())
			logger.info(BASE_MESSAGE + "updateByPrimaryKeyWithBLOBs更新结束");
		return result;
	}

	@Override
	@Cacheable(value = "Shop", key = "#id+'_key_shop'")
	public ShopWithBLOBs selectByUserId(String id) {
		ShopCriteria shopCriteria = new ShopCriteria();
		shopCriteria.createCriteria().andUserIdEqualTo(id);
		List<Shop> list = this.shopMapper.selectByExample(shopCriteria);
		if(!list.isEmpty()){
			ShopWithBLOBs ShopWithBLOBs = this.selectByPrimKey(list.get(0).getId());
			return ShopWithBLOBs;
		}
		return null;
	}
	
	/**
	 * 移除key.
	 * @param key
	 */
	@SuppressWarnings("unchecked")
	private void removeRedisKey(String key){
		if (redisTemplate == null) {
			redisTemplate = SpringContextHolder
					.getBean("redisTemplate");
		}
		
		if (redisTemplate != null) {
			if (redisTemplate.hasKey(key)) {
				redisTemplate.delete(key);
			}
		}
	}
}
