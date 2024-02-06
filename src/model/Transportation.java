package model;

public class Transportation {
    private double fuelConsumed;  // in liters
    private double distanceTravelled;  // in kilometers
    private double emissionFactor;  // carbon emission factor per liter

    // Constructors, getters, and setters
    public Transportation() {
    }

    public Transportation(double fuelConsumed, double distanceTravelled, double emissionFactor) {
        this.fuelConsumed = fuelConsumed;
        this.distanceTravelled = distanceTravelled;
        this.emissionFactor = emissionFactor;
    }

    public double getFuelConsumed() {
        return fuelConsumed;
    }

    public void setFuelConsumed(double fuelConsumed) {
        this.fuelConsumed = fuelConsumed;
    }

    public double getDistanceTravelled() {
        return distanceTravelled;
    }

    public void setDistanceTravelled(double distanceTravelled) {
        this.distanceTravelled = distanceTravelled;
    }

    public double getEmissionFactor() {
        return emissionFactor;
    }

    public void setEmissionFactor(double emissionFactor) {
        this.emissionFactor = emissionFactor;
    }

    // Method to calculate carbon emissions for transportation
    public double calculateTransportationCarbon() {
        return (fuelConsumed/distanceTravelled) * emissionFactor;
    }

    @Override
    public String toString() {
        return "Transportation{" +
                "fuelConsumed=" + fuelConsumed +
                ", distanceTravelled=" + distanceTravelled +
                ", emissionFactor=" + emissionFactor +
                '}';
    }
}
