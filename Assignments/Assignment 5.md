Copy the given Java program and complete the TODO sections.

```Java
class Emp {
	int empno;
	String ename;
	int deptno;
	int mgr;
	public Emp() {
	}
	public Emp(int empno, String ename, int deptno, int mgr) {
		this.empno = empno;
		this.ename = ename;
		this.deptno = deptno;
		this.mgr = mgr;
	}
	@Override
	public String toString() {
		return "Emp [empno=" + empno + ", ename=" + ename + ", deptno=" + deptno + ", mgr=" + mgr + "]";
	}
}

class Dept {
	int deptno;
	String dname;
	public Dept() {
	}
	public Dept(int deptno, String dname) {
		this.deptno = deptno;
		this.dname = dname;
	}
	@Override
	public String toString() {
		return "Dept [deptno=" + deptno + ", dname=" + dname + "]";
	}
}

public class EmpDeptMain {
	public static void main(String[] args) {
		Dept[] dept = new Dept[] {
			 new Dept(10, "DEV"),                             
			 new Dept(20, "QA"),                              
			 new Dept(30, "OPS"),                             
			 new Dept(40, "ACC")
		};

		Emp[] emp = new Emp[] {
			 new Emp(1, "Amit", 10, 4),   
			 new Emp(2, "Rahul", 10, 3),  
			 new Emp(3, "Nilesh", 20, 4), 
			 new Emp(4, "Nitin", 50, 5),  
			 new Emp(5, "Sarang", 50, 0)
		};
		
		// TODO: Display ename and all possible depts in which emp can be.

		/* 
		Expected output:
		+--------+-------+
		| ename  | dname |
		+--------+-------+
		| Amit   | DEV   |
		| Amit   | QA    |
		| Amit   | OPS   |
		| Amit   | ACC   |
		| Rahul  | DEV   |
		| Rahul  | QA    |
		| Rahul  | OPS   |
		| Rahul  | ACC   |
		| Nilesh | DEV   |
		| Nilesh | QA    |
		| Nilesh | OPS   |
		| Nilesh | ACC   |
		| Nitin  | DEV   |
		| Nitin  | QA    |
		| Nitin  | OPS   |
		| Nitin  | ACC   |
		| Sarang | DEV   |
		| Sarang | QA    |
		| Sarang | OPS   |
		| Sarang | ACC   |
		+--------+-------+
		*/
		
		// TODO: Display ename and his dname (do not display non-matching).
		
		
		/* 
		 * Expected output:
		 * +--------+-------+
		 * | ename  | dname |
		 * +--------+-------+
		 * | Amit   | DEV   |
		 * | Rahul  | DEV   |
		 * | Nilesh | QA    |
		 * +--------+-------+
		 */
	}
}
```