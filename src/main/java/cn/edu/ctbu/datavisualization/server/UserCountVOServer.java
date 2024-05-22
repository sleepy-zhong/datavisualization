package cn.edu.ctbu.datavisualization.server;

import cn.edu.ctbu.datavisualization.dao.vo.UserCountVO;

import java.util.List;

public interface UserCountVOServer {
    List<UserCountVO> countUserNumber();

}
