package com.oracle.web.service;

import java.util.List;

import com.oralce.web.bean.Book;

public interface BookService {

	int save(Book book);

	List<Book> list();

	void delete(Book book);

	Book queryOne(Integer id);

	void update(Book book);

	

}
