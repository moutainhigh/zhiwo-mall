package com.zwo.modules.mall.dao;

import com.zwo.modules.mall.domain.PrProduct;
import com.zwo.modules.mall.domain.PrProductCriteria;
import com.zwo.modules.mall.domain.PrProductWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PrProductMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int countByExample(PrProductCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int deleteByExample(PrProductCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int insert(PrProductWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int insertSelective(PrProductWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    List<PrProductWithBLOBs> selectByExampleWithBLOBs(PrProductCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    List<PrProduct> selectByExample(PrProductCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    PrProductWithBLOBs selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int updateByExampleSelective(@Param("record") PrProductWithBLOBs record, @Param("example") PrProductCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int updateByExampleWithBLOBs(@Param("record") PrProductWithBLOBs record, @Param("example") PrProductCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int updateByExample(@Param("record") PrProduct record, @Param("example") PrProductCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int updateByPrimaryKeySelective(PrProductWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int updateByPrimaryKeyWithBLOBs(PrProductWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table pr_product
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    int updateByPrimaryKey(PrProduct record);
    
    /**
     * 查询会员分销的商品。
     * @param memberId
     * @return
     */
    List<PrProduct> selectByMemberId(String memberId);
}