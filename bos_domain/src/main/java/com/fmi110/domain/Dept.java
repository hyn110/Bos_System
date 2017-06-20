package com.fmi110.domain;
public class Dept {
    private String deptId;
    private String deptName;
    private Dept   parent;
    private Long   state;

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public Dept getParent() {
        return parent;
    }

    public void setParent(Dept parent) {
        this.parent = parent;
    }

    public Long getState() {
        return state;
    }

    public void setState(Long state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Dept{" +
               "deptId='" + deptId + '\'' +
               ", deptName='" + deptName + '\'' +
               ", state=" + state +
               '}';
    }
}



