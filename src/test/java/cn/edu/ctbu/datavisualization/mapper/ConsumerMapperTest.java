package cn.edu.ctbu.datavisualization.mapper;

import cn.edu.ctbu.datavisualization.DatavisualizationApplication;
import cn.edu.ctbu.datavisualization.dao.Consumer;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(classes = DatavisualizationApplication.class)
class ConsumerMapperTest {

    @Resource
    private ConsumerMapper consumerMapper;

    @Test
    void selectAllConsumer() {
        List<Consumer> consumers = consumerMapper.selectAllConsumer();
        System.out.println(consumers);
    }
}