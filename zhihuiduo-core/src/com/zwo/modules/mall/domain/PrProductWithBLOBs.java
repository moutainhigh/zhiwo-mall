package com.zwo.modules.mall.domain;

import java.io.Serializable;

public class PrProductWithBLOBs extends PrProduct implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.CONTENT
     *
     * @mbggenerated Fri Sep 01 14:34:38 CST 2017
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column pr_product.EN_CONTENT
     *
     * @mbggenerated Fri Sep 01 14:34:38 CST 2017
     */
    private String enContent;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table pr_product
     *
     * @mbggenerated Fri Sep 01 14:34:38 CST 2017
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.CONTENT
     *
     * @return the value of pr_product.CONTENT
     *
     * @mbggenerated Fri Sep 01 14:34:38 CST 2017
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.CONTENT
     *
     * @param content the value for pr_product.CONTENT
     *
     * @mbggenerated Fri Sep 01 14:34:38 CST 2017
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column pr_product.EN_CONTENT
     *
     * @return the value of pr_product.EN_CONTENT
     *
     * @mbggenerated Fri Sep 01 14:34:38 CST 2017
     */
    public String getEnContent() {
        return enContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column pr_product.EN_CONTENT
     *
     * @param enContent the value for pr_product.EN_CONTENT
     *
     * @mbggenerated Fri Sep 01 14:34:38 CST 2017
     */
    public void setEnContent(String enContent) {
        this.enContent = enContent == null ? null : enContent.trim();
    }
}