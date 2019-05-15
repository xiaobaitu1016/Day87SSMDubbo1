package com.qf.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class DoctorScheduleExample implements Serializable {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DoctorScheduleExample() {
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

        public Criteria andDscidIsNull() {
            addCriterion("dscid is null");
            return (Criteria) this;
        }

        public Criteria andDscidIsNotNull() {
            addCriterion("dscid is not null");
            return (Criteria) this;
        }

        public Criteria andDscidEqualTo(Integer value) {
            addCriterion("dscid =", value, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidNotEqualTo(Integer value) {
            addCriterion("dscid <>", value, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidGreaterThan(Integer value) {
            addCriterion("dscid >", value, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidGreaterThanOrEqualTo(Integer value) {
            addCriterion("dscid >=", value, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidLessThan(Integer value) {
            addCriterion("dscid <", value, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidLessThanOrEqualTo(Integer value) {
            addCriterion("dscid <=", value, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidIn(List<Integer> values) {
            addCriterion("dscid in", values, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidNotIn(List<Integer> values) {
            addCriterion("dscid not in", values, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidBetween(Integer value1, Integer value2) {
            addCriterion("dscid between", value1, value2, "dscid");
            return (Criteria) this;
        }

        public Criteria andDscidNotBetween(Integer value1, Integer value2) {
            addCriterion("dscid not between", value1, value2, "dscid");
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

        public Criteria andDidIsNull() {
            addCriterion("did is null");
            return (Criteria) this;
        }

        public Criteria andDidIsNotNull() {
            addCriterion("did is not null");
            return (Criteria) this;
        }

        public Criteria andDidEqualTo(Integer value) {
            addCriterion("did =", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidNotEqualTo(Integer value) {
            addCriterion("did <>", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidGreaterThan(Integer value) {
            addCriterion("did >", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidGreaterThanOrEqualTo(Integer value) {
            addCriterion("did >=", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidLessThan(Integer value) {
            addCriterion("did <", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidLessThanOrEqualTo(Integer value) {
            addCriterion("did <=", value, "did");
            return (Criteria) this;
        }

        public Criteria andDidIn(List<Integer> values) {
            addCriterion("did in", values, "did");
            return (Criteria) this;
        }

        public Criteria andDidNotIn(List<Integer> values) {
            addCriterion("did not in", values, "did");
            return (Criteria) this;
        }

        public Criteria andDidBetween(Integer value1, Integer value2) {
            addCriterion("did between", value1, value2, "did");
            return (Criteria) this;
        }

        public Criteria andDidNotBetween(Integer value1, Integer value2) {
            addCriterion("did not between", value1, value2, "did");
            return (Criteria) this;
        }

        public Criteria andWeekdayIsNull() {
            addCriterion("weekday is null");
            return (Criteria) this;
        }

        public Criteria andWeekdayIsNotNull() {
            addCriterion("weekday is not null");
            return (Criteria) this;
        }

        public Criteria andWeekdayEqualTo(Integer value) {
            addCriterion("weekday =", value, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayNotEqualTo(Integer value) {
            addCriterion("weekday <>", value, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayGreaterThan(Integer value) {
            addCriterion("weekday >", value, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayGreaterThanOrEqualTo(Integer value) {
            addCriterion("weekday >=", value, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayLessThan(Integer value) {
            addCriterion("weekday <", value, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayLessThanOrEqualTo(Integer value) {
            addCriterion("weekday <=", value, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayIn(List<Integer> values) {
            addCriterion("weekday in", values, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayNotIn(List<Integer> values) {
            addCriterion("weekday not in", values, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayBetween(Integer value1, Integer value2) {
            addCriterion("weekday between", value1, value2, "weekday");
            return (Criteria) this;
        }

        public Criteria andWeekdayNotBetween(Integer value1, Integer value2) {
            addCriterion("weekday not between", value1, value2, "weekday");
            return (Criteria) this;
        }

        public Criteria andWhichclassIsNull() {
            addCriterion("whichclass is null");
            return (Criteria) this;
        }

        public Criteria andWhichclassIsNotNull() {
            addCriterion("whichclass is not null");
            return (Criteria) this;
        }

        public Criteria andWhichclassEqualTo(Integer value) {
            addCriterion("whichclass =", value, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassNotEqualTo(Integer value) {
            addCriterion("whichclass <>", value, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassGreaterThan(Integer value) {
            addCriterion("whichclass >", value, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassGreaterThanOrEqualTo(Integer value) {
            addCriterion("whichclass >=", value, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassLessThan(Integer value) {
            addCriterion("whichclass <", value, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassLessThanOrEqualTo(Integer value) {
            addCriterion("whichclass <=", value, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassIn(List<Integer> values) {
            addCriterion("whichclass in", values, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassNotIn(List<Integer> values) {
            addCriterion("whichclass not in", values, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassBetween(Integer value1, Integer value2) {
            addCriterion("whichclass between", value1, value2, "whichclass");
            return (Criteria) this;
        }

        public Criteria andWhichclassNotBetween(Integer value1, Integer value2) {
            addCriterion("whichclass not between", value1, value2, "whichclass");
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