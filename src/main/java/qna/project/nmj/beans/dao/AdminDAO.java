package qna.project.nmj.beans.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import qna.project.nmj.beans.*;

public interface AdminDAO {
	public ArrayList<MemberDTO> selectAllMember();
	public ArrayList<StoreMemberDTO> selectAllStoreMember();
	public ArrayList<StoreDTO> selectAllStore();
	public ArrayList<ReviewDTO> selectAllReview();
	public ArrayList<RequestDTO> selectAllRequest();
	public ArrayList<ReplyDTO> selectAllReply();
	public int deleteMember(int mb_uid);
	public MemberDTO selectMemberByUid(int mb_uid);
	public ArrayList<MemberDTO> searchMemberByName(String search);
	public ArrayList<MemberDTO> searchMemberById(String search);
	public StoreDTO selectStoreByUid(int mb_uid);
	public StoreMemberDTO selectStoreBySUid(int store_uid);
	public ArrayList<StoreMemberDTO> searchStoreByName(String search);
	public ArrayList<StoreMemberDTO> searchStoreById(String search);
	public ArrayList<StoreMemberDTO> selectNStore();
	public ArrayList<StoreMemberDTO> selectMStore();
	public ArrayList<StoreMemberDTO> selectJStore();
	public StoreMemberDTO selectStoreMemberByUid(int store_uid);
	public ReviewJoinDTO selectReviewByUid(int review_uid);
	public ReplyJoinDTO selectReplyByUid(int reply_uid);
	public RequestDTO selectRequestByUid(int request_uid);
	public ArrayList<ReviewJoinDTO> searchReviewByContent(String search);
	public ArrayList<ReplyJoinDTO> searchReplyByContent(String search);
	public ArrayList<ReviewJoinDTO> searchReviewById(String search);
	public ArrayList<ReplyJoinDTO> searchReplyById(String search);
	public int deleteReview(int review_uid);
	public int deleteReply(int review_uid);
	public int increaseViewCount(int review_uid);
	public int rejectRequest(int request_uid);
	public int solveRequest(int request_uid);
	public int acceptStore(int store_uid);
	public int updateStore(@Param("store_uid") int store_uid, @Param("store_name") String store_name, @Param("store_address") String store_address, @Param("store_regNum") String store_regNum, @Param("store_regImg_org") String store_regImg_org, @Param("store_regImg_sav") String store_regImg_sav, @Param("store_type") int store_type, @Param("store_dtype") int store_dtype, @Param("store_lat") double store_lat, @Param("store_long") double store_long);

}

















