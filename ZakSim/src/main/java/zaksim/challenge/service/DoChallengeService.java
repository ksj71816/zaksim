package zaksim.challenge.service;

import zaksim.dto.Challenge;
import zaksim.dto.Payment;
import zaksim.dto.ZakSimMember;

public interface DoChallengeService {

	//도전 정보 입력(도전명, 시작일, 종료일, 도전금액, 결제방법)
	public void setCahllengeInfo(ZakSimMember user);
	
	//도전 정보 가져오기(도전명, 시작일, 종료일, 도전금액, 결제방법)
	public Challenge getChallengeInfo(ZakSimMember user);
	
	//회원 정보 가져오기(이름,이메일,연락처 )
	public ZakSimMember userInfo(ZakSimMember user);
	
	//결제정보 입력
	public void setPayment(ZakSimMember user);
	
	//결제 정보 가져오기
	public Payment getPayment(ZakSimMember user);
	
	
}