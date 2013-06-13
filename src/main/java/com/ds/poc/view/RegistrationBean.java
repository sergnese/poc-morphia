package com.ds.poc.view;

import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;

import com.ds.poc.model.User;
import com.google.code.morphia.dao.DAO;

@Named
@Scope("request")
public class RegistrationBean {

	// properties
	private User user;

	@Autowired
	@Qualifier("my")
	private DAO<User, String> userDao;

	/**
	 * default empty constructor
	 */
	public RegistrationBean() {
		this.user = new User();
	}

	/**
	 * Method that is backed to a submit button of a form.
	 */
	public String send() {
		this.getUserDao().save(this.getUser());
		return "index2";
	}

	// -------------------getter & setter

	public DAO<User, String> getUserDao() {
		return userDao;
	}

	public void setUserDao(DAO<User, String> userDao) {
		this.userDao = userDao;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
