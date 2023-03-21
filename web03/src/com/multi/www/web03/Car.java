package com.multi.www.web03;

public class Car {
	//멤버변수
	String color;
	int price;
	int speed;
	
	//toString()
//	@Override
//	public String toString() {
//		return "Car [color=" + color + ", price=" + price + ", speed=" + speed + "]";
//	}
	
	//객체생성시 멤버변수값 한꺼번에 넣어서 초기화 -> 객체생성시 자동호출되는 메서드 추가
	//->생성자(메서드), constructor
	public Car(String color, int price, int speed) {
		this.color = color;
		this.price = price;
		this.speed = speed;
	}
	
}
