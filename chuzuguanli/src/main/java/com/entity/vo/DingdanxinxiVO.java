package com.entity.vo;

import com.entity.DingdanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 订单信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public class DingdanxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 出租车编号
	 */
	
	private String chuzuchebianhao;
		
	/**
	 * 出租车品牌
	 */
	
	private String chuzuchepinpai;
		
	/**
	 * 车牌号
	 */
	
	private String chepaihao;
		
	/**
	 * 工号
	 */
	
	private String gonghao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 乘客姓名
	 */
	
	private String chengkexingming;
		
	/**
	 * 乘车点
	 */
	
	private String chengchedian;
		
	/**
	 * 目的地
	 */
	
	private String mudedi;
		
	/**
	 * 时长
	 */
	
	private String shizhang;
		
	/**
	 * 里程
	 */
	
	private String licheng;
		
	/**
	 * 总费用
	 */
	
	private String zongfeiyong;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
	/**
	 * 设置：出租车编号
	 */
	 
	public void setChuzuchebianhao(String chuzuchebianhao) {
		this.chuzuchebianhao = chuzuchebianhao;
	}
	
	/**
	 * 获取：出租车编号
	 */
	public String getChuzuchebianhao() {
		return chuzuchebianhao;
	}
				
	
	/**
	 * 设置：出租车品牌
	 */
	 
	public void setChuzuchepinpai(String chuzuchepinpai) {
		this.chuzuchepinpai = chuzuchepinpai;
	}
	
	/**
	 * 获取：出租车品牌
	 */
	public String getChuzuchepinpai() {
		return chuzuchepinpai;
	}
				
	
	/**
	 * 设置：车牌号
	 */
	 
	public void setChepaihao(String chepaihao) {
		this.chepaihao = chepaihao;
	}
	
	/**
	 * 获取：车牌号
	 */
	public String getChepaihao() {
		return chepaihao;
	}
				
	
	/**
	 * 设置：工号
	 */
	 
	public void setGonghao(String gonghao) {
		this.gonghao = gonghao;
	}
	
	/**
	 * 获取：工号
	 */
	public String getGonghao() {
		return gonghao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：乘客姓名
	 */
	 
	public void setChengkexingming(String chengkexingming) {
		this.chengkexingming = chengkexingming;
	}
	
	/**
	 * 获取：乘客姓名
	 */
	public String getChengkexingming() {
		return chengkexingming;
	}
				
	
	/**
	 * 设置：乘车点
	 */
	 
	public void setChengchedian(String chengchedian) {
		this.chengchedian = chengchedian;
	}
	
	/**
	 * 获取：乘车点
	 */
	public String getChengchedian() {
		return chengchedian;
	}
				
	
	/**
	 * 设置：目的地
	 */
	 
	public void setMudedi(String mudedi) {
		this.mudedi = mudedi;
	}
	
	/**
	 * 获取：目的地
	 */
	public String getMudedi() {
		return mudedi;
	}
				
	
	/**
	 * 设置：时长
	 */
	 
	public void setShizhang(String shizhang) {
		this.shizhang = shizhang;
	}
	
	/**
	 * 获取：时长
	 */
	public String getShizhang() {
		return shizhang;
	}
				
	
	/**
	 * 设置：里程
	 */
	 
	public void setLicheng(String licheng) {
		this.licheng = licheng;
	}
	
	/**
	 * 获取：里程
	 */
	public String getLicheng() {
		return licheng;
	}
				
	
	/**
	 * 设置：总费用
	 */
	 
	public void setZongfeiyong(String zongfeiyong) {
		this.zongfeiyong = zongfeiyong;
	}
	
	/**
	 * 获取：总费用
	 */
	public String getZongfeiyong() {
		return zongfeiyong;
	}
				
	
	/**
	 * 设置：登记时间
	 */
	 
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
