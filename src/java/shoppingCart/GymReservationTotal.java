package shoppingCart;

public class GymReservationTotal extends Calculate{
    
    private Double gymTotal;
    private int yogaBookings;
    private int cardioBookings;
    private int pilateBookings;
    private int weightsBookings;
    
    //Overloading constructor
    public GymReservationTotal(int yogaBookings, int cardioBookings,int pilateBookings,int weightsBookings){
       
        this.yogaBookings = yogaBookings;
        this.cardioBookings = cardioBookings;
        this.pilateBookings = pilateBookings;
        this.weightsBookings = weightsBookings;
        
    }
    
    public double getTotal(){
        
        Double yogaPrice = 1000.0;
        Double yogaTotal = 0.0;
        Double cardioPrice = 1200.0;
        Double cardioTotal = 0.0;
        Double pilatesPrice = 1300.0;
        Double pilatesTotal = 0.0;
        Double weightsPrice = 1400.0;
        Double weightsTotal = 0.0;
        
            
            if(yogaBookings>0){
            	yogaTotal = yogaPrice*yogaBookings;
            	}else yogaTotal = 0.0;
            
            if(cardioBookings>0){
            	cardioTotal = cardioPrice*cardioBookings;
            	}else cardioTotal = 0.0;
            
            if(pilateBookings>0){
            	pilatesTotal = pilatesPrice*pilateBookings;
            	} else pilatesTotal = 0.0;
            
            if(weightsBookings>0){
            	weightsTotal = weightsPrice*weightsBookings;
            	} else weightsTotal = 0.0;
                         
        
        gymTotal = yogaTotal + cardioTotal + pilatesTotal + weightsTotal;
        
        return gymTotal;
    }
    
}
