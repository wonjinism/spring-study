package kr.kfc.kiosk.VO;

public class Order {
	private int order_seq;
	private int order_type;
	private String order_date;
	private int order_number;
	private int consumer_seq;
	private int order_status;
	private String phone;
	private String address;

	public Order() {
	}

	public Order(int order_seq, int order_type, String order_date, int order_number, int consumer_seq, int order_status,
			String phone, String address) {
		this.order_seq = order_seq;
		this.order_type = order_type;
		this.order_date = order_date;
		this.order_number = order_number;
		this.consumer_seq = consumer_seq;
		this.order_status = order_status;
		this.phone = phone;
		this.address = address;
	}

	public int getOrder_seq() {
		return order_seq;
	}

	public void setOrder_seq(int order_seq) {
		this.order_seq = order_seq;
	}

	public int getOrder_type() {
		return order_type;
	}

	public void setOrder_type(int order_type) {
		this.order_type = order_type;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	public int getOrder_number() {
		return order_number;
	}

	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}

	public int getConsumer_seq() {
		return consumer_seq;
	}

	public void setConsumer_seq(int consumer_seq) {
		this.consumer_seq = consumer_seq;
	}

	public int getOrder_status() {
		return order_status;
	}

	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Order [order_seq=" + order_seq + ", order_type=" + order_type + ", order_date=" + order_date
				+ ", order_number=" + order_number + ", consumer_seq=" + consumer_seq + ", order_status=" + order_status
				+ ", phone=" + phone + ", address=" + address + "]";
	}

}
