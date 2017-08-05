package com.zwo.modules.mall.domain;

import java.io.Serializable;
import org.springframework.format.annotation.DateTimeFormat;

public class PrProductProperty implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product_property.ID
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product_property.NAME
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product_property.CODE
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    private String code;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product_property.DESCRIPTION
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product_property.PRODUCT_ID
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table pr_product_property
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product_property.ID
     *
     * @return the value of pr_product_property.ID
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product_property.ID
     *
     * @param id the value for pr_product_property.ID
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product_property.NAME
     *
     * @return the value of pr_product_property.NAME
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product_property.NAME
     *
     * @param name the value for pr_product_property.NAME
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product_property.CODE
     *
     * @return the value of pr_product_property.CODE
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product_property.CODE
     *
     * @param code the value for pr_product_property.CODE
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product_property.DESCRIPTION
     *
     * @return the value of pr_product_property.DESCRIPTION
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product_property.DESCRIPTION
     *
     * @param description the value for pr_product_property.DESCRIPTION
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product_property.PRODUCT_ID
     *
     * @return the value of pr_product_property.PRODUCT_ID
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product_property.PRODUCT_ID
     *
     * @param productId the value for pr_product_property.PRODUCT_ID
     *
     * @mbggenerated Sat Aug 05 10:56:51 CST 2017
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }
}