package com.dingdong.test;

import java.io.File;

import org.junit.Test;

import com.dingdong.util.QiniuStore;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;

public class QiniuStoreTest {
	
	
	@Test
	public void uploadTest() throws QiniuException {
		QiniuStore qiniuStore = new QiniuStore();
		File file = new File("C:/Users/yinya/Desktop/IMG_20150806_075939.jpg");
		String aimName = "BreakFirst.jpg";
		Response response = qiniuStore.uploadFile(file, aimName);
		System.out.println(response.address);
		System.out.println(response.duration);
		System.out.println(response.error);
		System.out.println(response.reqId);
		System.out.println(response.bodyString());
		System.out.println(response.contentType());
		
		
		
		
		
		
	}

}
