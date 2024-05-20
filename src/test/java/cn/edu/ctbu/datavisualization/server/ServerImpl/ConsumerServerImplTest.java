package cn.edu.ctbu.datavisualization.server.ServerImpl;

import cn.edu.ctbu.datavisualization.DatavisualizationApplication;
import cn.edu.ctbu.datavisualization.dao.Consumer;
import cn.edu.ctbu.datavisualization.server.ConsumerServer;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import javax.xml.crypto.Data;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(classes = DatavisualizationApplication.class)
class ConsumerServerImplTest {
    @Resource
    private ConsumerServer consumerServer;

    @Test
    void selectAllConsumer() {
        List<Consumer> consumers = consumerServer.selectAllConsumer();
        System.out.println(consumers);
    }
}