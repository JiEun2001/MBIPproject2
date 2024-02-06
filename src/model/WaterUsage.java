package model;

public class WaterUsage {
	private String uid;
	private Float householdWaterUsage;
	private Float outdoorWaterUsage;
	private double CF;

	public double getCF() {
		return CF;
	}
	public void setCF(double cF) {
		CF = cF;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
    public Float getHouseholdWaterUsage() {
		return householdWaterUsage;
	}
	public void setHouseholdWaterUsage(Float householdWaterUsage) {
		this.householdWaterUsage = householdWaterUsage;
	}
	public Float getOutdoorWaterUsage() {
		return outdoorWaterUsage;
	}
	public void setOutdoorWaterUsage(Float outdoorWaterUsage) {
		this.outdoorWaterUsage = outdoorWaterUsage;
	}
	
}
