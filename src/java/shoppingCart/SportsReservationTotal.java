package shoppingCart;

public class SportsReservationTotal extends Calculate {

    private int badmintonBookings;
    private int tennisBookings;
    private int futsalBookings;
    private int swimmingBookings;

    public SportsReservationTotal(int badmintonBookings, int tennisBookings, int futsalBookings, int swimmingBookings) {

        this.badmintonBookings = badmintonBookings;
        this.tennisBookings = tennisBookings;
        this.futsalBookings = futsalBookings;
        this.swimmingBookings = swimmingBookings;

    }

    public double getTotal() {
        
        Double badmintonPrice = 1000.0;
        Double badmintonTotal = 0.0;
        Double tennisPrice = 1200.0;
        Double tennisTotal = 0.0;
        Double futsalPrice = 1300.0;
        Double futsalTotal = 0.0;
        Double swimmingPrice = 1400.0;
        Double swimmingTotal = 0.0;
        Double SportsTotal;


            if (badmintonBookings > 0) {
                badmintonTotal = badmintonPrice * badmintonBookings;
            } else {
                badmintonTotal = 0.0;
            }

            if (tennisBookings > 0) {
                tennisTotal = tennisPrice * tennisBookings;
            } else {
                tennisTotal = 0.0;
            }

            if (futsalBookings > 0) {
                futsalTotal = futsalPrice * futsalBookings;
            } else {
                futsalTotal = 0.0;
            }

            if (swimmingBookings > 0) {
                swimmingTotal = swimmingPrice * swimmingBookings;
            } else {
                swimmingTotal = 0.0;
            }

            SportsTotal = badmintonTotal + tennisTotal + futsalTotal + swimmingTotal;

            return SportsTotal;
        
    }
}
