/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ocm;

/**
 *
 * @author elrain
 */
public class Profile {
    
    private String strLogin;
    private String strPassword;
    
    public String getLogin(){
        return this.strLogin;
    }
    public void setLogin(String strLogin){
        this.strLogin = strLogin;
    }
    
    public String getPassword(){
        return this.strPassword;
    }
    public void setPassword(String strPassword){
        this.strPassword = strPassword;
    }
}
