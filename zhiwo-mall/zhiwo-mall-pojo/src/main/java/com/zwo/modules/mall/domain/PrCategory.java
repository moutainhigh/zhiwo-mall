package com.zwo.modules.mall.domain;

import java.io.Serializable;
import java.util.Date;

import com.zwotech.modules.core.domain.Node;

public class PrCategory extends Node implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.CREATOR
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String creator;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.UPDATER
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String updater;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.ORG_ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String orgId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.CREATE_DATE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.UPDATE_DATE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private Date updateDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.DISABLE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private Boolean disable;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.START_TIME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private Date startTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.END_TIME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private Date endTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.SORT
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private Integer sort;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.IS_DEFAULT
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private Boolean isDefault;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.EN_NAME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String enName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.NAME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.DESCRIPTION
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.PARENT_ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String parentId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.PARENTIDS
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String parentids;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.ICON
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String icon;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.KEYWORDS
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String keywords;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.THUMBNAIL
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String thumbnail;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_category.CODE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private String code;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table pr_category
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.ID
     *
     * @return the value of pr_category.ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.ID
     *
     * @param id the value for pr_category.ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.CREATOR
     *
     * @return the value of pr_category.CREATOR
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getCreator() {
        return creator;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.CREATOR
     *
     * @param creator the value for pr_category.CREATOR
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.UPDATER
     *
     * @return the value of pr_category.UPDATER
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getUpdater() {
        return updater;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.UPDATER
     *
     * @param updater the value for pr_category.UPDATER
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setUpdater(String updater) {
        this.updater = updater == null ? null : updater.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.ORG_ID
     *
     * @return the value of pr_category.ORG_ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.ORG_ID
     *
     * @param orgId the value for pr_category.ORG_ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId == null ? null : orgId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.CREATE_DATE
     *
     * @return the value of pr_category.CREATE_DATE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.CREATE_DATE
     *
     * @param createDate the value for pr_category.CREATE_DATE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.UPDATE_DATE
     *
     * @return the value of pr_category.UPDATE_DATE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.UPDATE_DATE
     *
     * @param updateDate the value for pr_category.UPDATE_DATE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.DISABLE
     *
     * @return the value of pr_category.DISABLE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public Boolean getDisable() {
        return disable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.DISABLE
     *
     * @param disable the value for pr_category.DISABLE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setDisable(Boolean disable) {
        this.disable = disable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.START_TIME
     *
     * @return the value of pr_category.START_TIME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.START_TIME
     *
     * @param startTime the value for pr_category.START_TIME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.END_TIME
     *
     * @return the value of pr_category.END_TIME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.END_TIME
     *
     * @param endTime the value for pr_category.END_TIME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.SORT
     *
     * @return the value of pr_category.SORT
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public Integer getSort() {
        return sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.SORT
     *
     * @param sort the value for pr_category.SORT
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.IS_DEFAULT
     *
     * @return the value of pr_category.IS_DEFAULT
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public Boolean getIsDefault() {
        return isDefault;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.IS_DEFAULT
     *
     * @param isDefault the value for pr_category.IS_DEFAULT
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setIsDefault(Boolean isDefault) {
        this.isDefault = isDefault;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.EN_NAME
     *
     * @return the value of pr_category.EN_NAME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getEnName() {
        return enName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.EN_NAME
     *
     * @param enName the value for pr_category.EN_NAME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setEnName(String enName) {
        this.enName = enName == null ? null : enName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.NAME
     *
     * @return the value of pr_category.NAME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.NAME
     *
     * @param name the value for pr_category.NAME
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.DESCRIPTION
     *
     * @return the value of pr_category.DESCRIPTION
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.DESCRIPTION
     *
     * @param description the value for pr_category.DESCRIPTION
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.PARENT_ID
     *
     * @return the value of pr_category.PARENT_ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public String getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.PARENT_ID
     *
     * @param parentId the value for pr_category.PARENT_ID
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    @Override
    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.PARENTIDS
     *
     * @return the value of pr_category.PARENTIDS
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getParentids() {
        return parentids;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.PARENTIDS
     *
     * @param parentids the value for pr_category.PARENTIDS
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setParentids(String parentids) {
        this.parentids = parentids == null ? null : parentids.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.ICON
     *
     * @return the value of pr_category.ICON
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getIcon() {
        return icon;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.ICON
     *
     * @param icon the value for pr_category.ICON
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.KEYWORDS
     *
     * @return the value of pr_category.KEYWORDS
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getKeywords() {
        return keywords;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.KEYWORDS
     *
     * @param keywords the value for pr_category.KEYWORDS
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.THUMBNAIL
     *
     * @return the value of pr_category.THUMBNAIL
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getThumbnail() {
        return thumbnail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.THUMBNAIL
     *
     * @param thumbnail the value for pr_category.THUMBNAIL
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail == null ? null : thumbnail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_category.CODE
     *
     * @return the value of pr_category.CODE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_category.CODE
     *
     * @param code the value for pr_category.CODE
     *
     * @mbggenerated Thu Jun 15 11:20:36 CST 2017
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }
}