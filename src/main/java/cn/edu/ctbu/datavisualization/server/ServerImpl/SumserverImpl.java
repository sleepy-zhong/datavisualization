package cn.edu.ctbu.datavisualization.server.ServerImpl;

import cn.edu.ctbu.datavisualization.dao.Sum;
import cn.edu.ctbu.datavisualization.mapper.SumMapper;
import cn.edu.ctbu.datavisualization.server.SumServer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-16
 **/
@Service
public class SumserverImpl  implements SumServer {

    @Resource
    private SumMapper sumMapper;

    @Override
    public List<Sum> selectAllSum() {
        return sumMapper.selectAllSum();
    }
}
