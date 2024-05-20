package cn.edu.ctbu.datavisualization.controller;

import cn.edu.ctbu.datavisualization.dao.Consumer;
import cn.edu.ctbu.datavisualization.dao.Sum;
import cn.edu.ctbu.datavisualization.enums.Result;
import cn.edu.ctbu.datavisualization.server.SumServer;
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
 * @create: 2024-05-16
 **/

@RestController
@Api(tags = {"综合"})
@RequestMapping("/api/sum")
public class SumController {

    @Resource
    private  SumServer sumServer;

    @ApiOperation("API2:综合数据")
    @PostMapping(value = "/selectAllSum")
    public Result selectAllSum() {
        List<Sum> sumList = sumServer.selectAllSum();

        return Result.success(sumList);
    }

}
