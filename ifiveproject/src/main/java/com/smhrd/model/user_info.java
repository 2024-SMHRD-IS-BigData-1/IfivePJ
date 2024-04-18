package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString

//회원 
public class user_info {

 // 회원 아이디 
@NonNull private String user_id;

 // 회원 비밀번호 
 private String user_pw;

 // 회원 키 
 private Double user_height;

 // 회원 체중 
 private Double user_weight;

 // 회원 체중 목표 
 private Double user_target_weight;

 // 회원 가입일자 
 private Date joined_at;

 // 회원 구분 
 private String user_type;

 public String getUserId() {
     return user_id;
 }

 public void setUserId(String userId) {
     this.user_id = user_id;
 }

 public String getUserPw() {
     return user_pw;
 }

 public void setUserPw(String userPw) {
     this.user_pw = user_pw;
 }

 public Double getUserHeight() {
     return user_height;
 }

 public void setUserHeight(Double userHeight) {
     this.user_height = user_height;
 }

 public Double getUserWeight() {
     return user_weight;
 }

 public void setUserWeight(Double userWeight) {
     this.user_weight = user_weight;
 }

 public Double getUserTargetWeight() {
     return user_target_weight;
 }

 public void setUserTargetWeight(Double userTargetWeight) {
     this.user_target_weight = user_target_weight;
 }

 public Date getJoinedAt() {
     return joined_at;
 }

 public void setJoinedAt(Date joinedAt) {
     this.joined_at = joined_at;
 }

 public String getUserType() {
     return user_type;
 }

 public void setUserType(String userType) {
     this.user_type = user_type;
 }

 // user_info 모델 복사
 public void CopyData(user_info param)
 {
     this.user_id = param.getUserId();
     this.user_pw = param.getUserPw();
     this.user_height = param.getUserHeight();
     this.user_weight = param.getUserWeight();
     this.user_target_weight = param.getUserTargetWeight();
     this.joined_at = param.getJoinedAt();
     this.user_type = param.getUserType();
 }
}
