package com.zwo.modules.system.domain;

import java.io.Serializable;
import java.util.Date;

public class Role implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.ID
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private String id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.NAME
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.CREATE_DATE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private Date createDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.UPDATE_DATE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private Date updateDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.ENABLED
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private Boolean enabled;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.CREATOR
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private String creator;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.UPDATER
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private String updater;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.SORT
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private Integer sort;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.ORG_ID
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private String orgId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_role.CODE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private String code;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table sys_role
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.ID
     *
     * @return the value of sys_role.ID
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.ID
     *
     * @param id the value for sys_role.ID
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.NAME
     *
     * @return the value of sys_role.NAME
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.NAME
     *
     * @param name the value for sys_role.NAME
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.CREATE_DATE
     *
     * @return the value of sys_role.CREATE_DATE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.CREATE_DATE
     *
     * @param createDate the value for sys_role.CREATE_DATE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.UPDATE_DATE
     *
     * @return the value of sys_role.UPDATE_DATE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.UPDATE_DATE
     *
     * @param updateDate the value for sys_role.UPDATE_DATE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.ENABLED
     *
     * @return the value of sys_role.ENABLED
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public Boolean getEnabled() {
        return enabled;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.ENABLED
     *
     * @param enabled the value for sys_role.ENABLED
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.CREATOR
     *
     * @return the value of sys_role.CREATOR
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public String getCreator() {
        return creator;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.CREATOR
     *
     * @param creator the value for sys_role.CREATOR
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.UPDATER
     *
     * @return the value of sys_role.UPDATER
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public String getUpdater() {
        return updater;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.UPDATER
     *
     * @param updater the value for sys_role.UPDATER
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setUpdater(String updater) {
        this.updater = updater == null ? null : updater.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.SORT
     *
     * @return the value of sys_role.SORT
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.SORT
     *
     * @param sort the value for sys_role.SORT
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.ORG_ID
     *
     * @return the value of sys_role.ORG_ID
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public String getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.ORG_ID
     *
     * @param orgId the value for sys_role.ORG_ID
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId == null ? null : orgId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_role.CODE
     *
     * @return the value of sys_role.CODE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_role.CODE
     *
     * @param code the value for sys_role.CODE
     *
     * @mbg.generated Mon Aug 27 16:43:03 CST 2018
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }
}