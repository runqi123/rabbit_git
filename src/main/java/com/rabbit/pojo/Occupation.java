package com.rabbit.pojo;

public class Occupation {
    private int occupationId;//int(11)职业Id
    private String occupationName;//varchar(50)职业名
    private int isOccupationImg;//int(11)是否需要职业照

    public int getOccupationId() {
        return occupationId;
    }

    public void setOccupationId(int occupationId) {
        this.occupationId = occupationId;
    }

    public String getOccupationName() {
        return occupationName;
    }

    public void setOccupationName(String occupationName) {
        this.occupationName = occupationName;
    }

    public int getIsOccupationImg() {
        return isOccupationImg;
    }

    public void setIsOccupationImg(int isOccupationImg) {
        this.isOccupationImg = isOccupationImg;
    }
}
