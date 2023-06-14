package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WentidingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WentidingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WentidingdanView;


/**
 * 问题订单
 *
 * @author 
 * @email 
 * @date 2023-01-18 15:01:57
 */
public interface WentidingdanService extends IService<WentidingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WentidingdanVO> selectListVO(Wrapper<WentidingdanEntity> wrapper);
   	
   	WentidingdanVO selectVO(@Param("ew") Wrapper<WentidingdanEntity> wrapper);
   	
   	List<WentidingdanView> selectListView(Wrapper<WentidingdanEntity> wrapper);
   	
   	WentidingdanView selectView(@Param("ew") Wrapper<WentidingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WentidingdanEntity> wrapper);
   	

}

