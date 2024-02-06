package model;

public class Electric {
	private int fid;
	private int uid;
	private String date;
	private int meterReading;
	private String commants;
	private double elco;
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getMeterReading() {
		return meterReading;
	}
	public void setMeterReading(int meterReading) {
		this.meterReading = meterReading;
	}
	public String getCommants() {
		return commants;
	}
	public void setCommants(String commants) {
		this.commants = commants;
	}
	public double getElco() {
		return elco;
	}
	public void setElco(double elco) {
		this.elco = elco;
	}
	
}