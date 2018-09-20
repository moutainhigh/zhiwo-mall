package com.zwo.modules.system.mapper;

import com.zwo.modules.system.domain.Resource;
import com.zwo.modules.system.domain.ResourceCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ResourceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    long countByExample(ResourceCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int deleteByExample(ResourceCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int insert(Resource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int insertSelective(Resource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    List<Resource> selectByExample(ResourceCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    Resource selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int updateByExampleSelective(@Param("record") Resource record, @Param("example") ResourceCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int updateByExample(@Param("record") Resource record, @Param("example") ResourceCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int updateByPrimaryKeySelective(Resource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    int updateByPrimaryKey(Resource record);
}