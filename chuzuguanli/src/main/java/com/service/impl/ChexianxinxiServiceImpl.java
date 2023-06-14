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


import com.dao.ChexianxinxiDao;
import com.entity.ChexianxinxiEntity;
import com.service.ChexianxinxiService;
import com.entity.vo.ChexianxinxiVO;
import com.entity.view.ChexianxinxiView;

@Service("chexianxinxiService")
public class ChexianxinxiServiceImpl extends ServiceImpl<ChexianxinxiDao, ChexianxinxiEntity> implements ChexianxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChexianxinxiEntity> page = this.selectPage(
                new Query<ChexianxinxiEntity>(params).getPage(),
                new EntityWrapper<ChexianxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChexianxinxiEntity> wrapper) {
		  Page<ChexianxinxiView> page =new Query<ChexianxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChexianxinxiVO> selectListVO(Wrapper<ChexianxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChexianxinxiVO selectVO(Wrapper<ChexianxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChexianxinxiView> selectListView(Wrapper<ChexianxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChexianxinxiView selectView(Wrapper<ChexianxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
