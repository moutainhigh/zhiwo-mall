package com.zwo.modules.system.domain;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.username
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String username;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.password
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String password;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.is_valid
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String isValid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.sort_index
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private Integer sortIndex;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.add_time
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private Date addTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.edit_time
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private Date editTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.email
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String email;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.real_name
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String realName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.salt
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String salt;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.add_by
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String addBy;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.edit_by
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String editBy;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.descrtion
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String descrtion;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user.enabled
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private Byte enabled;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table bhm_user
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.id
     *
     * @return the value of bhm_user.id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.id
     *
     * @param id the value for bhm_user.id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.username
     *
     * @return the value of bhm_user.username
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.username
     *
     * @param username the value for bhm_user.username
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.password
     *
     * @return the value of bhm_user.password
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.password
     *
     * @param password the value for bhm_user.password
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.is_valid
     *
     * @return the value of bhm_user.is_valid
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getIsValid() {
        return isValid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.is_valid
     *
     * @param isValid the value for bhm_user.is_valid
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setIsValid(String isValid) {
        this.isValid = isValid == null ? null : isValid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.sort_index
     *
     * @return the value of bhm_user.sort_index
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public Integer getSortIndex() {
        return sortIndex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.sort_index
     *
     * @param sortIndex the value for bhm_user.sort_index
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setSortIndex(Integer sortIndex) {
        this.sortIndex = sortIndex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.add_time
     *
     * @return the value of bhm_user.add_time
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public Date getAddTime() {
        return addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.add_time
     *
     * @param addTime the value for bhm_user.add_time
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.edit_time
     *
     * @return the value of bhm_user.edit_time
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public Date getEditTime() {
        return editTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.edit_time
     *
     * @param editTime the value for bhm_user.edit_time
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setEditTime(Date editTime) {
        this.editTime = editTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.email
     *
     * @return the value of bhm_user.email
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.email
     *
     * @param email the value for bhm_user.email
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.real_name
     *
     * @return the value of bhm_user.real_name
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getRealName() {
        return realName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.real_name
     *
     * @param realName the value for bhm_user.real_name
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setRealName(String realName) {
        this.realName = realName == null ? null : realName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.salt
     *
     * @return the value of bhm_user.salt
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getSalt() {
        return salt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.salt
     *
     * @param salt the value for bhm_user.salt
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.add_by
     *
     * @return the value of bhm_user.add_by
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getAddBy() {
        return addBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.add_by
     *
     * @param addBy the value for bhm_user.add_by
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setAddBy(String addBy) {
        this.addBy = addBy == null ? null : addBy.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.edit_by
     *
     * @return the value of bhm_user.edit_by
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getEditBy() {
        return editBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.edit_by
     *
     * @param editBy the value for bhm_user.edit_by
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setEditBy(String editBy) {
        this.editBy = editBy == null ? null : editBy.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.descrtion
     *
     * @return the value of bhm_user.descrtion
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getDescrtion() {
        return descrtion;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.descrtion
     *
     * @param descrtion the value for bhm_user.descrtion
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setDescrtion(String descrtion) {
        this.descrtion = descrtion == null ? null : descrtion.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user.enabled
     *
     * @return the value of bhm_user.enabled
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public Byte getEnabled() {
        return enabled;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user.enabled
     *
     * @param enabled the value for bhm_user.enabled
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setEnabled(Byte enabled) {
        this.enabled = enabled;
    }
}