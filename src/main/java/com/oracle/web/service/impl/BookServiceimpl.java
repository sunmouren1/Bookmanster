package com.oracle.web.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



import com.oracle.web.mapper.BookMapper;
import com.oracle.web.service.BookService;
import com.oralce.web.bean.Book;
@Service
public class BookServiceimpl implements BookService {
  
	@Autowired
	private BookMapper BookMapper;
	
	@Override
	@Transactional
	public int save(Book book) {
		// TODO Auto-generated method stub
		return this.BookMapper.insert(book);
	}

	@Override
	@Transactional
	public List<Book> list() {
		// TODO Auto-generated method stub
		return this.BookMapper.selectAll();
	}

	@Override
	@Transactional
	public void delete(Book book) {
		// TODO Auto-generated method stub
		this.BookMapper.deleteByPrimaryKey(book.getId());
	}

	@Override
	@Transactional
	public Book queryOne(Integer id) {
		// TODO Auto-generated method stub
		return this.BookMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Book book) {
		// TODO Auto-generated method stub
		
	}

	/*@Override
	@Transactional  
	public pageBean<Book> showByPage(Integer pageNow) {
      
		pageBean<Book> pb = new pageBean<Book>();

		
		PageHelper.startPage(pageNow, 2);
		
		List<Book> list = this.BookMapper.showByPageHelper();
		
		pb.setBeanList(list);
		
		//总记录数
		
		PageInfo<Book> pi=new PageInfo<Book>(list);
		
		//pb
		pb.setCounts((int) pi.getTotal());
		
		//当前页
		pb.setPageNow(pi.getPageNum());
		
		//每页显示的条数 自定义
		pb.setpageSize(pi.getPageSize());
		
		
		
		
		return pb;
	}
*/
}
