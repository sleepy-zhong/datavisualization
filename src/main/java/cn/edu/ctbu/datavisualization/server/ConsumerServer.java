package cn.edu.ctbu.datavisualization.server;

import cn.edu.ctbu.datavisualization.dao.Consumer;

import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-13
 **/
public interface  ConsumerServer {
    List<Consumer> selectAllConsumer();
}
