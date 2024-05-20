package cn.edu.ctbu.datavisualization.dao;

import lombok.Data;

/**
 * @description:
 * @author: Xup
 * @create: 2024-05-13
 **/
@Data
public class Consumer {
    private int id;
    private Float food;
    private Float clothing;
    private Float residential;
    private Float necessities;
    private Float transportation;
    private Float education;
    private Float Healthcare;
    private Float other;
    private String date;

}
