package com.zwo.modules.mall.domain;

import java.io.Serializable;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class PrProduct implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.CREATOR
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String creator;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.ORG_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String orgId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.UPDATER
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String updater;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.CREATE_DATE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.UPDATE_DATE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Date updateDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.DISABLE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Boolean disable;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.START_TIME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Date startTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.END_TIME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Date endTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.SORT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Integer sort;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.IS_DEFAULT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Boolean isDefault;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.EN_NAME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String enName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.NAME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.DESCRIPTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.ICON
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String icon;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.KEYWORDS
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String keywords;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.THUMBNAIL
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String thumbnail;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.CODE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String code;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.CATEGORY_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String categoryId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.ALLOW_DISTRIBUTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Boolean allowDistribution;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.DISTRIBUTION_VALUE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Double distributionValue;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.SHOP_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String shopId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.USER_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.PURCHASING_COST
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Double purchasingCost;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.DIST_INTRUEDUTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String distIntruedution;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.SUPPLIER_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String supplierId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.GOURP_SALE_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Double gourpSalePrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.INDEPENDENT_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Double independentPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.NUMBER_COUNT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Integer numberCount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.AUDIT_DESCRIPTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String auditDescription;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.STORAGE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Integer storage;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.STATUS
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private String status;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.MARKET_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private Double marketPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table pr_product
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.ID
     *
     * @return the value of pr_product.ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.ID
     *
     * @param id the value for pr_product.ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.CREATOR
     *
     * @return the value of pr_product.CREATOR
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getCreator() {
        return creator;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.CREATOR
     *
     * @param creator the value for pr_product.CREATOR
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.ORG_ID
     *
     * @return the value of pr_product.ORG_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.ORG_ID
     *
     * @param orgId the value for pr_product.ORG_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId == null ? null : orgId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.UPDATER
     *
     * @return the value of pr_product.UPDATER
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getUpdater() {
        return updater;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.UPDATER
     *
     * @param updater the value for pr_product.UPDATER
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setUpdater(String updater) {
        this.updater = updater == null ? null : updater.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.CREATE_DATE
     *
     * @return the value of pr_product.CREATE_DATE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.CREATE_DATE
     *
     * @param createDate the value for pr_product.CREATE_DATE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.UPDATE_DATE
     *
     * @return the value of pr_product.UPDATE_DATE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.UPDATE_DATE
     *
     * @param updateDate the value for pr_product.UPDATE_DATE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.DISABLE
     *
     * @return the value of pr_product.DISABLE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Boolean getDisable() {
        return disable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.DISABLE
     *
     * @param disable the value for pr_product.DISABLE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setDisable(Boolean disable) {
        this.disable = disable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.START_TIME
     *
     * @return the value of pr_product.START_TIME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.START_TIME
     *
     * @param startTime the value for pr_product.START_TIME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.END_TIME
     *
     * @return the value of pr_product.END_TIME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.END_TIME
     *
     * @param endTime the value for pr_product.END_TIME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.SORT
     *
     * @return the value of pr_product.SORT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.SORT
     *
     * @param sort the value for pr_product.SORT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.IS_DEFAULT
     *
     * @return the value of pr_product.IS_DEFAULT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Boolean getIsDefault() {
        return isDefault;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.IS_DEFAULT
     *
     * @param isDefault the value for pr_product.IS_DEFAULT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setIsDefault(Boolean isDefault) {
        this.isDefault = isDefault;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.EN_NAME
     *
     * @return the value of pr_product.EN_NAME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getEnName() {
        return enName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.EN_NAME
     *
     * @param enName the value for pr_product.EN_NAME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setEnName(String enName) {
        this.enName = enName == null ? null : enName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.NAME
     *
     * @return the value of pr_product.NAME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.NAME
     *
     * @param name the value for pr_product.NAME
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.DESCRIPTION
     *
     * @return the value of pr_product.DESCRIPTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.DESCRIPTION
     *
     * @param description the value for pr_product.DESCRIPTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.ICON
     *
     * @return the value of pr_product.ICON
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getIcon() {
        return icon;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.ICON
     *
     * @param icon the value for pr_product.ICON
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.KEYWORDS
     *
     * @return the value of pr_product.KEYWORDS
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getKeywords() {
        return keywords;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.KEYWORDS
     *
     * @param keywords the value for pr_product.KEYWORDS
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.THUMBNAIL
     *
     * @return the value of pr_product.THUMBNAIL
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getThumbnail() {
        return thumbnail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.THUMBNAIL
     *
     * @param thumbnail the value for pr_product.THUMBNAIL
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail == null ? null : thumbnail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.CODE
     *
     * @return the value of pr_product.CODE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.CODE
     *
     * @param code the value for pr_product.CODE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.CATEGORY_ID
     *
     * @return the value of pr_product.CATEGORY_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getCategoryId() {
        return categoryId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.CATEGORY_ID
     *
     * @param categoryId the value for pr_product.CATEGORY_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId == null ? null : categoryId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.ALLOW_DISTRIBUTION
     *
     * @return the value of pr_product.ALLOW_DISTRIBUTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Boolean getAllowDistribution() {
        return allowDistribution;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.ALLOW_DISTRIBUTION
     *
     * @param allowDistribution the value for pr_product.ALLOW_DISTRIBUTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setAllowDistribution(Boolean allowDistribution) {
        this.allowDistribution = allowDistribution;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.DISTRIBUTION_VALUE
     *
     * @return the value of pr_product.DISTRIBUTION_VALUE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Double getDistributionValue() {
        return distributionValue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.DISTRIBUTION_VALUE
     *
     * @param distributionValue the value for pr_product.DISTRIBUTION_VALUE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setDistributionValue(Double distributionValue) {
        this.distributionValue = distributionValue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.SHOP_ID
     *
     * @return the value of pr_product.SHOP_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getShopId() {
        return shopId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.SHOP_ID
     *
     * @param shopId the value for pr_product.SHOP_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setShopId(String shopId) {
        this.shopId = shopId == null ? null : shopId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.USER_ID
     *
     * @return the value of pr_product.USER_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.USER_ID
     *
     * @param userId the value for pr_product.USER_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.PURCHASING_COST
     *
     * @return the value of pr_product.PURCHASING_COST
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Double getPurchasingCost() {
        return purchasingCost;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.PURCHASING_COST
     *
     * @param purchasingCost the value for pr_product.PURCHASING_COST
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setPurchasingCost(Double purchasingCost) {
        this.purchasingCost = purchasingCost;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.DIST_INTRUEDUTION
     *
     * @return the value of pr_product.DIST_INTRUEDUTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getDistIntruedution() {
        return distIntruedution;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.DIST_INTRUEDUTION
     *
     * @param distIntruedution the value for pr_product.DIST_INTRUEDUTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setDistIntruedution(String distIntruedution) {
        this.distIntruedution = distIntruedution == null ? null : distIntruedution.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.SUPPLIER_ID
     *
     * @return the value of pr_product.SUPPLIER_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getSupplierId() {
        return supplierId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.SUPPLIER_ID
     *
     * @param supplierId the value for pr_product.SUPPLIER_ID
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId == null ? null : supplierId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.GOURP_SALE_PRICE
     *
     * @return the value of pr_product.GOURP_SALE_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Double getGourpSalePrice() {
        return gourpSalePrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.GOURP_SALE_PRICE
     *
     * @param gourpSalePrice the value for pr_product.GOURP_SALE_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setGourpSalePrice(Double gourpSalePrice) {
        this.gourpSalePrice = gourpSalePrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.INDEPENDENT_PRICE
     *
     * @return the value of pr_product.INDEPENDENT_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Double getIndependentPrice() {
        return independentPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.INDEPENDENT_PRICE
     *
     * @param independentPrice the value for pr_product.INDEPENDENT_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setIndependentPrice(Double independentPrice) {
        this.independentPrice = independentPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.NUMBER_COUNT
     *
     * @return the value of pr_product.NUMBER_COUNT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Integer getNumberCount() {
        return numberCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.NUMBER_COUNT
     *
     * @param numberCount the value for pr_product.NUMBER_COUNT
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setNumberCount(Integer numberCount) {
        this.numberCount = numberCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.AUDIT_DESCRIPTION
     *
     * @return the value of pr_product.AUDIT_DESCRIPTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getAuditDescription() {
        return auditDescription;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.AUDIT_DESCRIPTION
     *
     * @param auditDescription the value for pr_product.AUDIT_DESCRIPTION
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setAuditDescription(String auditDescription) {
        this.auditDescription = auditDescription == null ? null : auditDescription.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.STORAGE
     *
     * @return the value of pr_product.STORAGE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Integer getStorage() {
        return storage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.STORAGE
     *
     * @param storage the value for pr_product.STORAGE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setStorage(Integer storage) {
        this.storage = storage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.STATUS
     *
     * @return the value of pr_product.STATUS
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.STATUS
     *
     * @param status the value for pr_product.STATUS
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.MARKET_PRICE
     *
     * @return the value of pr_product.MARKET_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public Double getMarketPrice() {
        return marketPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.MARKET_PRICE
     *
     * @param marketPrice the value for pr_product.MARKET_PRICE
     *
     * @mbggenerated Sat Sep 02 10:47:06 CST 2017
     */
    public void setMarketPrice(Double marketPrice) {
        this.marketPrice = marketPrice;
    }
}