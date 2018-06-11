package com.share.jdbc.entity;

import javax.persistence.*;

//@Table(name = "sclass00")
public class Sclass {
    //@Id
    @Column(name = "classId")
    private Long classId;
    @Column(name = "className")
    private String className;
    @Column(name = "header")
    private String header;

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
     * @return className
     */
    public String getClassName() {
        return className;
    }

    /**
     * @param className
     */
    public void setClassName(String className) {
        this.className = className;
    }

    /**
     * @return header
     */
    public String getHeader() {
        return header;
    }

    /**
     * @param header
     */
    public void setHeader(String header) {
        this.header = header;
    }
}