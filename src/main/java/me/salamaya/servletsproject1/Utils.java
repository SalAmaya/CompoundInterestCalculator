package me.salamaya.servletsproject1;

public class Utils {


    public static double calculateCompoundInterest(double principle, double interest, int years, int compoundingPeriod){

        return Math.round(principle * Math.pow((1 + ((double) interest / compoundingPeriod)), (compoundingPeriod * years)));

    }

}


