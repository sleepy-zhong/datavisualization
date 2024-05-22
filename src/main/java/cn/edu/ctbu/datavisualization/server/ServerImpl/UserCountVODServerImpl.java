package cn.edu.ctbu.datavisualization.server.ServerImpl;

import cn.edu.ctbu.datavisualization.dao.vo.UserCountVO;
import cn.edu.ctbu.datavisualization.mapper.UserCountVOMapper;
import cn.edu.ctbu.datavisualization.server.UserCountVOServer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-22
 **/
@Service
public class UserCountVODServerImpl implements UserCountVOServer {

    @Resource
    private UserCountVOMapper userCountVOMapper;

    @Override
    public List<UserCountVO> countUserNumber() {
        return userCountVOMapper.countUserNumber();
    }
}
