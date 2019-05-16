package com.oracle.web.test;


import static org.junit.Assert.*;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.oracle.web.mapper.AdminMapper;
import com.oralce.web.bean.Admin;
 
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
public class TestMapper {

	@Autowired
	private AdminMapper adminMapper;
	
	 
	 
	@Test
	public void test1() {
		//PageHelper.startPage(1, 3);
		 
		
		 Admin  list=this.adminMapper.selectByPrimaryKey(44);
		 
			
			System.out.println(list.toString());
	 
	}
	
 
	
}
