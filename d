package random;

import java.util.Scanner;

public class Ex02 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		
		boolean bool = true;
		while(bool) {					//while(true)이렇게 하면 무한반복, break있으면 가능
			
			System.out.println("게임을 시작합니다.");
			System.out.println("숫자 하나를 선택하세요");
			System.out.println("(1)가위 (2)바위 (3)보 (4)게임종료");
			
			int myChoice = scan.nextInt();
			
			if(myChoice < 1 || myChoice > 4) {
				System.out.println("숫자를 잘못입력 하셨습니다.");
				continue; // bool로 감
				
			}
			
			String myChoiceStr = " ";
			
			switch(myChoice) { //위에서 걸러줘서 디폴트 안써도 됨
			case 1 :
				myChoiceStr = "가위";
				break;
			case 2 :
				myChoiceStr = "바위";
				break;
			case 3 :
				myChoiceStr = "보";
				break;
			case 4 :
				System.out.println("게임을 종료합니다.");
				System.exit(0); // 시스템종료
			}
			
			int com = (int)(Math.random()*3) + 1;
			
			String comStr = " ";
			
			switch(com) {
			case 1 :
				comStr = "가위";
				break;
			case 2 :
				comStr = "바위";
				break;
			case 3 :
				comStr = "보";
				break;
			}
			
			System.out.println("나 : " + myChoiceStr);
			System.out.println("컴퓨터 : " + comStr);
			
			// if문으로 승리 무승부 짐
			// 1 > 가위 2 > 바위 3> 보
			
			if(myChoice == 1 && com == 3
					|| myChoice ==2 && com == 1 
					|| myChoice == 3 && com == 2) //헷갈리면 소괄호 쓰기
			{
				System.out.println("***승리했습니다***");
			}else if(myChoice == com){
				System.out.println("***무승부입니다***");
			}else {
				System.out.println("***졌습니다***");
			}
			
			
			
		}
		
		scan.close();

	}

}
