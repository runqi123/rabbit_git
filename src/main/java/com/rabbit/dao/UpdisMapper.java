package com.rabbit.dao;

import org.apache.ibatis.annotations.Param;

public interface UpdisMapper {
    public int updispublisher(@Param("taskid") int taskid);
    public int updisrecipient(@Param("taskid") int taskid);
    public int upisComplete(@Param("taskid") int taskid);
}
