package com.aishang.utils;
/**
 * 上传图片的返回结果
 * @author tianliang
 *
 */
public class PictureResult {
	private int err;
	private String url;
	private String message;
	public PictureResult(int err, String url, String message) {
		super();
		this.err = err;
		this.url = url;
		this.message = message;
	}
	//成功时
	public static PictureResult ok(String url){
		return new PictureResult(0, url, null);
	}
	//失败时
	public static PictureResult error(String message){
		return new PictureResult(1, null, message);
	}
	
	public int getErr() {
		return err;
	}
	public void setErr(int err) {
		this.err = err;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
