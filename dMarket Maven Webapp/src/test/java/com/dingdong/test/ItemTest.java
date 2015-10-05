package com.dingdong.test;

import java.util.List;

import org.junit.Test;

import com.dingdong.pojo.Item;
import com.dingdong.pojo.Page;
import com.dingdong.service.ItemService;

public class ItemTest {

	@Test
	public void updateItemTest() {
		Item item = new Item();
		item.setItem_id(1);
		item.setBrand("iPhone");
		item.setClassified_id(1);
		item.setHeadPic("fdsfs");
		item.setInstock(32);
		item.setIntroduction("iPhone6s");
		item.setIsrecommend(1);
		item.setPrice(20L);
		item.setSales(100);
		item.setName("iPhone手机");
		ItemService itemService = new ItemService();
		itemService.updateItem(item);
	}

	@Test
	public void addItemTest() {
		Item item = new Item();
		item.setBrand("小米");
		item.setClassified_id(1);
		item.setHeadPic("fdsfs");
		item.setInstock(32);
		item.setIntroduction("小米2s");
		item.setIsrecommend(1);
		item.setPrice(20L);
		item.setSales(100);
		item.setName("小米手机");
		ItemService itemService = new ItemService();
		itemService.addItem(item);

		System.out.println("自增主键测试："+item.getItem_id());
	}

	public static void main(String[] args) {
		ItemService itemService = new ItemService();
		Page page = new Page();
		page.setCurrentPage(1);
		List<Item> list = itemService.findItemsByName("小米", page);
		System.out.println(list.size());

	}

	@Test
	public void findItemsByNameTest() {
		ItemService itemService = new ItemService();
		Page page = new Page();
		page.setCurrentPage(1);
		List<Item> list = itemService.findItemsByName("小米", page);
		System.out.println(list.size());
	}

	@Test
	public void findItemsByClassifyIDTest() {
		ItemService itemService = new ItemService();
		Page page = new Page();
		page.setCurrentPage(1);
		List<Item> list = itemService.findItemsByClassifyID("1", page);
		System.out.println(list.size());
	}

	@Test
	public void findItemsByNameByOrderIDTest() {
		ItemService itemService = new ItemService();
		Page page = new Page();
		page.setCurrentPage(1);
		List<Item> list = itemService.findItemsByNameByOrder("小米", "price",
				page);
		System.out.println(list.size());
	}

	@Test
	public void findAllItemsTest() {
		ItemService itemService = new ItemService();
		Page page = new Page();
		page.setCurrentPage(1);
		List<Item> list = itemService.findAllItems(page);
		System.out.println(list.size());
	}
}
