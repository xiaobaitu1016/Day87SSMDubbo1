package com.qf.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class DoctorRoleExample implements Serializable {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DoctorRoleExample() {
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

        public Criteria andDridIsNull() {
            addCriterion("drid is null");
            return (Criteria) this;
        }

        public Criteria andDridIsNotNull() {
            addCriterion("drid is not null");
            return (Criteria) this;
        }

        public Criteria andDridEqualTo(Integer value) {
            addCriterion("drid =", value, "drid");
            return (Criteria) this;
        }

        public Criteria andDridNotEqualTo(Integer value) {
            addCriterion("drid <>", value, "drid");
            return (Criteria) this;
        }

        public Criteria andDridGreaterThan(Integer value) {
            addCriterion("drid >", value, "drid");
            return (Criteria) this;
        }

        public Criteria andDridGreaterThanOrEqualTo(Integer value) {
            addCriterion("drid >=", value, "drid");
            return (Criteria) this;
        }

        public Criteria andDridLessThan(Integer value) {
            addCriterion("drid <", value, "drid");
            return (Criteria) this;
        }

        public Criteria andDridLessThanOrEqualTo(Integer value) {
            addCriterion("drid <=", value, "drid");
            return (Criteria) this;
        }

        public Criteria andDridIn(List<Integer> values) {
            addCriterion("drid in", values, "drid");
            return (Criteria) this;
        }

        public Criteria andDridNotIn(List<Integer> values) {
            addCriterion("drid not in", values, "drid");
            return (Criteria) this;
        }

        public Criteria andDridBetween(Integer value1, Integer value2) {
            addCriterion("drid between", value1, value2, "drid");
            return (Criteria) this;
        }

        public Criteria andDridNotBetween(Integer value1, Integer value2) {
            addCriterion("drid not between", value1, value2, "drid");
            return (Criteria) this;
        }

        public Criteria andDrnameIsNull() {
            addCriterion("drname is null");
            return (Criteria) this;
        }

        public Criteria andDrnameIsNotNull() {
            addCriterion("drname is not null");
            return (Criteria) this;
        }

        public Criteria andDrnameEqualTo(String value) {
            addCriterion("drname =", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameNotEqualTo(String value) {
            addCriterion("drname <>", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameGreaterThan(String value) {
            addCriterion("drname >", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameGreaterThanOrEqualTo(String value) {
            addCriterion("drname >=", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameLessThan(String value) {
            addCriterion("drname <", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameLessThanOrEqualTo(String value) {
            addCriterion("drname <=", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameLike(String value) {
            addCriterion("drname like", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameNotLike(String value) {
            addCriterion("drname not like", value, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameIn(List<String> values) {
            addCriterion("drname in", values, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameNotIn(List<String> values) {
            addCriterion("drname not in", values, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameBetween(String value1, String value2) {
            addCriterion("drname between", value1, value2, "drname");
            return (Criteria) this;
        }

        public Criteria andDrnameNotBetween(String value1, String value2) {
            addCriterion("drname not between", value1, value2, "drname");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(Double value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(Double value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(Double value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(Double value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(Double value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<Double> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<Double> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(Double value1, Double value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(Double value1, Double value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNull() {
            addCriterion("remarks is null");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNotNull() {
            addCriterion("remarks is not null");
            return (Criteria) this;
        }

        public Criteria andRemarksEqualTo(String value) {
            addCriterion("remarks =", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotEqualTo(String value) {
            addCriterion("remarks <>", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThan(String value) {
            addCriterion("remarks >", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("remarks >=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThan(String value) {
            addCriterion("remarks <", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThanOrEqualTo(String value) {
            addCriterion("remarks <=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLike(String value) {
            addCriterion("remarks like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotLike(String value) {
            addCriterion("remarks not like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksIn(List<String> values) {
            addCriterion("remarks in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotIn(List<String> values) {
            addCriterion("remarks not in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksBetween(String value1, String value2) {
            addCriterion("remarks between", value1, value2, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotBetween(String value1, String value2) {
            addCriterion("remarks not between", value1, value2, "remarks");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria implements Serializable{

        protected Criteria() {
            super();
        }
    }

    public static class Criterion implements Serializable{
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