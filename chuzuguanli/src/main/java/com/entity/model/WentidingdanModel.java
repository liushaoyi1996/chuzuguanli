package com.entity.model;

import com.entity.WentidingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 问题订单
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public class WentidingdanModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 出租车编号
	 */
	
	private String chuzuchebianhao;
		
	/**
	 * 车牌号
	 */
	
	private String chepaihao;
		
	/**
	 * 工号
	 */
	
	private String gonghao;
		
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
	 * 反馈时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fankuishijian;
		
	/**
	 * 情况反馈
	 */
	
	private String qingkuangfankui;
		
	/**
	 * 回复内容
	 */
	
	private String shhf;
				
	
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
	 * 设置：反馈时间
	 */
	 
	public void setFankuishijian(Date fankuishijian) {
		this.fankuishijian = fankuishijian;
	}
	
	/**
	 * 获取：反馈时间
	 */
	public Date getFankuishijian() {
		return fankuishijian;
	}
				
	
	/**
	 * 设置：情况反馈
	 */
	 
	public void setQingkuangfankui(String qingkuangfankui) {
		this.qingkuangfankui = qingkuangfankui;
	}
	
	/**
	 * 获取：情况反馈
	 */
	public String getQingkuangfankui() {
		return qingkuangfankui;
	}
				
	
	/**
	 * 设置：回复内容
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：回复内容
	 */
	public String getShhf() {
		return shhf;
	}
			
}
