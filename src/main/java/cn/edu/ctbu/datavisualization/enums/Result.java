package cn.edu.ctbu.datavisualization.enums;

import lombok.Data;

import java.io.Serializable;

/**
 * @ClassName Result
 * @Description 返回给客户端的结果对象
 * @Author Xup
 * @Date 2024-05-13
 **/
@Data
public class Result implements Serializable {

    private static final long serialVersionUID = -3948389268046368059L;

    private Integer code;

    private String msg;

    private Object data;

    public Result() {
    }

    public Result(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public static Result success() {
        Result result = new Result();
        result.setResultCode(cn.edu.ctbu.datavisualization.enums.ResultCode.SUCCESS);
        return result;
    }

    public static Result success(Object data) {
        Result result = new Result();
        result.setResultCode(cn.edu.ctbu.datavisualization.enums.ResultCode.SUCCESS);
        result.setData(data);
        return result;
    }

    public static Result failure(cn.edu.ctbu.datavisualization.enums.ResultCode resultCode) {
        Result result = new Result();
        result.setResultCode(resultCode);
        return result;
    }

    public static Result failure(cn.edu.ctbu.datavisualization.enums.ResultCode resultCode, Object data) {
        Result result = new Result();
        result.setResultCode(resultCode);
        result.setData(data);
        return result;
    }

    public void setResultCode(cn.edu.ctbu.datavisualization.enums.ResultCode code) {
        this.code = code.code();
        this.msg = code.message();
    }
}