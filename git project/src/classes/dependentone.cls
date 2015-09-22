public class dependentone {
public String selecteddepval { get; set; }
public String myVal { get; set; }
 public List<SelectOption> getdepval() {
 List<SelectOption> options = new List<SelectOption>();
 if(myval==null)
 return null;
 else
 {
  if(myVal.contains('1s')){
 options.add(new SelectOption('One','1'));
 options.add(new SelectOption('Two','2'));
 options.add(new SelectOption('Three','3'));
 options.add(new SelectOption('Four','4'));
 options.add(new SelectOption('Five','5'));
 }
 
 if(myVal.contains('2s')){
 options.add(new SelectOption('Ten','10'));
 options.add(new SelectOption('Twenty','20'));
 options.add(new SelectOption('Thirty','30'));
 options.add(new SelectOption('Fourty','40'));
 options.add(new SelectOption('Fifty','50'));
 }
if(myVal.contains('3s')){
 options.add(new SelectOption('One Hundreed','100'));
 options.add(new SelectOption('Two Hundreed','200'));
 options.add(new SelectOption('Three Hundreed','300'));
 options.add(new SelectOption('Four Hundreed','400'));
 options.add(new SelectOption('Five Hundreed','500'));
 }
 if(myVal.contains('4s')){
 options.add(new SelectOption('One Thousand','1000'));
 options.add(new SelectOption('Two Thousand','2000'));
 options.add(new SelectOption('Three Thousand','3000'));
 options.add(new SelectOption('Four Thousand','4000'));
 options.add(new SelectOption('Five Thousand','5000'));
 }
 if(myVal.contains('5s')){
 options.add(new SelectOption('Ten Thousand','1000'));
 options.add(new SelectOption('Twenty Thousand','2000'));
 options.add(new SelectOption('Thrty Thousand','3000'));
 options.add(new SelectOption('Fourty Thousand','400,00'));
 options.add(new SelectOption('Fivty Thousand','500,00'));
 }
 }
 return options;
 
 }
}