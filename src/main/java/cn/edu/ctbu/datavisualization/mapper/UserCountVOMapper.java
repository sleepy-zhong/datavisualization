package cn.edu.ctbu.datavisualization.mapper;

import cn.edu.ctbu.datavisualization.dao.vo.UserCountVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-22
 **/
@Mapper
public interface UserCountVOMapper {

    @Select("SELECT tut.user_type, COUNT(*) as user_count\n" +
            "FROM t_user AS tu\n" +
            "JOIN t_user_type AS tut ON tu.user_type_id = tut.id\n" +
            "GROUP BY tut.user_type;")
    List<UserCountVO> countUserNumber();
}
