package cn.edu.ctbu.datavisualization;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@MapperScan("cn.edu.ctbu.datavisualization.mapper")
@EnableSwagger2
public class DatavisualizationApplication {

    public static void main(String[] args) {
        SpringApplication.run(DatavisualizationApplication.class, args);
    }

}
