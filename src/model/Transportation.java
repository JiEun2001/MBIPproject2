package model;

public class Transportation {
	private int uid;
	private String vehicle_type;
	private double transportation_carbon;
	private String comment;
    private double fuelConsumed;  // in liters
    private double distanceTravelled;  // in kilometers
    private double emissionFactor;  // carbon emission factor per liter


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

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}

	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}

	public double getTransportation_carbon() {
		return transportation_carbon;
	}

	public void setTransportation_carbon(double transportation_carbon) {
		this.transportation_carbon = transportation_carbon;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
}
