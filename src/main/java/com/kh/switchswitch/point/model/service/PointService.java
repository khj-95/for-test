package com.kh.switchswitch.point.model.service;

import com.kh.switchswitch.card.model.dto.CardRequestList;
import com.kh.switchswitch.member.model.dto.MemberAccount;
import com.kh.switchswitch.point.model.dto.InquiryRealName;
import com.kh.switchswitch.point.model.dto.PointRefund;
import com.kh.switchswitch.point.model.dto.SavePoint;

public interface PointService {

	void updateSavePointWithAvailableBal(int availableBal, int memberIdx);

	void updateSavePoint(CardRequestList cardRequestList);

	String checkAccount(InquiryRealName inquiryRealName);

	void refundPoint(MemberAccount certifiedMember, PointRefund pointRefund);

	SavePoint selectSavePointByMemberIdx(Integer memberIdx);

	void chargePoint(Integer memberIdx, Integer points);

}
