package com.dingdong.util;

import java.io.File;
import java.io.InputStream;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;

public class QiniuStore {

	static Auth auth = Auth.create("ePFwT6wi6NpdRNuhaEzhIH_d9MKhtnXmnnNogP-y",
			"M6KivEsla2NJ_79lQuYLzEM-Db92KgF0YtMZT--q");

	// 简单上传，使用默认策略
	public static String getUpToken0() {
		return auth.uploadToken("yinbro");
	}

	/**
	 * 
	 * @param file 上传的文件
	 * @param aimName  目标命名
	 * @return Response
	 */
	public Response uploadFile(File file,String aimName)  {
		UploadManager uploadManager = new UploadManager();
		Response response = null;
		try {
			response = uploadManager.put(file, aimName, QiniuStore.getUpToken0());
		} catch (QiniuException e) {
			e.printStackTrace();
		}
		return response;
	}

	
	/**
	 * 
	 * @param b
	 * @param aimName
	 * @return 图片url
	 */
	public String uploadByte(byte[] b ,String aimName)  {
		UploadManager uploadManager = new UploadManager();
		Response response = null;
		String url = null;
		try {
			response = uploadManager.put( b ,aimName, QiniuStore.getUpToken0());
			StringMap stringMap = response.jsonToMap();
			url = "http://7xn0yn.com1.z0.glb.clouddn.com/" + stringMap.get("key");
		
		} catch (QiniuException e) {
			e.printStackTrace();
		}
		System.out.print(url);
		return url;
	}
	
	
	
	
	public File downLoadFile(){
		
		return null;
		
	}
	
	
	
	public static void main(String[] args) {
		QiniuStore qiniuStore = new QiniuStore();
		qiniuStore.uploadFile(new File("C:/Users/yinya/Desktop/a.jpg"), "hello.jpg");
		
	}
}
