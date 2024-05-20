package cn.edu.ctbu.datavisualization.server;

import cn.edu.ctbu.datavisualization.dao.Sum;

import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-16
 **/
public interface SumServer {
    List<Sum> selectAllSum();
}
