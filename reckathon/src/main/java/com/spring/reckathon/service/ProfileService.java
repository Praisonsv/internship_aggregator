package com.spring.reckathon.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.reckathon.dao.ExeQuery;
import com.spring.reckathon.model.Education;
import com.spring.reckathon.model.User;

@Service
public class ProfileService {

	@Autowired
	ExeQuery query;

	public User ShowProfile(String email) {
		User user = query.getUser(email);
		return user;
	}

	public void changePassword(String password, String email) {
		query.updatePassword(password, email);
	}

	public void changeName(String name, String email) {
		query.updateName(name, email);
	}

	public void changePhoneno(String phoneno, String email) {
		query.updatePhoneno(phoneno, email);
	}
	
	public void addEducation(String email, String degree, String fieldOfStudy, String institute , String startDate, String endDate, String percentage) {
		query.addEducation(email, degree, fieldOfStudy, institute, startDate, endDate, percentage);
	}

	public List<Education> getEducationList(String email) throws SQLException {
		return query.getEducationList(email);
	}

	public void updatedegree(String degree, String email) {
		query.updatedegree(degree, email);
	}

	public void updateFieldOfStudy(String fieldOfStudy, String email) {
		query.updateFieldOfStudy(fieldOfStudy, email);
	}

	public void updateInstitute(String institute, String email) {
		query.updateInstitute(institute, email);
	}

	public void updateStartDate(String startDate, String email) {
		query.updateStartDate(startDate, email);
	}

	public void updateEndDate(String endDate, String email) {
		query.updateEndDate(endDate, email);
	}

	public void updatePercentage(String percentage, String email) {
		query.updatePercentage(percentage, email);
	}
}
