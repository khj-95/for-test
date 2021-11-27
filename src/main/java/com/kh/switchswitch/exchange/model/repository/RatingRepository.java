package com.kh.switchswitch.exchange.model.repository;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface RatingRepository {

	@Select("select rating from rating where user_idx=#{certifiedMemberIdx}")
	Optional<List<Float>> selectRatingByMemberIdx(int certifiedMemberIdx);

	@Select("select rating from rating where user_idx = #{memberIdx}")
	List<Integer> selectMyRateCnt(int memberIdx);
	
}
