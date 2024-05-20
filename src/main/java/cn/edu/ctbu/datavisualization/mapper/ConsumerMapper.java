package cn.edu.ctbu.datavisualization.mapper;

import cn.edu.ctbu.datavisualization.dao.Consumer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-13
 **/
@Mapper
public interface ConsumerMapper {
    @Select("SELECT * FROM `t_consumer`")
    List<Consumer> selectAllConsumer();
}
