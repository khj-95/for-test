package com.kh.switchswitch.exchange.model.repository;


import org.apache.ibatis.annotations.Delete;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.kh.switchswitch.exchange.model.dto.ExchangeHistory;
import com.kh.switchswitch.exchange.model.dto.ExchangeStatus;

@Mapper
public interface ExchangeRepository {

	@Insert("insert into exchange_status values(sc_e_idx.nextval, #{requestMemIdx}, #{requestedMemIdx}, 'ONGOING', #{propBalance}, #{reqIdx}, #{freqIdx})" )
	void insertExchangeStatus(ExchangeStatus exchangeStatus);


	@Select("select * from exchange_status where (user_idx1=#{memberIdx} or user_idx2 =#{memberIdx}) and type='ONGOING'")
	List<ExchangeStatus> selectEhByMemberIdxAndTypeOngoing(Integer memberIdx);

	@Select("select type from exchange_satus where req_idx=#{reqIdx}")
	String selectExchangeStatusType(Integer reqIdx);

	@Select("select * from exchange_status where (request_mem_idx=#{memberIdx} or requested_mem_idx =#{memberIdx}) and type='ONGOING'")
	List<ExchangeStatus> selectEsByMemberIdxAndTypeOngoing(Integer memberIdx);

	//교환요청 삭제용
	@Delete("delete from exchange_status where req_idx=#{reqIdx}")
	void deleteExchangeStatusWithReqIdx(Integer reqIdx);
	
	//나눔요청 삭제용
	@Delete("delete from exchange_status where freq_idx=#{freqIdx}")
	void deleteExchangeStatusWithFreqIdx(Integer freqIdx);

	//교환요청 업데이트용
	@Update("update exchange_status set type=#{type} where req_idx=#{reqIdx} ")
	void updateExchangeStatus(ExchangeStatus exchangeStatus);

	//나눔요청 상태 업데이트용
	@Update("update exchange_status set type=#{type} where freq_idx=#{freqIdx} ")
	void updateExchangeStatusWithFreqIDx(ExchangeStatus exchangeStatus);

	//교환요청 리스트 검색
	@Select("select * from exchange_satus where req_idx=#{reqIdx}")
	ExchangeStatus selectExchangeStatusWithReqIdx(Integer reqIdx);
	
	//나눔요청 리스트 검색
	@Select("select * from exchange_satus where freq_idx=#{freqIdx}")
	ExchangeStatus selectExchangeStatusWithFreqIdx(Integer freqIdx);
	
	@Insert("insert into exchange_history values(sc_eh_idx.nextval, #{eIdx}, sysdate, #{requestedMemIdx}, #{requestMemIdx})")
	void insertExchangeHistory(ExchangeHistory exchangeHistory);

	@Select("select req_idx from exchange_status where requested_mem_idx=#{memberIdx}")
	List<Integer> selectCardIdxWithMemberIdx(Integer memberIdx);

	@Select("select * from exchange_history where requested_mem_idx=#{memberIdx} or request_mem_idx=#{memberIdx}")
	List<ExchangeHistory> selectExchangeHistoryByMemIdx(Integer memberIdx);

	
	
	
}
