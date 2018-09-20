package com.zwo.modules.system.domain;

import java.io.Serializable;
import java.util.Date;

public class Resource implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.id
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.name
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.sort_index
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private Integer sortIndex;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.add_time
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private Date addTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.edit_time
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private Date editTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.salt
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String salt;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.add_by
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String addBy;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.edit_by
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String editBy;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.descrtion
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String descrtion;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.type
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private Integer type;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.is_valid
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private Byte isValid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.code
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String code;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.parent_id
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private String parentId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_resource.level
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private Integer level;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table bhm_resource
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.id
     *
     * @return the value of bhm_resource.id
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.id
     *
     * @param id the value for bhm_resource.id
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.name
     *
     * @return the value of bhm_resource.name
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.name
     *
     * @param name the value for bhm_resource.name
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.sort_index
     *
     * @return the value of bhm_resource.sort_index
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public Integer getSortIndex() {
        return sortIndex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.sort_index
     *
     * @param sortIndex the value for bhm_resource.sort_index
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setSortIndex(Integer sortIndex) {
        this.sortIndex = sortIndex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.add_time
     *
     * @return the value of bhm_resource.add_time
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public Date getAddTime() {
        return addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.add_time
     *
     * @param addTime the value for bhm_resource.add_time
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.edit_time
     *
     * @return the value of bhm_resource.edit_time
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public Date getEditTime() {
        return editTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.edit_time
     *
     * @param editTime the value for bhm_resource.edit_time
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setEditTime(Date editTime) {
        this.editTime = editTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.salt
     *
     * @return the value of bhm_resource.salt
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getSalt() {
        return salt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.salt
     *
     * @param salt the value for bhm_resource.salt
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.add_by
     *
     * @return the value of bhm_resource.add_by
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getAddBy() {
        return addBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.add_by
     *
     * @param addBy the value for bhm_resource.add_by
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setAddBy(String addBy) {
        this.addBy = addBy == null ? null : addBy.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.edit_by
     *
     * @return the value of bhm_resource.edit_by
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getEditBy() {
        return editBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.edit_by
     *
     * @param editBy the value for bhm_resource.edit_by
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setEditBy(String editBy) {
        this.editBy = editBy == null ? null : editBy.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.descrtion
     *
     * @return the value of bhm_resource.descrtion
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getDescrtion() {
        return descrtion;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.descrtion
     *
     * @param descrtion the value for bhm_resource.descrtion
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setDescrtion(String descrtion) {
        this.descrtion = descrtion == null ? null : descrtion.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.type
     *
     * @return the value of bhm_resource.type
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public Integer getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.type
     *
     * @param type the value for bhm_resource.type
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.is_valid
     *
     * @return the value of bhm_resource.is_valid
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public Byte getIsValid() {
        return isValid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.is_valid
     *
     * @param isValid the value for bhm_resource.is_valid
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setIsValid(Byte isValid) {
        this.isValid = isValid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.code
     *
     * @return the value of bhm_resource.code
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.code
     *
     * @param code the value for bhm_resource.code
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.parent_id
     *
     * @return the value of bhm_resource.parent_id
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.parent_id
     *
     * @param parentId the value for bhm_resource.parent_id
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_resource.level
     *
     * @return the value of bhm_resource.level
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public Integer getLevel() {
        return level;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_resource.level
     *
     * @param level the value for bhm_resource.level
     *
     * @mbg.generated Thu Sep 20 15:54:32 CST 2018
     */
    public void setLevel(Integer level) {
        this.level = level;
    }
}