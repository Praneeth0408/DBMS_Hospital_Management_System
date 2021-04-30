package net.codejava;

public class Payment {
	private int doc_id;
	private String pat_name;
	private String datee;
	private float fee;
	
	public Payment(int doc_id, String pat_name, String datee, float fee) {
		super();
		this.doc_id = doc_id;
		this.pat_name = pat_name;
		this.datee = datee;
		this.fee = fee;
	}

	public int getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}

	public String getPat_name() {
		return pat_name;
	}

	public void setPat_name(String pat_name) {
		this.pat_name = pat_name;
	}

	public String getDatee() {
		return datee;
	}

	public void setDatee(String datee) {
		this.datee = datee;
	}

	public float getFee() {
		return fee;
	}

	public void setFee(float fee) {
		this.fee = fee;
	}
	
	
}
