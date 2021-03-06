package com.zwo.modules.cms.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CmsDocumentCriteria {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CmsDocumentCriteria() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("ID like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("ID not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("NAME is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("NAME is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("NAME =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("NAME <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("NAME >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("NAME >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("NAME <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("NAME <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("NAME like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("NAME not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("NAME in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("NAME not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("NAME between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("NAME not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("USER_ID is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("USER_ID is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(String value) {
            addCriterion("USER_ID =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(String value) {
            addCriterion("USER_ID <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(String value) {
            addCriterion("USER_ID >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("USER_ID >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(String value) {
            addCriterion("USER_ID <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(String value) {
            addCriterion("USER_ID <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLike(String value) {
            addCriterion("USER_ID like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotLike(String value) {
            addCriterion("USER_ID not like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<String> values) {
            addCriterion("USER_ID in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<String> values) {
            addCriterion("USER_ID not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(String value1, String value2) {
            addCriterion("USER_ID between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(String value1, String value2) {
            addCriterion("USER_ID not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNull() {
            addCriterion("CREATE_DATE is null");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNotNull() {
            addCriterion("CREATE_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andCreateDateEqualTo(Date value) {
            addCriterion("CREATE_DATE =", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotEqualTo(Date value) {
            addCriterion("CREATE_DATE <>", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThan(Date value) {
            addCriterion("CREATE_DATE >", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThanOrEqualTo(Date value) {
            addCriterion("CREATE_DATE >=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThan(Date value) {
            addCriterion("CREATE_DATE <", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThanOrEqualTo(Date value) {
            addCriterion("CREATE_DATE <=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateIn(List<Date> values) {
            addCriterion("CREATE_DATE in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotIn(List<Date> values) {
            addCriterion("CREATE_DATE not in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateBetween(Date value1, Date value2) {
            addCriterion("CREATE_DATE between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotBetween(Date value1, Date value2) {
            addCriterion("CREATE_DATE not between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateIsNull() {
            addCriterion("UPDATE_DATE is null");
            return (Criteria) this;
        }

        public Criteria andUpdateDateIsNotNull() {
            addCriterion("UPDATE_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateDateEqualTo(Date value) {
            addCriterion("UPDATE_DATE =", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateNotEqualTo(Date value) {
            addCriterion("UPDATE_DATE <>", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateGreaterThan(Date value) {
            addCriterion("UPDATE_DATE >", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateGreaterThanOrEqualTo(Date value) {
            addCriterion("UPDATE_DATE >=", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateLessThan(Date value) {
            addCriterion("UPDATE_DATE <", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateLessThanOrEqualTo(Date value) {
            addCriterion("UPDATE_DATE <=", value, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateIn(List<Date> values) {
            addCriterion("UPDATE_DATE in", values, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateNotIn(List<Date> values) {
            addCriterion("UPDATE_DATE not in", values, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateBetween(Date value1, Date value2) {
            addCriterion("UPDATE_DATE between", value1, value2, "updateDate");
            return (Criteria) this;
        }

        public Criteria andUpdateDateNotBetween(Date value1, Date value2) {
            addCriterion("UPDATE_DATE not between", value1, value2, "updateDate");
            return (Criteria) this;
        }

        public Criteria andIsTooicIsNull() {
            addCriterion("IS_TOOIC is null");
            return (Criteria) this;
        }

        public Criteria andIsTooicIsNotNull() {
            addCriterion("IS_TOOIC is not null");
            return (Criteria) this;
        }

        public Criteria andIsTooicEqualTo(Boolean value) {
            addCriterion("IS_TOOIC =", value, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicNotEqualTo(Boolean value) {
            addCriterion("IS_TOOIC <>", value, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicGreaterThan(Boolean value) {
            addCriterion("IS_TOOIC >", value, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicGreaterThanOrEqualTo(Boolean value) {
            addCriterion("IS_TOOIC >=", value, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicLessThan(Boolean value) {
            addCriterion("IS_TOOIC <", value, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicLessThanOrEqualTo(Boolean value) {
            addCriterion("IS_TOOIC <=", value, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicIn(List<Boolean> values) {
            addCriterion("IS_TOOIC in", values, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicNotIn(List<Boolean> values) {
            addCriterion("IS_TOOIC not in", values, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicBetween(Boolean value1, Boolean value2) {
            addCriterion("IS_TOOIC between", value1, value2, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsTooicNotBetween(Boolean value1, Boolean value2) {
            addCriterion("IS_TOOIC not between", value1, value2, "isTooic");
            return (Criteria) this;
        }

        public Criteria andIsDisableIsNull() {
            addCriterion("IS_DISABLE is null");
            return (Criteria) this;
        }

        public Criteria andIsDisableIsNotNull() {
            addCriterion("IS_DISABLE is not null");
            return (Criteria) this;
        }

        public Criteria andIsDisableEqualTo(Boolean value) {
            addCriterion("IS_DISABLE =", value, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableNotEqualTo(Boolean value) {
            addCriterion("IS_DISABLE <>", value, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableGreaterThan(Boolean value) {
            addCriterion("IS_DISABLE >", value, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableGreaterThanOrEqualTo(Boolean value) {
            addCriterion("IS_DISABLE >=", value, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableLessThan(Boolean value) {
            addCriterion("IS_DISABLE <", value, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableLessThanOrEqualTo(Boolean value) {
            addCriterion("IS_DISABLE <=", value, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableIn(List<Boolean> values) {
            addCriterion("IS_DISABLE in", values, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableNotIn(List<Boolean> values) {
            addCriterion("IS_DISABLE not in", values, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableBetween(Boolean value1, Boolean value2) {
            addCriterion("IS_DISABLE between", value1, value2, "isDisable");
            return (Criteria) this;
        }

        public Criteria andIsDisableNotBetween(Boolean value1, Boolean value2) {
            addCriterion("IS_DISABLE not between", value1, value2, "isDisable");
            return (Criteria) this;
        }

        public Criteria andCreatorIsNull() {
            addCriterion("CREATOR is null");
            return (Criteria) this;
        }

        public Criteria andCreatorIsNotNull() {
            addCriterion("CREATOR is not null");
            return (Criteria) this;
        }

        public Criteria andCreatorEqualTo(String value) {
            addCriterion("CREATOR =", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorNotEqualTo(String value) {
            addCriterion("CREATOR <>", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorGreaterThan(String value) {
            addCriterion("CREATOR >", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorGreaterThanOrEqualTo(String value) {
            addCriterion("CREATOR >=", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorLessThan(String value) {
            addCriterion("CREATOR <", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorLessThanOrEqualTo(String value) {
            addCriterion("CREATOR <=", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorLike(String value) {
            addCriterion("CREATOR like", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorNotLike(String value) {
            addCriterion("CREATOR not like", value, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorIn(List<String> values) {
            addCriterion("CREATOR in", values, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorNotIn(List<String> values) {
            addCriterion("CREATOR not in", values, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorBetween(String value1, String value2) {
            addCriterion("CREATOR between", value1, value2, "creator");
            return (Criteria) this;
        }

        public Criteria andCreatorNotBetween(String value1, String value2) {
            addCriterion("CREATOR not between", value1, value2, "creator");
            return (Criteria) this;
        }

        public Criteria andUpdaterIsNull() {
            addCriterion("UPDATER is null");
            return (Criteria) this;
        }

        public Criteria andUpdaterIsNotNull() {
            addCriterion("UPDATER is not null");
            return (Criteria) this;
        }

        public Criteria andUpdaterEqualTo(String value) {
            addCriterion("UPDATER =", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterNotEqualTo(String value) {
            addCriterion("UPDATER <>", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterGreaterThan(String value) {
            addCriterion("UPDATER >", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterGreaterThanOrEqualTo(String value) {
            addCriterion("UPDATER >=", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterLessThan(String value) {
            addCriterion("UPDATER <", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterLessThanOrEqualTo(String value) {
            addCriterion("UPDATER <=", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterLike(String value) {
            addCriterion("UPDATER like", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterNotLike(String value) {
            addCriterion("UPDATER not like", value, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterIn(List<String> values) {
            addCriterion("UPDATER in", values, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterNotIn(List<String> values) {
            addCriterion("UPDATER not in", values, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterBetween(String value1, String value2) {
            addCriterion("UPDATER between", value1, value2, "updater");
            return (Criteria) this;
        }

        public Criteria andUpdaterNotBetween(String value1, String value2) {
            addCriterion("UPDATER not between", value1, value2, "updater");
            return (Criteria) this;
        }

        public Criteria andPathIsNull() {
            addCriterion("PATH is null");
            return (Criteria) this;
        }

        public Criteria andPathIsNotNull() {
            addCriterion("PATH is not null");
            return (Criteria) this;
        }

        public Criteria andPathEqualTo(String value) {
            addCriterion("PATH =", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathNotEqualTo(String value) {
            addCriterion("PATH <>", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathGreaterThan(String value) {
            addCriterion("PATH >", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathGreaterThanOrEqualTo(String value) {
            addCriterion("PATH >=", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathLessThan(String value) {
            addCriterion("PATH <", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathLessThanOrEqualTo(String value) {
            addCriterion("PATH <=", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathLike(String value) {
            addCriterion("PATH like", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathNotLike(String value) {
            addCriterion("PATH not like", value, "path");
            return (Criteria) this;
        }

        public Criteria andPathIn(List<String> values) {
            addCriterion("PATH in", values, "path");
            return (Criteria) this;
        }

        public Criteria andPathNotIn(List<String> values) {
            addCriterion("PATH not in", values, "path");
            return (Criteria) this;
        }

        public Criteria andPathBetween(String value1, String value2) {
            addCriterion("PATH between", value1, value2, "path");
            return (Criteria) this;
        }

        public Criteria andPathNotBetween(String value1, String value2) {
            addCriterion("PATH not between", value1, value2, "path");
            return (Criteria) this;
        }

        public Criteria andIconIsNull() {
            addCriterion("ICON is null");
            return (Criteria) this;
        }

        public Criteria andIconIsNotNull() {
            addCriterion("ICON is not null");
            return (Criteria) this;
        }

        public Criteria andIconEqualTo(String value) {
            addCriterion("ICON =", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotEqualTo(String value) {
            addCriterion("ICON <>", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconGreaterThan(String value) {
            addCriterion("ICON >", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconGreaterThanOrEqualTo(String value) {
            addCriterion("ICON >=", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconLessThan(String value) {
            addCriterion("ICON <", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconLessThanOrEqualTo(String value) {
            addCriterion("ICON <=", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconLike(String value) {
            addCriterion("ICON like", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotLike(String value) {
            addCriterion("ICON not like", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconIn(List<String> values) {
            addCriterion("ICON in", values, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotIn(List<String> values) {
            addCriterion("ICON not in", values, "icon");
            return (Criteria) this;
        }

        public Criteria andIconBetween(String value1, String value2) {
            addCriterion("ICON between", value1, value2, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotBetween(String value1, String value2) {
            addCriterion("ICON not between", value1, value2, "icon");
            return (Criteria) this;
        }

        public Criteria andCodeIsNull() {
            addCriterion("CODE is null");
            return (Criteria) this;
        }

        public Criteria andCodeIsNotNull() {
            addCriterion("CODE is not null");
            return (Criteria) this;
        }

        public Criteria andCodeEqualTo(String value) {
            addCriterion("CODE =", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotEqualTo(String value) {
            addCriterion("CODE <>", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeGreaterThan(String value) {
            addCriterion("CODE >", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeGreaterThanOrEqualTo(String value) {
            addCriterion("CODE >=", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLessThan(String value) {
            addCriterion("CODE <", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLessThanOrEqualTo(String value) {
            addCriterion("CODE <=", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLike(String value) {
            addCriterion("CODE like", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotLike(String value) {
            addCriterion("CODE not like", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeIn(List<String> values) {
            addCriterion("CODE in", values, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotIn(List<String> values) {
            addCriterion("CODE not in", values, "code");
            return (Criteria) this;
        }

        public Criteria andCodeBetween(String value1, String value2) {
            addCriterion("CODE between", value1, value2, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotBetween(String value1, String value2) {
            addCriterion("CODE not between", value1, value2, "code");
            return (Criteria) this;
        }

        public Criteria andKeywordsIsNull() {
            addCriterion("KEYWORDS is null");
            return (Criteria) this;
        }

        public Criteria andKeywordsIsNotNull() {
            addCriterion("KEYWORDS is not null");
            return (Criteria) this;
        }

        public Criteria andKeywordsEqualTo(String value) {
            addCriterion("KEYWORDS =", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsNotEqualTo(String value) {
            addCriterion("KEYWORDS <>", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsGreaterThan(String value) {
            addCriterion("KEYWORDS >", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsGreaterThanOrEqualTo(String value) {
            addCriterion("KEYWORDS >=", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsLessThan(String value) {
            addCriterion("KEYWORDS <", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsLessThanOrEqualTo(String value) {
            addCriterion("KEYWORDS <=", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsLike(String value) {
            addCriterion("KEYWORDS like", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsNotLike(String value) {
            addCriterion("KEYWORDS not like", value, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsIn(List<String> values) {
            addCriterion("KEYWORDS in", values, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsNotIn(List<String> values) {
            addCriterion("KEYWORDS not in", values, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsBetween(String value1, String value2) {
            addCriterion("KEYWORDS between", value1, value2, "keywords");
            return (Criteria) this;
        }

        public Criteria andKeywordsNotBetween(String value1, String value2) {
            addCriterion("KEYWORDS not between", value1, value2, "keywords");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("DESCRIPTION is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("DESCRIPTION is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("DESCRIPTION =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("DESCRIPTION <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("DESCRIPTION >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("DESCRIPTION >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("DESCRIPTION <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("DESCRIPTION <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("DESCRIPTION like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("DESCRIPTION not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("DESCRIPTION in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("DESCRIPTION not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("DESCRIPTION between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("DESCRIPTION not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andThumbnailIsNull() {
            addCriterion("THUMBNAIL is null");
            return (Criteria) this;
        }

        public Criteria andThumbnailIsNotNull() {
            addCriterion("THUMBNAIL is not null");
            return (Criteria) this;
        }

        public Criteria andThumbnailEqualTo(String value) {
            addCriterion("THUMBNAIL =", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailNotEqualTo(String value) {
            addCriterion("THUMBNAIL <>", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailGreaterThan(String value) {
            addCriterion("THUMBNAIL >", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailGreaterThanOrEqualTo(String value) {
            addCriterion("THUMBNAIL >=", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailLessThan(String value) {
            addCriterion("THUMBNAIL <", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailLessThanOrEqualTo(String value) {
            addCriterion("THUMBNAIL <=", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailLike(String value) {
            addCriterion("THUMBNAIL like", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailNotLike(String value) {
            addCriterion("THUMBNAIL not like", value, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailIn(List<String> values) {
            addCriterion("THUMBNAIL in", values, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailNotIn(List<String> values) {
            addCriterion("THUMBNAIL not in", values, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailBetween(String value1, String value2) {
            addCriterion("THUMBNAIL between", value1, value2, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andThumbnailNotBetween(String value1, String value2) {
            addCriterion("THUMBNAIL not between", value1, value2, "thumbnail");
            return (Criteria) this;
        }

        public Criteria andSortIsNull() {
            addCriterion("SORT is null");
            return (Criteria) this;
        }

        public Criteria andSortIsNotNull() {
            addCriterion("SORT is not null");
            return (Criteria) this;
        }

        public Criteria andSortEqualTo(Integer value) {
            addCriterion("SORT =", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotEqualTo(Integer value) {
            addCriterion("SORT <>", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThan(Integer value) {
            addCriterion("SORT >", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThanOrEqualTo(Integer value) {
            addCriterion("SORT >=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThan(Integer value) {
            addCriterion("SORT <", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThanOrEqualTo(Integer value) {
            addCriterion("SORT <=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortIn(List<Integer> values) {
            addCriterion("SORT in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotIn(List<Integer> values) {
            addCriterion("SORT not in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortBetween(Integer value1, Integer value2) {
            addCriterion("SORT between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotBetween(Integer value1, Integer value2) {
            addCriterion("SORT not between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateIsNull() {
            addCriterion("CHANNEL_TEMPLATE is null");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateIsNotNull() {
            addCriterion("CHANNEL_TEMPLATE is not null");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateEqualTo(String value) {
            addCriterion("CHANNEL_TEMPLATE =", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateNotEqualTo(String value) {
            addCriterion("CHANNEL_TEMPLATE <>", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateGreaterThan(String value) {
            addCriterion("CHANNEL_TEMPLATE >", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateGreaterThanOrEqualTo(String value) {
            addCriterion("CHANNEL_TEMPLATE >=", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateLessThan(String value) {
            addCriterion("CHANNEL_TEMPLATE <", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateLessThanOrEqualTo(String value) {
            addCriterion("CHANNEL_TEMPLATE <=", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateLike(String value) {
            addCriterion("CHANNEL_TEMPLATE like", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateNotLike(String value) {
            addCriterion("CHANNEL_TEMPLATE not like", value, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateIn(List<String> values) {
            addCriterion("CHANNEL_TEMPLATE in", values, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateNotIn(List<String> values) {
            addCriterion("CHANNEL_TEMPLATE not in", values, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateBetween(String value1, String value2) {
            addCriterion("CHANNEL_TEMPLATE between", value1, value2, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateNotBetween(String value1, String value2) {
            addCriterion("CHANNEL_TEMPLATE not between", value1, value2, "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateIsNull() {
            addCriterion("MCHANNEL_TEMPLATE is null");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateIsNotNull() {
            addCriterion("MCHANNEL_TEMPLATE is not null");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateEqualTo(String value) {
            addCriterion("MCHANNEL_TEMPLATE =", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateNotEqualTo(String value) {
            addCriterion("MCHANNEL_TEMPLATE <>", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateGreaterThan(String value) {
            addCriterion("MCHANNEL_TEMPLATE >", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateGreaterThanOrEqualTo(String value) {
            addCriterion("MCHANNEL_TEMPLATE >=", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateLessThan(String value) {
            addCriterion("MCHANNEL_TEMPLATE <", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateLessThanOrEqualTo(String value) {
            addCriterion("MCHANNEL_TEMPLATE <=", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateLike(String value) {
            addCriterion("MCHANNEL_TEMPLATE like", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateNotLike(String value) {
            addCriterion("MCHANNEL_TEMPLATE not like", value, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateIn(List<String> values) {
            addCriterion("MCHANNEL_TEMPLATE in", values, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateNotIn(List<String> values) {
            addCriterion("MCHANNEL_TEMPLATE not in", values, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateBetween(String value1, String value2) {
            addCriterion("MCHANNEL_TEMPLATE between", value1, value2, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateNotBetween(String value1, String value2) {
            addCriterion("MCHANNEL_TEMPLATE not between", value1, value2, "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andTitleEnIsNull() {
            addCriterion("TITLE_EN is null");
            return (Criteria) this;
        }

        public Criteria andTitleEnIsNotNull() {
            addCriterion("TITLE_EN is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEnEqualTo(String value) {
            addCriterion("TITLE_EN =", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnNotEqualTo(String value) {
            addCriterion("TITLE_EN <>", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnGreaterThan(String value) {
            addCriterion("TITLE_EN >", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnGreaterThanOrEqualTo(String value) {
            addCriterion("TITLE_EN >=", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnLessThan(String value) {
            addCriterion("TITLE_EN <", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnLessThanOrEqualTo(String value) {
            addCriterion("TITLE_EN <=", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnLike(String value) {
            addCriterion("TITLE_EN like", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnNotLike(String value) {
            addCriterion("TITLE_EN not like", value, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnIn(List<String> values) {
            addCriterion("TITLE_EN in", values, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnNotIn(List<String> values) {
            addCriterion("TITLE_EN not in", values, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnBetween(String value1, String value2) {
            addCriterion("TITLE_EN between", value1, value2, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleEnNotBetween(String value1, String value2) {
            addCriterion("TITLE_EN not between", value1, value2, "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("TITLE is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("TITLE is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("TITLE =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("TITLE <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("TITLE >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("TITLE >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("TITLE <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("TITLE <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("TITLE like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("TITLE not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("TITLE in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("TITLE not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("TITLE between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("TITLE not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnIsNull() {
            addCriterion("SUB_TITLE_EN is null");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnIsNotNull() {
            addCriterion("SUB_TITLE_EN is not null");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnEqualTo(String value) {
            addCriterion("SUB_TITLE_EN =", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnNotEqualTo(String value) {
            addCriterion("SUB_TITLE_EN <>", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnGreaterThan(String value) {
            addCriterion("SUB_TITLE_EN >", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnGreaterThanOrEqualTo(String value) {
            addCriterion("SUB_TITLE_EN >=", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnLessThan(String value) {
            addCriterion("SUB_TITLE_EN <", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnLessThanOrEqualTo(String value) {
            addCriterion("SUB_TITLE_EN <=", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnLike(String value) {
            addCriterion("SUB_TITLE_EN like", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnNotLike(String value) {
            addCriterion("SUB_TITLE_EN not like", value, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnIn(List<String> values) {
            addCriterion("SUB_TITLE_EN in", values, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnNotIn(List<String> values) {
            addCriterion("SUB_TITLE_EN not in", values, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnBetween(String value1, String value2) {
            addCriterion("SUB_TITLE_EN between", value1, value2, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnNotBetween(String value1, String value2) {
            addCriterion("SUB_TITLE_EN not between", value1, value2, "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleIsNull() {
            addCriterion("SUB_TITLE is null");
            return (Criteria) this;
        }

        public Criteria andSubTitleIsNotNull() {
            addCriterion("SUB_TITLE is not null");
            return (Criteria) this;
        }

        public Criteria andSubTitleEqualTo(String value) {
            addCriterion("SUB_TITLE =", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleNotEqualTo(String value) {
            addCriterion("SUB_TITLE <>", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleGreaterThan(String value) {
            addCriterion("SUB_TITLE >", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleGreaterThanOrEqualTo(String value) {
            addCriterion("SUB_TITLE >=", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleLessThan(String value) {
            addCriterion("SUB_TITLE <", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleLessThanOrEqualTo(String value) {
            addCriterion("SUB_TITLE <=", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleLike(String value) {
            addCriterion("SUB_TITLE like", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleNotLike(String value) {
            addCriterion("SUB_TITLE not like", value, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleIn(List<String> values) {
            addCriterion("SUB_TITLE in", values, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleNotIn(List<String> values) {
            addCriterion("SUB_TITLE not in", values, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleBetween(String value1, String value2) {
            addCriterion("SUB_TITLE between", value1, value2, "subTitle");
            return (Criteria) this;
        }

        public Criteria andSubTitleNotBetween(String value1, String value2) {
            addCriterion("SUB_TITLE not between", value1, value2, "subTitle");
            return (Criteria) this;
        }

        public Criteria andToIndexIsNull() {
            addCriterion("TO_INDEX is null");
            return (Criteria) this;
        }

        public Criteria andToIndexIsNotNull() {
            addCriterion("TO_INDEX is not null");
            return (Criteria) this;
        }

        public Criteria andToIndexEqualTo(Boolean value) {
            addCriterion("TO_INDEX =", value, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexNotEqualTo(Boolean value) {
            addCriterion("TO_INDEX <>", value, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexGreaterThan(Boolean value) {
            addCriterion("TO_INDEX >", value, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexGreaterThanOrEqualTo(Boolean value) {
            addCriterion("TO_INDEX >=", value, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexLessThan(Boolean value) {
            addCriterion("TO_INDEX <", value, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexLessThanOrEqualTo(Boolean value) {
            addCriterion("TO_INDEX <=", value, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexIn(List<Boolean> values) {
            addCriterion("TO_INDEX in", values, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexNotIn(List<Boolean> values) {
            addCriterion("TO_INDEX not in", values, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexBetween(Boolean value1, Boolean value2) {
            addCriterion("TO_INDEX between", value1, value2, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToIndexNotBetween(Boolean value1, Boolean value2) {
            addCriterion("TO_INDEX not between", value1, value2, "toIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexIsNull() {
            addCriterion("TO_CHANNEL_INDEX is null");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexIsNotNull() {
            addCriterion("TO_CHANNEL_INDEX is not null");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexEqualTo(Boolean value) {
            addCriterion("TO_CHANNEL_INDEX =", value, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexNotEqualTo(Boolean value) {
            addCriterion("TO_CHANNEL_INDEX <>", value, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexGreaterThan(Boolean value) {
            addCriterion("TO_CHANNEL_INDEX >", value, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexGreaterThanOrEqualTo(Boolean value) {
            addCriterion("TO_CHANNEL_INDEX >=", value, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexLessThan(Boolean value) {
            addCriterion("TO_CHANNEL_INDEX <", value, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexLessThanOrEqualTo(Boolean value) {
            addCriterion("TO_CHANNEL_INDEX <=", value, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexIn(List<Boolean> values) {
            addCriterion("TO_CHANNEL_INDEX in", values, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexNotIn(List<Boolean> values) {
            addCriterion("TO_CHANNEL_INDEX not in", values, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexBetween(Boolean value1, Boolean value2) {
            addCriterion("TO_CHANNEL_INDEX between", value1, value2, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andToChannelIndexNotBetween(Boolean value1, Boolean value2) {
            addCriterion("TO_CHANNEL_INDEX not between", value1, value2, "toChannelIndex");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdIsNull() {
            addCriterion("CMS_CHANNEL_ID is null");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdIsNotNull() {
            addCriterion("CMS_CHANNEL_ID is not null");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdEqualTo(String value) {
            addCriterion("CMS_CHANNEL_ID =", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdNotEqualTo(String value) {
            addCriterion("CMS_CHANNEL_ID <>", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdGreaterThan(String value) {
            addCriterion("CMS_CHANNEL_ID >", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdGreaterThanOrEqualTo(String value) {
            addCriterion("CMS_CHANNEL_ID >=", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdLessThan(String value) {
            addCriterion("CMS_CHANNEL_ID <", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdLessThanOrEqualTo(String value) {
            addCriterion("CMS_CHANNEL_ID <=", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdLike(String value) {
            addCriterion("CMS_CHANNEL_ID like", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdNotLike(String value) {
            addCriterion("CMS_CHANNEL_ID not like", value, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdIn(List<String> values) {
            addCriterion("CMS_CHANNEL_ID in", values, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdNotIn(List<String> values) {
            addCriterion("CMS_CHANNEL_ID not in", values, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdBetween(String value1, String value2) {
            addCriterion("CMS_CHANNEL_ID between", value1, value2, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdNotBetween(String value1, String value2) {
            addCriterion("CMS_CHANNEL_ID not between", value1, value2, "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andAuthorIsNull() {
            addCriterion("AUTHOR is null");
            return (Criteria) this;
        }

        public Criteria andAuthorIsNotNull() {
            addCriterion("AUTHOR is not null");
            return (Criteria) this;
        }

        public Criteria andAuthorEqualTo(String value) {
            addCriterion("AUTHOR =", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotEqualTo(String value) {
            addCriterion("AUTHOR <>", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorGreaterThan(String value) {
            addCriterion("AUTHOR >", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("AUTHOR >=", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLessThan(String value) {
            addCriterion("AUTHOR <", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLessThanOrEqualTo(String value) {
            addCriterion("AUTHOR <=", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLike(String value) {
            addCriterion("AUTHOR like", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotLike(String value) {
            addCriterion("AUTHOR not like", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorIn(List<String> values) {
            addCriterion("AUTHOR in", values, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotIn(List<String> values) {
            addCriterion("AUTHOR not in", values, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorBetween(String value1, String value2) {
            addCriterion("AUTHOR between", value1, value2, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotBetween(String value1, String value2) {
            addCriterion("AUTHOR not between", value1, value2, "author");
            return (Criteria) this;
        }

        public Criteria andIdLikeInsensitive(String value) {
            addCriterion("upper(ID) like", value.toUpperCase(), "id");
            return (Criteria) this;
        }

        public Criteria andNameLikeInsensitive(String value) {
            addCriterion("upper(NAME) like", value.toUpperCase(), "name");
            return (Criteria) this;
        }

        public Criteria andUserIdLikeInsensitive(String value) {
            addCriterion("upper(USER_ID) like", value.toUpperCase(), "userId");
            return (Criteria) this;
        }

        public Criteria andCreatorLikeInsensitive(String value) {
            addCriterion("upper(CREATOR) like", value.toUpperCase(), "creator");
            return (Criteria) this;
        }

        public Criteria andUpdaterLikeInsensitive(String value) {
            addCriterion("upper(UPDATER) like", value.toUpperCase(), "updater");
            return (Criteria) this;
        }

        public Criteria andPathLikeInsensitive(String value) {
            addCriterion("upper(PATH) like", value.toUpperCase(), "path");
            return (Criteria) this;
        }

        public Criteria andIconLikeInsensitive(String value) {
            addCriterion("upper(ICON) like", value.toUpperCase(), "icon");
            return (Criteria) this;
        }

        public Criteria andCodeLikeInsensitive(String value) {
            addCriterion("upper(CODE) like", value.toUpperCase(), "code");
            return (Criteria) this;
        }

        public Criteria andKeywordsLikeInsensitive(String value) {
            addCriterion("upper(KEYWORDS) like", value.toUpperCase(), "keywords");
            return (Criteria) this;
        }

        public Criteria andDescriptionLikeInsensitive(String value) {
            addCriterion("upper(DESCRIPTION) like", value.toUpperCase(), "description");
            return (Criteria) this;
        }

        public Criteria andThumbnailLikeInsensitive(String value) {
            addCriterion("upper(THUMBNAIL) like", value.toUpperCase(), "thumbnail");
            return (Criteria) this;
        }

        public Criteria andChannelTemplateLikeInsensitive(String value) {
            addCriterion("upper(CHANNEL_TEMPLATE) like", value.toUpperCase(), "channelTemplate");
            return (Criteria) this;
        }

        public Criteria andMchannelTemplateLikeInsensitive(String value) {
            addCriterion("upper(MCHANNEL_TEMPLATE) like", value.toUpperCase(), "mchannelTemplate");
            return (Criteria) this;
        }

        public Criteria andTitleEnLikeInsensitive(String value) {
            addCriterion("upper(TITLE_EN) like", value.toUpperCase(), "titleEn");
            return (Criteria) this;
        }

        public Criteria andTitleLikeInsensitive(String value) {
            addCriterion("upper(TITLE) like", value.toUpperCase(), "title");
            return (Criteria) this;
        }

        public Criteria andSubTitleEnLikeInsensitive(String value) {
            addCriterion("upper(SUB_TITLE_EN) like", value.toUpperCase(), "subTitleEn");
            return (Criteria) this;
        }

        public Criteria andSubTitleLikeInsensitive(String value) {
            addCriterion("upper(SUB_TITLE) like", value.toUpperCase(), "subTitle");
            return (Criteria) this;
        }

        public Criteria andCmsChannelIdLikeInsensitive(String value) {
            addCriterion("upper(CMS_CHANNEL_ID) like", value.toUpperCase(), "cmsChannelId");
            return (Criteria) this;
        }

        public Criteria andAuthorLikeInsensitive(String value) {
            addCriterion("upper(AUTHOR) like", value.toUpperCase(), "author");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}