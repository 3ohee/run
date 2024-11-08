package com.ict.runningON.service;

import java.util.List;

import com.ict.runningON.vo.PostsVO;

// EmpService 참조

public interface SearchService {
	List<PostsVO> getList() throws Exception;
	List<PostsVO> getSearch(String deptno) throws Exception;
	List<PostsVO> getSearch(PostsVO PostsVO) throws Exception;
	List<PostsVO> getSearch(String idx, String keyword) throws Exception;
}
