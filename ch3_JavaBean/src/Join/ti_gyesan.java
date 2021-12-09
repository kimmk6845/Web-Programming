package Join;

public class ti_gyesan {

	private int age;

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public int getBirth_year() {
		return 2020 - age + 1;
	}
	
	public String getTi() {
		String type;
		int year = 2020 - age + 1;
		
		switch (year % 12) {
		case 0:
			type = "¿ø¼şÀÌ";
			break;
		case 1:
			type = "´ß";
			break;
		case 2:
			type = "°³";
			break;
		case 3:
			type = "µÅÁö";
			break;
		case 4:
			type = "Áã";
			break;
		case 5:
			type = "¼Ò";
			break;
		case 6:
			type = "È£¶ûÀÌ";
			break;
		case 7:
			type = "Åä³¢";
			break;
		case 8:
			type = "¿ë";
			break;
		case 9:
			type = "¹ì";
			break;
		case 10:
			type = "¸»";
			break;
		default:
			type = "¾ç";
			break;
		}
		
		return type;
	}
	
	public String Test() {
		return "¿¬½À Test";
	}
}
