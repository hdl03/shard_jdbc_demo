package com.share.jdbc.entity;

import javax.persistence.*;

//@Table(name = "student00")
public class Student {
    @Id
    @Column(name = "sId")
    private Long sId;
    @Column(name = "sName")
    private String sName;
    @Column(name = "gender")
    private Integer gender;
    @Column(name = "classId")
    private Long classId;
    @Column(name = "email")
    private String email;
    @Column(name = "phoneNum")
    private String phoneNum;
    @Column(name = "bId")
    private Long bId;

    /**
     * @return sId
     */
    public Long getsId() {
        return sId;
    }

    /**
     * @param sId
     */
    public void setsId(Long sId) {
        this.sId = sId;
    }

    /**
     * @return sName
     */
    public String getsName() {
        return sName;
    }

    /**
     * @param sName
     */
    public void setsName(String sName) {
        this.sName = sName;
    }

    /**
     * @return gender
     */
    public Integer getGender() {
        return gender;
    }

    /**
     * @param gender
     */
    public void setGender(Integer gender) {
        this.gender = gender;
    }

    /**
     * @return classId
     */
    public Long getClassId() {
        return classId;
    }

    /**
     * @param classId
     */
    public void setClassId(Long classId) {
        this.classId = classId;
    }

    /**
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return phoneNum
     */
    public String getPhoneNum() {
        return phoneNum;
    }

    /**
     * @param phoneNum
     */
    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    /**
     * @return bId
     */
    public Long getbId() {
        return bId;
    }

    /**
     * @param bId
     */
    public void setbId(Long bId) {
        this.bId = bId;
    }
}