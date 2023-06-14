package com.entity.vo;

import com.entity.SijiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 司机
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public class SijiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 身份证
	 */
	
	private String shenfenzheng;
		
	/**
	 * 年龄
	 */
	
	private String nianling;
		
	/**
	 * 驾驶证类型
	 */
	
	private String jiashizhengleixing;
		
	/**
	 * 驾驶证号码
	 */
	
	private String jiashizhenghaoma;
		
	/**
	 * 头像
	 */
	
	private String touxiang;
		
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
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：身份证
	 */
	 
	public void setShenfenzheng(String shenfenzheng) {
		this.shenfenzheng = shenfenzheng;
	}
	
	/**
	 * 获取：身份证
	 */
	public String getShenfenzheng() {
		return shenfenzheng;
	}
				
	
	/**
	 * 设置：年龄
	 */
	 
	public void setNianling(String nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年龄
	 */
	public String getNianling() {
		return nianling;
	}
				
	
	/**
	 * 设置：驾驶证类型
	 */
	 
	public void setJiashizhengleixing(String jiashizhengleixing) {
		this.jiashizhengleixing = jiashizhengleixing;
	}
	
	/**
	 * 获取：驾驶证类型
	 */
	public String getJiashizhengleixing() {
		return jiashizhengleixing;
	}
				
	
	/**
	 * 设置：驾驶证号码
	 */
	 
	public void setJiashizhenghaoma(String jiashizhenghaoma) {
		this.jiashizhenghaoma = jiashizhenghaoma;
	}
	
	/**
	 * 获取：驾驶证号码
	 */
	public String getJiashizhenghaoma() {
		return jiashizhenghaoma;
	}
				
	
	/**
	 * 设置：头像
	 */
	 
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
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
			
}
