package com.qmxmh.demo.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
@Data

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


}