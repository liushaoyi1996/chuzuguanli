package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.WentidingdanDao;
import com.entity.WentidingdanEntity;
import com.service.WentidingdanService;
import com.entity.vo.WentidingdanVO;
import com.entity.view.WentidingdanView;

@Service("wentidingdanService")
public class WentidingdanServiceImpl extends ServiceImpl<WentidingdanDao, WentidingdanEntity> implements WentidingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WentidingdanEntity> page = this.selectPage(
                new Query<WentidingdanEntity>(params).getPage(),
                new EntityWrapper<WentidingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WentidingdanEntity> wrapper) {
		  Page<WentidingdanView> page =new Query<WentidingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WentidingdanVO> selectListVO(Wrapper<WentidingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WentidingdanVO selectVO(Wrapper<WentidingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WentidingdanView> selectListView(Wrapper<WentidingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WentidingdanView selectView(Wrapper<WentidingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
