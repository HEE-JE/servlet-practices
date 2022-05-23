package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestBookDao;
import com.douzone.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		// testInsert();
		// testDelete();
		testFindAll();
	}

	private static void testInsert() {
		GuestBookVo vo = new GuestBookVo();

		vo.setName("마이콜");
		vo.setPassword("qwer1234");
		vo.setMessage("안녕하세요");
		new GuestBookDao().insert(vo);
	}

	private static void testDelete() {
		GuestBookVo vo = new GuestBookVo();

		vo.setNo(2L);
		vo.setPassword("qwer1234");
		new GuestBookDao().delete(vo);
	}

	private static void testFindAll() {
		List<GuestBookVo> list = new GuestBookDao().findAll();

		for (GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}
}