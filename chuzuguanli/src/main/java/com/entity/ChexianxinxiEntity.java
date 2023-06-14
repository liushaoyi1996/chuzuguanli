package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 车险信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
@TableName("chexianxinxi")
public class ChexianxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ChexianxinxiEntity() {
		
	}
	
	public ChexianxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 合同编号
	 */
					
	private String hetongbianhao;
	
	/**
	 * 工号
	 */
					
	private String gonghao;
	
	/**
	 * 出租车品牌
	 */
					
	private String chuzuchepinpai;
	
	/**
	 * 车牌号
	 */
					
	private String chepaihao;
	
	/**
	 * 出租车编号
	 */
					
	private String chuzuchebianhao;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 保险公司
	 */
					
	private String baoxiangongsi;
	
	/**
	 * 开始时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date kaishishijian;
	
	/**
	 * 到期时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date daoqishijian;
	
	/**
	 * 保险费
	 */
					
	private String baoxianfei;
	
	/**
	 * 合同
	 */
					
	private String hetong;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：合同编号
	 */
	public void setHetongbianhao(String hetongbianhao) {
		this.hetongbianhao = hetongbianhao;
	}
	/**
	 * 获取：合同编号
	 */
	public String getHetongbianhao() {
		return hetongbianhao;
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
	 * 设置：保险公司
	 */
	public void setBaoxiangongsi(String baoxiangongsi) {
		this.baoxiangongsi = baoxiangongsi;
	}
	/**
	 * 获取：保险公司
	 */
	public String getBaoxiangongsi() {
		return baoxiangongsi;
	}
	/**
	 * 设置：开始时间
	 */
	public void setKaishishijian(Date kaishishijian) {
		this.kaishishijian = kaishishijian;
	}
	/**
	 * 获取：开始时间
	 */
	public Date getKaishishijian() {
		return kaishishijian;
	}
	/**
	 * 设置：到期时间
	 */
	public void setDaoqishijian(Date daoqishijian) {
		this.daoqishijian = daoqishijian;
	}
	/**
	 * 获取：到期时间
	 */
	public Date getDaoqishijian() {
		return daoqishijian;
	}
	/**
	 * 设置：保险费
	 */
	public void setBaoxianfei(String baoxianfei) {
		this.baoxianfei = baoxianfei;
	}
	/**
	 * 获取：保险费
	 */
	public String getBaoxianfei() {
		return baoxianfei;
	}
	/**
	 * 设置：合同
	 */
	public void setHetong(String hetong) {
		this.hetong = hetong;
	}
	/**
	 * 获取：合同
	 */
	public String getHetong() {
		return hetong;
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
