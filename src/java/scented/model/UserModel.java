/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package scented.model;

public class UserModel {
    private String userName;
    private String password;
    private String firstName;
    private String middleName;
    private String lastName;
    private String completeAddress;
    private String birthday;
    private String mobileNumber;
    private String role;

    public String getUserName () { 
        return userName;
    }

    public void setUserName (String userName) {
        this.userName = userName;
    } 

    public String getPassword () { 
    return password;
    }

    public void setPassword (String password) {
        this.password = password;
    }
    
    public String getFirstName () { 
    return firstName;
    }

    public void setFirstName (String firstName) {
        this.firstName = firstName;
    } 

    public String getMiddleName () { 
    return middleName;
    }

    public void setMiddleName (String middleName) {
        this.middleName = middleName;
    } 

    public String getLastName () { 
    return lastName;
    }

    public void setLastName (String lastName) {
        this.lastName = lastName;
    } 

    public String getCompleteAddress () { 
    return completeAddress;
    }

    public void setCompleteAddress (String completeAddress) {
        this.completeAddress = completeAddress;
    } 

    public String getBirthday () { 
    return birthday;
    }

    public void setBirthday (String birthday) {
        this.birthday = birthday;
    } 

    public String getmobileNumber () { 
    return mobileNumber;
    }

    public void setmobileNumber (String mobileNumber) {
        this.mobileNumber = mobileNumber;
    } 
    
    public String getRole() { 
    return role;
    }

    public void setRole (String role) {
        this.role = role;
    } 
}

