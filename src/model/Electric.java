package model;

public class Electric {
    private String date;
    private int meterReading;
    private String customerName;
    private String customerAddress;
    private String customerEmail;
    private String customerPhone;
    private String meterNumber;
    private String comments;

    // Constructors, getters, and setters
    public Electric() {
    }

    public Electric(String date, int meterReading, String customerName, String customerAddress, String customerEmail, String customerPhone, String meterNumber, String comments) {
        this.date = date;
        this.meterReading = meterReading;
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerEmail = customerEmail;
        this.customerPhone = customerPhone;
        this.meterNumber = meterNumber;
        this.comments = comments;
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

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getMeterNumber() {
        return meterNumber;
    }

    public void setMeterNumber(String meterNumber) {
        this.meterNumber = meterNumber;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Electric{" +
                "date='" + date + '\'' +
                ", meterReading=" + meterReading +
                ", customerName='" + customerName + '\'' +
                ", customerAddress='" + customerAddress + '\'' +
                ", customerEmail='" + customerEmail + '\'' +
                ", customerPhone='" + customerPhone + '\'' +
                ", meterNumber='" + meterNumber + '\'' +
                ", comments='" + comments + '\'' +
                '}';
    }
}
