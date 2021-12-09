package moneychange;

public class MoneyChange {

	/* private 한 필드 선언 후 set 와 get 를 작성 */
	private int number; // 속성- 멤버 필드

	public int getNumber() { // 속성 - 값 읽어 올 때
// nunmber 에 저장 된 값을 반환
		return number;
	}

	public void setNumber(int number) { // 속성 - 값 저장할 때
// 입력된 원화를 number 에 저장 
		this.number = number;
	}

//메소드는 외부에서 호출이 가능해야 하므로 public 으로 선언
//메소드 앞의 형(int)은 반환형을 표시함.  문자열이면 String 으로 표기함.
//결과 값을 호출한 곳으로 return 해 줌
//반환이 없으면 void 로 표시 – 이 경우는 잘 사용하지 않음
//달러와 일본 돈은  입력 받은 것이 아니므로 맨 위에서 
//속성으로 선언하지 않고 메소드로 처리하여 반환해 줌.
	public int America() { // moneyChange_out.jsp 에서 호출함
		int aa = number / 1100;
		return aa;
	}

	public int Japan() { // moneyChange_out.jsp 에서 호출함
		int bb = number / 100;
		return bb;
	}
}
