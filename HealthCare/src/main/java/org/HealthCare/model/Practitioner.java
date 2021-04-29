package org.HealthCare.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Practitioner {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NotEmpty
	@NotNull
	@Size(min=2, max=30)
	private String name;
	@NotEmpty
	private String password;
	@NotEmpty
	private String specialist;
	@NotEmpty
	private String address;
	@NotEmpty
	private String emailId;
	@NotNull
	private long contactNumber;
	
	
	public Practitioner() {
		super();
	}
	public Practitioner(@NotEmpty @NotNull @Size(min = 2, max = 30) String name, @NotEmpty String password,
			@NotEmpty String specialist, @NotEmpty String address, @NotEmpty String emailId,
			@NotNull long contactNumber) {
		super();
		this.name = name;
		this.password = password;
		this.specialist = specialist;
		this.address = address;
		this.emailId = emailId;
		this.contactNumber = contactNumber;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	

}
