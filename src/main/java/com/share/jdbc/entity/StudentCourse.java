package com.share.jdbc.entity;

import java.util.Date;
import javax.persistence.*;

@Table(name = "student_course")
public class StudentCourse {
    @Id
    @Column(name = "scId")
    private Long scId;
    @Column(name = "cId")
    private Long cId;
    @Column(name = "sId")
    private Long sId;
    @Column(name = "score")
    private Double score;
    @Column(name = "examDate")
    private Date examDate;

    /**
     * @return scId
     */
    public Long getScId() {
        return scId;
    }

    /**
     * @param scId
     */
    public void setScId(Long scId) {
        this.scId = scId;
    }

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
     * @return score
     */
    public Double getScore() {
        return score;
    }

    /**
     * @param score
     */
    public void setScore(Double score) {
        this.score = score;
    }

    /**
     * @return examDate
     */
    public Date getExamDate() {
        return examDate;
    }

    /**
     * @param examDate
     */
    public void setExamDate(Date examDate) {
        this.examDate = examDate;
    }
}