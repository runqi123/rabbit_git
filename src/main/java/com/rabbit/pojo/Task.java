package com.rabbit.pojo;

import java.util.Date;

public class Task {


    /**
     *
     FieldTypeComment
     taskIdint(11)任务Id
     Priceint(11)价格
     taskCreateTimedatetime发布时间
     taskTitlevarchar(50)任务标题
     taskOccupationIdint(11)任务职业ID/不限为0
     specificRequestvarchar(2000)具体要求
     isAcceptint(11)是否被接受/0未接受/1已接受
     placevarchar(200)完成地点
     isCompleteint(11)是否完成#注双方同意代表完成
     publisherIdint(11)发布任务者Id
     recipientint(11)接受者Id
     ispublisherint(11)发布者确认是否完成任务0未完成1完成
     isrecipientint(11)接受者确认是否完成任务
     Specifiedtimedatetime完成时间
     taskStateint(11)该任务是否被删除0正常1已删除
     */
    private int taskId;
    private  int price;
    private Date taskCreateTime;
    private String taskTitle;
    private int taskOccupationId;
    private String specificRequest;
    private int isAccept;
    private String place;
    private int isComplete;
    private int publisherId;
    private int recipient;
    private int ispublisher;
    private int isrecipient;
    private Date specifiedtime;
    private int taskState;
    private int typeId;

    private String uname;

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }
    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }


    public Date getTaskCreateTime() {
        return taskCreateTime;
    }

    public void setTaskCreateTime(Date taskCreateTime) {
        this.taskCreateTime = taskCreateTime;
    }

    public String getTaskTitle() {
        return taskTitle;
    }

    public void setTaskTitle(String taskTitle) {
        this.taskTitle = taskTitle;
    }

    public int getTaskOccupationId() {
        return taskOccupationId;
    }

    public void setTaskOccupationId(int taskOccupationId) {
        this.taskOccupationId = taskOccupationId;
    }

    public String getSpecificRequest() {
        return specificRequest;
    }

    public void setSpecificRequest(String specificRequest) {
        this.specificRequest = specificRequest;
    }

    public int getIsAccept() {
        return isAccept;
    }

    public void setIsAccept(int isAccept) {
        this.isAccept = isAccept;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getIsComplete() {
        return isComplete;
    }

    public void setIsComplete(int isComplete) {
        this.isComplete = isComplete;
    }

    public int getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(int publisherId) {
        this.publisherId = publisherId;
    }

    public int getRecipient() {
        return recipient;
    }

    public void setRecipient(int recipient) {
        this.recipient = recipient;
    }

    public int getIspublisher() {
        return ispublisher;
    }

    public void setIspublisher(int ispublisher) {
        this.ispublisher = ispublisher;
    }

    public int getIsrecipient() {
        return isrecipient;
    }

    public void setIsrecipient(int isrecipient) {
        this.isrecipient = isrecipient;
    }

    public int getTaskState() {
        return taskState;
    }

    public void setTaskState(int taskState) {
        this.taskState = taskState;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getSpecifiedtime() {
        return specifiedtime;
    }

    public void setSpecifiedtime(Date specifiedtime) {
        this.specifiedtime = specifiedtime;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }
}
