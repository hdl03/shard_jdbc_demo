package com.share.jdbc.entity;

import javax.persistence.*;


public class Course {

    @Column(name = "cId")
    private Long cId;
    @Column(name = "cName")
    private String cName;
    @Column(name = "teacher")
    private String teacher;

    /**
     * @return cId
     */
    public Long getcId() {
        return cId;
    }

    /**
     * @param cId
     */
    public void setcId(Long cId) {
        this.cId = cId;
    }

    /**
     * @return cName
     */
    public String getcName() {
        return cName;
    }

    /**
     * @param cName
     */
    public void setcName(String cName) {
        this.cName = cName;
    }

    /**
     * @return teacher
     */
    public String getTeacher() {
        return teacher;
    }

    /**
     * @param teacher
     */
    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }
}