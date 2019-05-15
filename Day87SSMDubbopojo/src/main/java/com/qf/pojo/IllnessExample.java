package com.qf.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class IllnessExample implements Serializable {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public IllnessExample() {
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

        public Criteria andIlidIsNull() {
            addCriterion("ilid is null");
            return (Criteria) this;
        }

        public Criteria andIlidIsNotNull() {
            addCriterion("ilid is not null");
            return (Criteria) this;
        }

        public Criteria andIlidEqualTo(Integer value) {
            addCriterion("ilid =", value, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidNotEqualTo(Integer value) {
            addCriterion("ilid <>", value, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidGreaterThan(Integer value) {
            addCriterion("ilid >", value, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidGreaterThanOrEqualTo(Integer value) {
            addCriterion("ilid >=", value, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidLessThan(Integer value) {
            addCriterion("ilid <", value, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidLessThanOrEqualTo(Integer value) {
            addCriterion("ilid <=", value, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidIn(List<Integer> values) {
            addCriterion("ilid in", values, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidNotIn(List<Integer> values) {
            addCriterion("ilid not in", values, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidBetween(Integer value1, Integer value2) {
            addCriterion("ilid between", value1, value2, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlidNotBetween(Integer value1, Integer value2) {
            addCriterion("ilid not between", value1, value2, "ilid");
            return (Criteria) this;
        }

        public Criteria andIlnameIsNull() {
            addCriterion("ilname is null");
            return (Criteria) this;
        }

        public Criteria andIlnameIsNotNull() {
            addCriterion("ilname is not null");
            return (Criteria) this;
        }

        public Criteria andIlnameEqualTo(String value) {
            addCriterion("ilname =", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameNotEqualTo(String value) {
            addCriterion("ilname <>", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameGreaterThan(String value) {
            addCriterion("ilname >", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameGreaterThanOrEqualTo(String value) {
            addCriterion("ilname >=", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameLessThan(String value) {
            addCriterion("ilname <", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameLessThanOrEqualTo(String value) {
            addCriterion("ilname <=", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameLike(String value) {
            addCriterion("ilname like", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameNotLike(String value) {
            addCriterion("ilname not like", value, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameIn(List<String> values) {
            addCriterion("ilname in", values, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameNotIn(List<String> values) {
            addCriterion("ilname not in", values, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameBetween(String value1, String value2) {
            addCriterion("ilname between", value1, value2, "ilname");
            return (Criteria) this;
        }

        public Criteria andIlnameNotBetween(String value1, String value2) {
            addCriterion("ilname not between", value1, value2, "ilname");
            return (Criteria) this;
        }

        public Criteria andDsidIsNull() {
            addCriterion("dsid is null");
            return (Criteria) this;
        }

        public Criteria andDsidIsNotNull() {
            addCriterion("dsid is not null");
            return (Criteria) this;
        }

        public Criteria andDsidEqualTo(Integer value) {
            addCriterion("dsid =", value, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidNotEqualTo(Integer value) {
            addCriterion("dsid <>", value, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidGreaterThan(Integer value) {
            addCriterion("dsid >", value, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidGreaterThanOrEqualTo(Integer value) {
            addCriterion("dsid >=", value, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidLessThan(Integer value) {
            addCriterion("dsid <", value, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidLessThanOrEqualTo(Integer value) {
            addCriterion("dsid <=", value, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidIn(List<Integer> values) {
            addCriterion("dsid in", values, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidNotIn(List<Integer> values) {
            addCriterion("dsid not in", values, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidBetween(Integer value1, Integer value2) {
            addCriterion("dsid between", value1, value2, "dsid");
            return (Criteria) this;
        }

        public Criteria andDsidNotBetween(Integer value1, Integer value2) {
            addCriterion("dsid not between", value1, value2, "dsid");
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