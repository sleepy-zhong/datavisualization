package cn.edu.ctbu.datavisualization.mapper;

import cn.edu.ctbu.datavisualization.DatavisualizationApplication;
import cn.edu.ctbu.datavisualization.dao.Sum;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(classes = DatavisualizationApplication.class)
class SumMapperTest {

    @Resource
    private SumMapper sumMapper;

    @Test
    void selectAllSum() {
        List<Sum> sums = sumMapper.selectAllSum();
        System.out.println(sums);
    }
}