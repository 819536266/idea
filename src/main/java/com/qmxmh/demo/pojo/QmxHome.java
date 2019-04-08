package com.qmxmh.demo.pojo;

import java.io.Serializable;
import java.util.Date;

public class QmxHome implements Serializable {
    private Long hmId;

    private String hmOneType;

    private String hmOneName;

    private String hmOneContent;

    private String hmOneImage;

    private Date hmOneDate;

    private String hmTwoName;

    private String hmTwoContent;

    private Date hmTwoDate;

    private String hmUrl;

    private static final long serialVersionUID = 1L;

    public Long getHmId() {
        return hmId;
    }

    public void setHmId(Long hmId) {
        this.hmId = hmId;
    }

    public String getHmOneType() {
        return hmOneType;
    }

    public void setHmOneType(String hmOneType) {
        this.hmOneType = hmOneType == null ? null : hmOneType.trim();
    }

    public String getHmOneName() {
        return hmOneName;
    }

    public void setHmOneName(String hmOneName) {
        this.hmOneName = hmOneName == null ? null : hmOneName.trim();
    }

    public String getHmOneContent() {
        return hmOneContent;
    }

    public void setHmOneContent(String hmOneContent) {
        this.hmOneContent = hmOneContent == null ? null : hmOneContent.trim();
    }

    public String getHmOneImage() {
        return hmOneImage;
    }

    public void setHmOneImage(String hmOneImage) {
        this.hmOneImage = hmOneImage == null ? null : hmOneImage.trim();
    }

    public Date getHmOneDate() {
        return hmOneDate;
    }

    public void setHmOneDate(Date hmOneDate) {
        this.hmOneDate = hmOneDate;
    }

    public String getHmTwoName() {
        return hmTwoName;
    }

    public void setHmTwoName(String hmTwoName) {
        this.hmTwoName = hmTwoName == null ? null : hmTwoName.trim();
    }

    public String getHmTwoContent() {
        return hmTwoContent;
    }

    public void setHmTwoContent(String hmTwoContent) {
        this.hmTwoContent = hmTwoContent == null ? null : hmTwoContent.trim();
    }

    public Date getHmTwoDate() {
        return hmTwoDate;
    }

    public void setHmTwoDate(Date hmTwoDate) {
        this.hmTwoDate = hmTwoDate;
    }

    public String getHmUrl() {
        return hmUrl;
    }

    public void setHmUrl(String hmUrl) {
        this.hmUrl = hmUrl == null ? null : hmUrl.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", hmId=").append(hmId);
        sb.append(", hmOneType=").append(hmOneType);
        sb.append(", hmOneName=").append(hmOneName);
        sb.append(", hmOneContent=").append(hmOneContent);
        sb.append(", hmOneImage=").append(hmOneImage);
        sb.append(", hmOneDate=").append(hmOneDate);
        sb.append(", hmTwoName=").append(hmTwoName);
        sb.append(", hmTwoContent=").append(hmTwoContent);
        sb.append(", hmTwoDate=").append(hmTwoDate);
        sb.append(", hmUrl=").append(hmUrl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}