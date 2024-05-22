package cn.edu.ctbu.datavisualization.mapper;

import cn.edu.ctbu.datavisualization.DatavisualizationApplication;
import cn.edu.ctbu.datavisualization.dao.vo.UserCountVO;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(classes = DatavisualizationApplication.class)
class UserCountVOMapperTest {

    @Resource
    private UserCountVOMapper userCountVOMapper;

    @Test
    void countUserNumber() {
        List<UserCountVO> userCountVOS = userCountVOMapper.countUserNumber();
        System.out.println(userCountVOS);
    }
}