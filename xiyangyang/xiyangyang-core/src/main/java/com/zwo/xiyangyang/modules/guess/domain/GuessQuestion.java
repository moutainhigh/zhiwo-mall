package com.zwo.xiyangyang.modules.guess.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Transient;

import lombok.Data;

@Data
public class GuessQuestion implements Serializable {
	
	@Transient
	private GuessCategory guessCategory;
	@Transient
	private List<GuessOptions> guessOptions;
	
    public GuessCategory getGuessCategory() {
		return guessCategory;
	}

	public void setGuessCategory(GuessCategory guessCategory) {
		this.guessCategory = guessCategory;
	}

	public List<GuessOptions> getGuessOptions() {
		return guessOptions;
	}

	public void setGuessOptions(List<GuessOptions> guessOptions) {
		this.guessOptions = guessOptions;
	}

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.CREATOR
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String creator;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.UPDATER
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String updater;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.ORG_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String orgId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.CREATE_DATE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.UPDATE_DATE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Date updateDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.ENABLED
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Boolean enabled;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.START_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Date startTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.END_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Date endTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.SORT
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Integer sort;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.IS_DEFAULT
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Boolean isDefault;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.EN_NAME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String enName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.NAME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.DESCRIPTION
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.ICON
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String icon;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.KEYWORDS
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String keywords;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.THUMBNAIL
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String thumbnail;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.CODE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String code;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.USER_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.GUESS_CATEGORY_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String guessCategoryId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.GUESS_ANSWER_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private String guessAnswerId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.QUESTION_END_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Date questionEndTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column guess_question.CHECKED
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private Integer checked;

    private String parentId;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table guess_question
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.ID
     *
     * @return the value of guess_question.ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.ID
     *
     * @param id the value for guess_question.ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.CREATOR
     *
     * @return the value of guess_question.CREATOR
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getCreator() {
        return creator;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.CREATOR
     *
     * @param creator the value for guess_question.CREATOR
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.UPDATER
     *
     * @return the value of guess_question.UPDATER
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getUpdater() {
        return updater;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.UPDATER
     *
     * @param updater the value for guess_question.UPDATER
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setUpdater(String updater) {
        this.updater = updater == null ? null : updater.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.ORG_ID
     *
     * @return the value of guess_question.ORG_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getOrgId() {
        return orgId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.ORG_ID
     *
     * @param orgId the value for guess_question.ORG_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId == null ? null : orgId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.CREATE_DATE
     *
     * @return the value of guess_question.CREATE_DATE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.CREATE_DATE
     *
     * @param createDate the value for guess_question.CREATE_DATE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.UPDATE_DATE
     *
     * @return the value of guess_question.UPDATE_DATE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.UPDATE_DATE
     *
     * @param updateDate the value for guess_question.UPDATE_DATE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.ENABLED
     *
     * @return the value of guess_question.ENABLED
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Boolean getEnabled() {
        return enabled;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.ENABLED
     *
     * @param enabled the value for guess_question.ENABLED
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.START_TIME
     *
     * @return the value of guess_question.START_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.START_TIME
     *
     * @param startTime the value for guess_question.START_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.END_TIME
     *
     * @return the value of guess_question.END_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.END_TIME
     *
     * @param endTime the value for guess_question.END_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.SORT
     *
     * @return the value of guess_question.SORT
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.SORT
     *
     * @param sort the value for guess_question.SORT
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.IS_DEFAULT
     *
     * @return the value of guess_question.IS_DEFAULT
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Boolean getIsDefault() {
        return isDefault;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.IS_DEFAULT
     *
     * @param isDefault the value for guess_question.IS_DEFAULT
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setIsDefault(Boolean isDefault) {
        this.isDefault = isDefault;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.EN_NAME
     *
     * @return the value of guess_question.EN_NAME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getEnName() {
        return enName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.EN_NAME
     *
     * @param enName the value for guess_question.EN_NAME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setEnName(String enName) {
        this.enName = enName == null ? null : enName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.NAME
     *
     * @return the value of guess_question.NAME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.NAME
     *
     * @param name the value for guess_question.NAME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.DESCRIPTION
     *
     * @return the value of guess_question.DESCRIPTION
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.DESCRIPTION
     *
     * @param description the value for guess_question.DESCRIPTION
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.ICON
     *
     * @return the value of guess_question.ICON
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getIcon() {
        return icon;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.ICON
     *
     * @param icon the value for guess_question.ICON
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.KEYWORDS
     *
     * @return the value of guess_question.KEYWORDS
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getKeywords() {
        return keywords;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.KEYWORDS
     *
     * @param keywords the value for guess_question.KEYWORDS
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.THUMBNAIL
     *
     * @return the value of guess_question.THUMBNAIL
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getThumbnail() {
        return thumbnail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.THUMBNAIL
     *
     * @param thumbnail the value for guess_question.THUMBNAIL
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail == null ? null : thumbnail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.CODE
     *
     * @return the value of guess_question.CODE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.CODE
     *
     * @param code the value for guess_question.CODE
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.USER_ID
     *
     * @return the value of guess_question.USER_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.USER_ID
     *
     * @param userId the value for guess_question.USER_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.GUESS_CATEGORY_ID
     *
     * @return the value of guess_question.GUESS_CATEGORY_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getGuessCategoryId() {
        return guessCategoryId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.GUESS_CATEGORY_ID
     *
     * @param guessCategoryId the value for guess_question.GUESS_CATEGORY_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setGuessCategoryId(String guessCategoryId) {
        this.guessCategoryId = guessCategoryId == null ? null : guessCategoryId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.GUESS_ANSWER_ID
     *
     * @return the value of guess_question.GUESS_ANSWER_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public String getGuessAnswerId() {
        return guessAnswerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.GUESS_ANSWER_ID
     *
     * @param guessAnswerId the value for guess_question.GUESS_ANSWER_ID
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setGuessAnswerId(String guessAnswerId) {
        this.guessAnswerId = guessAnswerId == null ? null : guessAnswerId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.QUESTION_END_TIME
     *
     * @return the value of guess_question.QUESTION_END_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Date getQuestionEndTime() {
        return questionEndTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.QUESTION_END_TIME
     *
     * @param questionEndTime the value for guess_question.QUESTION_END_TIME
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setQuestionEndTime(Date questionEndTime) {
        this.questionEndTime = questionEndTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column guess_question.CHECKED
     *
     * @return the value of guess_question.CHECKED
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public Integer getChecked() {
        return checked;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column guess_question.CHECKED
     *
     * @param checked the value for guess_question.CHECKED
     *
     * @mbggenerated Mon Mar 26 14:23:06 CST 2018
     */
    public void setChecked(Integer checked) {
        this.checked = checked;
    }

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
}