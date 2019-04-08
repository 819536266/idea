package com.qmxmh.demo.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class QmxHomeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public QmxHomeExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andHmIdIsNull() {
            addCriterion("hm_id is null");
            return (Criteria) this;
        }

        public Criteria andHmIdIsNotNull() {
            addCriterion("hm_id is not null");
            return (Criteria) this;
        }

        public Criteria andHmIdEqualTo(Long value) {
            addCriterion("hm_id =", value, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdNotEqualTo(Long value) {
            addCriterion("hm_id <>", value, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdGreaterThan(Long value) {
            addCriterion("hm_id >", value, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdGreaterThanOrEqualTo(Long value) {
            addCriterion("hm_id >=", value, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdLessThan(Long value) {
            addCriterion("hm_id <", value, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdLessThanOrEqualTo(Long value) {
            addCriterion("hm_id <=", value, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdIn(List<Long> values) {
            addCriterion("hm_id in", values, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdNotIn(List<Long> values) {
            addCriterion("hm_id not in", values, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdBetween(Long value1, Long value2) {
            addCriterion("hm_id between", value1, value2, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmIdNotBetween(Long value1, Long value2) {
            addCriterion("hm_id not between", value1, value2, "hmId");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeIsNull() {
            addCriterion("hm_one_type is null");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeIsNotNull() {
            addCriterion("hm_one_type is not null");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeEqualTo(String value) {
            addCriterion("hm_one_type =", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeNotEqualTo(String value) {
            addCriterion("hm_one_type <>", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeGreaterThan(String value) {
            addCriterion("hm_one_type >", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeGreaterThanOrEqualTo(String value) {
            addCriterion("hm_one_type >=", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeLessThan(String value) {
            addCriterion("hm_one_type <", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeLessThanOrEqualTo(String value) {
            addCriterion("hm_one_type <=", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeLike(String value) {
            addCriterion("hm_one_type like", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeNotLike(String value) {
            addCriterion("hm_one_type not like", value, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeIn(List<String> values) {
            addCriterion("hm_one_type in", values, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeNotIn(List<String> values) {
            addCriterion("hm_one_type not in", values, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeBetween(String value1, String value2) {
            addCriterion("hm_one_type between", value1, value2, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneTypeNotBetween(String value1, String value2) {
            addCriterion("hm_one_type not between", value1, value2, "hmOneType");
            return (Criteria) this;
        }

        public Criteria andHmOneNameIsNull() {
            addCriterion("hm_one_name is null");
            return (Criteria) this;
        }

        public Criteria andHmOneNameIsNotNull() {
            addCriterion("hm_one_name is not null");
            return (Criteria) this;
        }

        public Criteria andHmOneNameEqualTo(String value) {
            addCriterion("hm_one_name =", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameNotEqualTo(String value) {
            addCriterion("hm_one_name <>", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameGreaterThan(String value) {
            addCriterion("hm_one_name >", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameGreaterThanOrEqualTo(String value) {
            addCriterion("hm_one_name >=", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameLessThan(String value) {
            addCriterion("hm_one_name <", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameLessThanOrEqualTo(String value) {
            addCriterion("hm_one_name <=", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameLike(String value) {
            addCriterion("hm_one_name like", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameNotLike(String value) {
            addCriterion("hm_one_name not like", value, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameIn(List<String> values) {
            addCriterion("hm_one_name in", values, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameNotIn(List<String> values) {
            addCriterion("hm_one_name not in", values, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameBetween(String value1, String value2) {
            addCriterion("hm_one_name between", value1, value2, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneNameNotBetween(String value1, String value2) {
            addCriterion("hm_one_name not between", value1, value2, "hmOneName");
            return (Criteria) this;
        }

        public Criteria andHmOneContentIsNull() {
            addCriterion("hm_one_content is null");
            return (Criteria) this;
        }

        public Criteria andHmOneContentIsNotNull() {
            addCriterion("hm_one_content is not null");
            return (Criteria) this;
        }

        public Criteria andHmOneContentEqualTo(String value) {
            addCriterion("hm_one_content =", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentNotEqualTo(String value) {
            addCriterion("hm_one_content <>", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentGreaterThan(String value) {
            addCriterion("hm_one_content >", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentGreaterThanOrEqualTo(String value) {
            addCriterion("hm_one_content >=", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentLessThan(String value) {
            addCriterion("hm_one_content <", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentLessThanOrEqualTo(String value) {
            addCriterion("hm_one_content <=", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentLike(String value) {
            addCriterion("hm_one_content like", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentNotLike(String value) {
            addCriterion("hm_one_content not like", value, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentIn(List<String> values) {
            addCriterion("hm_one_content in", values, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentNotIn(List<String> values) {
            addCriterion("hm_one_content not in", values, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentBetween(String value1, String value2) {
            addCriterion("hm_one_content between", value1, value2, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneContentNotBetween(String value1, String value2) {
            addCriterion("hm_one_content not between", value1, value2, "hmOneContent");
            return (Criteria) this;
        }

        public Criteria andHmOneImageIsNull() {
            addCriterion("hm_one_image is null");
            return (Criteria) this;
        }

        public Criteria andHmOneImageIsNotNull() {
            addCriterion("hm_one_image is not null");
            return (Criteria) this;
        }

        public Criteria andHmOneImageEqualTo(String value) {
            addCriterion("hm_one_image =", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageNotEqualTo(String value) {
            addCriterion("hm_one_image <>", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageGreaterThan(String value) {
            addCriterion("hm_one_image >", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageGreaterThanOrEqualTo(String value) {
            addCriterion("hm_one_image >=", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageLessThan(String value) {
            addCriterion("hm_one_image <", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageLessThanOrEqualTo(String value) {
            addCriterion("hm_one_image <=", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageLike(String value) {
            addCriterion("hm_one_image like", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageNotLike(String value) {
            addCriterion("hm_one_image not like", value, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageIn(List<String> values) {
            addCriterion("hm_one_image in", values, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageNotIn(List<String> values) {
            addCriterion("hm_one_image not in", values, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageBetween(String value1, String value2) {
            addCriterion("hm_one_image between", value1, value2, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneImageNotBetween(String value1, String value2) {
            addCriterion("hm_one_image not between", value1, value2, "hmOneImage");
            return (Criteria) this;
        }

        public Criteria andHmOneDateIsNull() {
            addCriterion("hm_one_date is null");
            return (Criteria) this;
        }

        public Criteria andHmOneDateIsNotNull() {
            addCriterion("hm_one_date is not null");
            return (Criteria) this;
        }

        public Criteria andHmOneDateEqualTo(Date value) {
            addCriterionForJDBCDate("hm_one_date =", value, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("hm_one_date <>", value, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateGreaterThan(Date value) {
            addCriterionForJDBCDate("hm_one_date >", value, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("hm_one_date >=", value, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateLessThan(Date value) {
            addCriterionForJDBCDate("hm_one_date <", value, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("hm_one_date <=", value, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateIn(List<Date> values) {
            addCriterionForJDBCDate("hm_one_date in", values, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("hm_one_date not in", values, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("hm_one_date between", value1, value2, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmOneDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("hm_one_date not between", value1, value2, "hmOneDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameIsNull() {
            addCriterion("hm_two_name is null");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameIsNotNull() {
            addCriterion("hm_two_name is not null");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameEqualTo(String value) {
            addCriterion("hm_two_name =", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameNotEqualTo(String value) {
            addCriterion("hm_two_name <>", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameGreaterThan(String value) {
            addCriterion("hm_two_name >", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameGreaterThanOrEqualTo(String value) {
            addCriterion("hm_two_name >=", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameLessThan(String value) {
            addCriterion("hm_two_name <", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameLessThanOrEqualTo(String value) {
            addCriterion("hm_two_name <=", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameLike(String value) {
            addCriterion("hm_two_name like", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameNotLike(String value) {
            addCriterion("hm_two_name not like", value, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameIn(List<String> values) {
            addCriterion("hm_two_name in", values, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameNotIn(List<String> values) {
            addCriterion("hm_two_name not in", values, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameBetween(String value1, String value2) {
            addCriterion("hm_two_name between", value1, value2, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoNameNotBetween(String value1, String value2) {
            addCriterion("hm_two_name not between", value1, value2, "hmTwoName");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentIsNull() {
            addCriterion("hm_two_content is null");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentIsNotNull() {
            addCriterion("hm_two_content is not null");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentEqualTo(String value) {
            addCriterion("hm_two_content =", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentNotEqualTo(String value) {
            addCriterion("hm_two_content <>", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentGreaterThan(String value) {
            addCriterion("hm_two_content >", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentGreaterThanOrEqualTo(String value) {
            addCriterion("hm_two_content >=", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentLessThan(String value) {
            addCriterion("hm_two_content <", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentLessThanOrEqualTo(String value) {
            addCriterion("hm_two_content <=", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentLike(String value) {
            addCriterion("hm_two_content like", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentNotLike(String value) {
            addCriterion("hm_two_content not like", value, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentIn(List<String> values) {
            addCriterion("hm_two_content in", values, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentNotIn(List<String> values) {
            addCriterion("hm_two_content not in", values, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentBetween(String value1, String value2) {
            addCriterion("hm_two_content between", value1, value2, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoContentNotBetween(String value1, String value2) {
            addCriterion("hm_two_content not between", value1, value2, "hmTwoContent");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateIsNull() {
            addCriterion("hm_two_date is null");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateIsNotNull() {
            addCriterion("hm_two_date is not null");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateEqualTo(Date value) {
            addCriterionForJDBCDate("hm_two_date =", value, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("hm_two_date <>", value, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateGreaterThan(Date value) {
            addCriterionForJDBCDate("hm_two_date >", value, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("hm_two_date >=", value, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateLessThan(Date value) {
            addCriterionForJDBCDate("hm_two_date <", value, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("hm_two_date <=", value, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateIn(List<Date> values) {
            addCriterionForJDBCDate("hm_two_date in", values, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("hm_two_date not in", values, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("hm_two_date between", value1, value2, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmTwoDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("hm_two_date not between", value1, value2, "hmTwoDate");
            return (Criteria) this;
        }

        public Criteria andHmUrlIsNull() {
            addCriterion("hm_url is null");
            return (Criteria) this;
        }

        public Criteria andHmUrlIsNotNull() {
            addCriterion("hm_url is not null");
            return (Criteria) this;
        }

        public Criteria andHmUrlEqualTo(String value) {
            addCriterion("hm_url =", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlNotEqualTo(String value) {
            addCriterion("hm_url <>", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlGreaterThan(String value) {
            addCriterion("hm_url >", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlGreaterThanOrEqualTo(String value) {
            addCriterion("hm_url >=", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlLessThan(String value) {
            addCriterion("hm_url <", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlLessThanOrEqualTo(String value) {
            addCriterion("hm_url <=", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlLike(String value) {
            addCriterion("hm_url like", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlNotLike(String value) {
            addCriterion("hm_url not like", value, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlIn(List<String> values) {
            addCriterion("hm_url in", values, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlNotIn(List<String> values) {
            addCriterion("hm_url not in", values, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlBetween(String value1, String value2) {
            addCriterion("hm_url between", value1, value2, "hmUrl");
            return (Criteria) this;
        }

        public Criteria andHmUrlNotBetween(String value1, String value2) {
            addCriterion("hm_url not between", value1, value2, "hmUrl");
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