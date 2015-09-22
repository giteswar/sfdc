public with sharing class AccountTaskClass7 {  
  public decimal act_annual_rev { get; set; }  
  public String act_ind { get; set; }  
  public String act_name { get; set; }  
  public integer act_noe { get; set; }  
  public boolean displayPopUp { get; set; }  
  public String acct { get; set; }  
  public PageReference showPopup() {//popupmethod  
  displayPopup = true;  
  return null;  
  }  
 public PageReference closePopup() {//hide method  
  displayPopup = false;  
  return null;  
  }  
 public PageReference detailPage() {// action method which shows popup on selection  
  displayPopup = true;  
  system.debug('Select Item Id is ::: '+ApexPages.currentPage().getParameters().get('id'));  
  String id = ApexPages.currentPage().getParameters().get('id');  
  account ac = [select id,name,NumberOfEmployees,Industry,AnnualRevenue from account where id  
 =: id];  
  act_name = ac.name;  
  act_noe = ac.NumberOfEmployees;  
  act_ind = ac.Industry;  
  act_annual_rev = ac.AnnualRevenue;  
  return null;  
  }  
  public list<account> getGetAcountt() {  
  list<account> act_name = [select id,name from account];  
  return act_name;  
  }  
 }