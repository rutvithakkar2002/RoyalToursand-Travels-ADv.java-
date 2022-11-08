package com.bean;

public class PackageBean {

	private int packageId;
	private String packageName;
	private String destination;
	private String timeDuration;
	private String transportationFacility;
	private String charge;
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getTimeDuration() {
		return timeDuration;
	}
	public void setTimeDuration(String timeDuration) {
		this.timeDuration = timeDuration;
	}
	public String getTransportationFacility() {
		return transportationFacility;
	}
	public void setTransportationFacility(String transportationFacility) {
		this.transportationFacility = transportationFacility;
	}
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}	
}
