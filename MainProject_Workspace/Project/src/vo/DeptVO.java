package vo;

public class DeptVO {
	int dept_id,dept_up_id;
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getDept_up_id() {
		return dept_up_id;
	}
	public void setDept_up_id(int dept_up_id) {
		this.dept_up_id = dept_up_id;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	String dept_name;
}
