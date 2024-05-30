package cn.edu.ctbu.datavisualization.controller;

import cn.edu.ctbu.datavisualization.dao.Sum;
import cn.edu.ctbu.datavisualization.dao.vo.UserCountVO;
import cn.edu.ctbu.datavisualization.dao.vo.UserNumberVO;
import cn.edu.ctbu.datavisualization.enums.Result;
import cn.edu.ctbu.datavisualization.server.SumServer;
import cn.edu.ctbu.datavisualization.server.UserCountVOServer;
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
 * @create: 2024-05-22
 **/
@RestController
@Api(tags = {"数据统计"})
@RequestMapping("/api/user-count")
public class UserCountVOController {
    @Resource
    private UserCountVOServer UserCountVOServer;

    @ApiOperation("API3:用户类型数据统计")
    @PostMapping(value = "/count-user-number")
    public Result countUserNumber() {
        List<UserCountVO> userCountVOS = UserCountVOServer.countUserNumber();
        return Result.success(userCountVOS);
    }


    @ApiOperation("API4:总用户数量")
    @PostMapping(value = "/user-number")
    public Result userNumber() {
        UserNumberVO userCountVOS = UserCountVOServer.userNUmber();
        return Result.success(userCountVOS);
    }

}
