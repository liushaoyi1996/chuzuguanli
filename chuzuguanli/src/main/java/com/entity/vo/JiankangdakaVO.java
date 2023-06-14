package com.entity.vo;

import com.entity.JiankangdakaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 健康打卡
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public class JiankangdakaVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
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
	 * 体温
	 */
	
	private String tiwen;
		
	/**
	 * 健康状态
	 */
	
	private String jiankangzhuangtai;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
				
	
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
	 * 设置：体温
	 */
	 
	public void setTiwen(String tiwen) {
		this.tiwen = tiwen;
	}
	
	/**
	 * 获取：体温
	 */
	public String getTiwen() {
		return tiwen;
	}
				
	
	/**
	 * 设置：健康状态
	 */
	 
	public void setJiankangzhuangtai(String jiankangzhuangtai) {
		this.jiankangzhuangtai = jiankangzhuangtai;
	}
	
	/**
	 * 获取：健康状态
	 */
	public String getJiankangzhuangtai() {
		return jiankangzhuangtai;
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
			
}
