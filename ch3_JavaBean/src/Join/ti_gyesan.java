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
			type = "������";
			break;
		case 1:
			type = "��";
			break;
		case 2:
			type = "��";
			break;
		case 3:
			type = "����";
			break;
		case 4:
			type = "��";
			break;
		case 5:
			type = "��";
			break;
		case 6:
			type = "ȣ����";
			break;
		case 7:
			type = "�䳢";
			break;
		case 8:
			type = "��";
			break;
		case 9:
			type = "��";
			break;
		case 10:
			type = "��";
			break;
		default:
			type = "��";
			break;
		}
		
		return type;
	}
	
	public String Test() {
		return "���� Test";
	}
}
