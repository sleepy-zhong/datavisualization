package cn.edu.ctbu.datavisualization.mapper;

import cn.edu.ctbu.datavisualization.dao.Sum;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SumMapper {

    @Select("SELECT * FROM t_sum")
    List<Sum> selectAllSum();
}
