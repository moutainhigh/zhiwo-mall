package com.zwo.modules.system.domain;

import java.io.Serializable;

public class UserRole implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user_role.user_id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String userId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bhm_user_role.role_id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private String roleId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table bhm_user_role
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user_role.user_id
     *
     * @return the value of bhm_user_role.user_id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user_role.user_id
     *
     * @param userId the value for bhm_user_role.user_id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bhm_user_role.role_id
     *
     * @return the value of bhm_user_role.role_id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public String getRoleId() {
        return roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bhm_user_role.role_id
     *
     * @param roleId the value for bhm_user_role.role_id
     *
     * @mbg.generated Thu Sep 20 15:46:20 CST 2018
     */
    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }
}