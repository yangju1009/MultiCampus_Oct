package bean;

public class Car {
	//멤버변수 + 멤버메서드
	String color; //4
	int speed; //4
	int price; //4
	
	//외부에서는 Car2가 하나 만들어놓은 객체를 주세요.
	
	public Car(String color, int speed, int price) {
		this.color = color;
		this.speed = speed;
		this.price = price;
	}
}
