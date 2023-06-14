package com.entity.view;

import com.entity.WentidingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 问题订单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
@TableName("wentidingdan")
public class WentidingdanView  extends WentidingdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WentidingdanView(){
	}
 
 	public WentidingdanView(WentidingdanEntity wentidingdanEntity){
 	try {
			BeanUtils.copyProperties(this, wentidingdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
