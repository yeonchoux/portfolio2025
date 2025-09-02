package com.suyeon.shopProject.member;

import java.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

public class MemberDTO {

    private int id;
    private String email;
    private String password;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate birth;

    private String address;

    // getter & setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public LocalDate getBirth() {
        return birth;
    }

    public void setBirth(LocalDate birth) {
        this.birth = birth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "MemberDTO [id=" + id + ", email=" + email + ", password=" + password + ", birth=" + birth
                + ", address=" + address + "]";
    }
}
