import java.util.*;
import java.text.DecimalFormat;

public class CurrencyConverter {

        public static void main(String[] args) {

		if (args.length == 0){
   		 	System.out.println("No input detected. Please input your amount and then currency");
    			System.exit(0);
  		} else{

                double amount, dollar, pound, code, euro;

                DecimalFormat f = new DecimalFormat("##.##");	

		if(Character.isDigit(args[1].charAt(0))){
		var temp = args[0];
		args[0] = args[1];
		args[1] = temp;

		System.out.println("Wrong Format Entered");
		}

                amount = Integer.parseInt(args[0]);

                String currency = args[1].toLowerCase();

                // For amounts Conversion
                switch (currency){
                        case "dollars" :
                                // For Dollar Conversion
                                pound = amount * 0.74;
                                System.out.println(amount + " Dollars = " + f.format(pound) + " Pounds");
                                euro = amount * 0.88;
                                System.out.println(amount + " Dollars = " + f.format(euro) + " Euros");
                                break;
                        case "pounds":
                                // For Pound Conversion
                                dollar = amount * 1.36;
                                System.out.println(amount + " Pounds = " + f.format(dollar) + " Dollars");
                                euro = amount * 1.19;
                                System.out.println(amount + " Pounds = " + f.format(euro) + " Euros");
                                break;
                        case "euros":
                                // For Euro Conversion
                                dollar = amount * 1.13;
                                System.out.println(amount + " Euros = " + f.format(dollar) + " Dollars");
                                pound = amount * 0.84;
                                System.out.println(amount + " Euros = " + f.format(pound) + " Pounds");
                                break;
                }
                System.out.println("Thank you for using the converter.");
		}
        }

}

