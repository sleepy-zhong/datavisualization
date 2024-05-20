package cn.edu.ctbu.datavisualization.controller;

import cn.edu.ctbu.datavisualization.dao.Consumer;
import cn.edu.ctbu.datavisualization.enums.Result;
import cn.edu.ctbu.datavisualization.server.ConsumerServer;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-13
 **/
@RestController
@Api(tags = {"消费指数"})
@RequestMapping("/api/consumer")
public class ConsumerController {
    @Resource
    private ConsumerServer consumerServer;

    @ApiOperation("API1:消费指数查看")
    @PostMapping(value = "/selectAllConsumer")
    public Result selectAllConsumer() {
        List<Consumer> consumers = consumerServer.selectAllConsumer();

        return Result.success(consumers);
    }
}
