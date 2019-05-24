package shoppingCart;

public class MemberShipFee extends Calculate {

    private String membershipType;

    public MemberShipFee(String membershipType) {
        this.membershipType = membershipType;
    }

    public double getTotal() {

        double membershipFee = 0.0;
        
        switch (membershipType) {
            case "Platinum":
                membershipFee = 5000.0;
                break;
            case "Gold":
                membershipFee = 3000.0;
                break;
            case "Silver":
                membershipFee = 2000.0;
                break;
            case "Bronze":
                membershipFee = 1000.0;
                break;
        }

        return membershipFee;
    }
}
