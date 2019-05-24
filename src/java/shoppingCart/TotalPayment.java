package shoppingCart;

public class TotalPayment extends Calculate{
    
    private double gymTotal;
    private double sportsTotal;
    private double membershipFee;
    private double discountAmount;
    
    
    
    public TotalPayment(double membershipFee, double gymTotal, double sportsTotal, double discountAmount){
        
        this.membershipFee = membershipFee;
        this.gymTotal = gymTotal;
        this.sportsTotal = sportsTotal;
        this.discountAmount = discountAmount;
    }
    
    public double getTotal(){
    
         Double totalPayment = 0.0;
            
         totalPayment = membershipFee + gymTotal + sportsTotal;
         
         if(discountAmount == 0){
             return totalPayment;
         }
         else {
              return totalPayment =  totalPayment - discountAmount;
         }  
    }
}
