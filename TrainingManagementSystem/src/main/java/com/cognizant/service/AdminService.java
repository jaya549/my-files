package com.cognizant.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Admin;
@Repository
public interface AdminService extends JpaRepository<Admin, String> {

}
