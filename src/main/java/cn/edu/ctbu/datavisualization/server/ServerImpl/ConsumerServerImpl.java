package cn.edu.ctbu.datavisualization.server.ServerImpl;

import cn.edu.ctbu.datavisualization.dao.Consumer;
import cn.edu.ctbu.datavisualization.mapper.ConsumerMapper;
import cn.edu.ctbu.datavisualization.server.ConsumerServer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-13
 **/
@Service
public class ConsumerServerImpl implements ConsumerServer {

    @Resource
    private ConsumerMapper consumerMapper;

    @Override
    public List<Consumer> selectAllConsumer() {
        return consumerMapper.selectAllConsumer();
    }
}
