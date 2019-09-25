package com.rabbit.dao;

import org.apache.ibatis.annotations.Param;

public interface AreacodeMapper {
    public String selectAreacode(@Param("zone") String zone);
}
