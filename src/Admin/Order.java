package Admin;

public class Order {
	
	private int oID;
	private String oDetails;
	private float oTotal;
	/*private String oStatus;
	
	public Order() {
		oStatus = "To be collected";
	}
*/
	public void setoDetails(String oDetails) {
		this.oDetails = oDetails;
	}
	
	public void setoID(int oID) {
		this.oID = oID;
	}

	public void setoTotal(float oTotal) {
		this.oTotal = oTotal;
	}

	public String getoDetails() {
		return oDetails;
	}

	public float getoTotal() {
		return oTotal;
	}
	
	public int getoID() {
		return oID;
	}

	

}
