package com.entity.model;

import com.entity.GongzixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 工资信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public class GongzixinxiModel  implements Serializable {
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
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 日营运
	 */
	
	private String riyingyun;
		
	/**
	 * 营运里程
	 */
	
	private String yingyunlicheng;
		
	/**
	 * 营运收入
	 */
	
	private String yingyunshouru;
		
	/**
	 * 工资收入
	 */
	
	private String gongzishouru;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
				
	
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
	 * 设置：日营运
	 */
	 
	public void setRiyingyun(String riyingyun) {
		this.riyingyun = riyingyun;
	}
	
	/**
	 * 获取：日营运
	 */
	public String getRiyingyun() {
		return riyingyun;
	}
				
	
	/**
	 * 设置：营运里程
	 */
	 
	public void setYingyunlicheng(String yingyunlicheng) {
		this.yingyunlicheng = yingyunlicheng;
	}
	
	/**
	 * 获取：营运里程
	 */
	public String getYingyunlicheng() {
		return yingyunlicheng;
	}
				
	
	/**
	 * 设置：营运收入
	 */
	 
	public void setYingyunshouru(String yingyunshouru) {
		this.yingyunshouru = yingyunshouru;
	}
	
	/**
	 * 获取：营运收入
	 */
	public String getYingyunshouru() {
		return yingyunshouru;
	}
				
	
	/**
	 * 设置：工资收入
	 */
	 
	public void setGongzishouru(String gongzishouru) {
		this.gongzishouru = gongzishouru;
	}
	
	/**
	 * 获取：工资收入
	 */
	public String getGongzishouru() {
		return gongzishouru;
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
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
			
}
