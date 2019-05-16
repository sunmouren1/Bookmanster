package com.oracle.web.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.web.service.BookService;
import com.oracle.web.service.FenleiService;
import com.oralce.web.bean.Book;
import com.oralce.web.bean.Fenlei;






@Controller
@Scope(value="prototype")
public class BookHandler {
  
    
	private static final String NONE = null;
	@Autowired
	private BookService bookService;
	
	@Autowired
	private FenleiService fenleiService;
	
	private Book book;
	
	

	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String  add(Book book){
		
		int i = this.bookService.save(book);
		
		if(i>0){
			System.out.println("成功");
		return "redirect:/showBook.jsp";	
	}else{
		return "redirect:/register2.jsp";
	}
	
	}

	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String selectBooks(HttpServletRequest request) {// 全查

		List<Book> mlist = this.bookService.list();

		System.out.println(mlist);

		request.setAttribute("mlist", mlist);

		return "showBook";
	}
	@RequestMapping(value="deleteBook",method=RequestMethod.DELETE)
	public String deleteBook(Integer id){
		
		Book book=new Book();
		
		this.bookService.delete(book);
		
		return "redirect:/books";
		
	
	}
	
	@RequestMapping(value="/book/{id}",method=RequestMethod.GET)
	public String updateUI(@PathVariable(value="id") Integer id ,HttpSession session){
		
		List<Fenlei> flist=this.fenleiService.list();
		
		session.setAttribute("flist", flist);
		
		Book b=this.bookService.queryOne(id);
		
		session.setAttribute("b", b);
		
		return "redirect:/xiugaiBook.jsp";
		
	}
	
	@RequestMapping(value="/book",method=RequestMethod.GET)
	public String update(Book book){
		
	bookService.update(book);
	
	
		return "redirect:/books";
		
	}
	/*@RequestMapping(value = "/showByPage", method = RequestMethod.GET)
	public String showByPage( Integer pageNow, HttpServletRequest request) {

      //  int pageSize = 2;
		
		if(pageNow==null){
			
			pageNow=1;
		}
		
		pageBean<Book> pb=this.bookService.showByPage(pageNow);
		
		request.setAttribute("pb", pb);
		
		return "list";
	}*/
}
