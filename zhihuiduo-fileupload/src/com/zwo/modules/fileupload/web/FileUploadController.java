package com.zwo.modules.fileupload.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSON;
import com.baidu.ueditor.ActionEnter;
import com.zwo.modules.cms.service.ICmsAssetsService;
import com.zwo.modules.mall.domain.PrImage;
import com.zwo.modules.mall.service.IPrImageService;
import com.zwo.modules.system.domain.TbUser;
import com.zwo.modules.system.domain.TbUserAssets;
import com.zwo.modules.system.domain.TbUserAssetsCriteria;
import com.zwo.modules.system.service.ITbUserAssetsService;

@Scope("prototype")
@Controller
@RequestMapping(value = "fileupload")
@Lazy(true)
public class FileUploadController {

	@Autowired
	@Lazy(true)
	private ITbUserAssetsService userAssetsService;

	@Autowired
	@Lazy(true)
	private IPrImageService imageService;

	@Autowired
	@Lazy(true)
	private ICmsAssetsService cmsAssetsService;
      
	@RequestMapping(value="config")
    public void config(HttpServletRequest request, HttpServletResponse response) throws JSONException {
 
        response.setContentType("application/json");
        String rootPath = request.getSession()
                .getServletContext().getRealPath("/");
 
        try {
            String exec = new ActionEnter(request, rootPath).exec();
            PrintWriter writer = response.getWriter();
            writer.write(exec);
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
	
	
	@RequestMapping(value = "userAssets")
	@ResponseBody
	public String userAssetsUpload(
			@RequestParam(value = "orgId", required = false) String orgId,
			@RequestParam(value = "file", required = false) CommonsMultipartFile[] files,
			String HTTP_CONTENT_DISPOSITION, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse, Model uiModel) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<TbUserAssets> userAssets = new ArrayList<TbUserAssets>();
		Calendar date = Calendar.getInstance();
		String rootDir = httpServletRequest.getSession().getServletContext().getRealPath("/");
		rootDir = "D:"+File.separator;
		
		String url = "uassets/" + date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/"
				+ date.get(Calendar.DAY_OF_MONTH);
		String uploadPath = rootDir + "images" + File.separator + "uassets";
		uploadPath = uploadPath + File.separator + date.get(Calendar.YEAR) + File.separator
				+ (date.get(Calendar.MONTH) + 1) + File.separator + date.get(Calendar.DAY_OF_MONTH);

		for (int i = 0; i < files.length; i++) {
			if (!files[i].isEmpty()) {
				String name = files[i].getOriginalFilename();
				int index = name.lastIndexOf(".");

				name = new Date().getTime() + ((int) Math.random() * 10000) + "" + name.substring(index, name.length());
				File file = new File(uploadPath, name);

				if (!file.exists()) {// 目录不存在则直接创建
					file.mkdirs();
				}
				CommonsMultipartFile commonsMultipartFile = files[i];
				try {
					commonsMultipartFile.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}

				TbUserAssets assets = null;
				if(null!=orgId && !"".equals(orgId)){
					TbUserAssetsCriteria assetsCriteria = new TbUserAssetsCriteria();
					assetsCriteria.createCriteria().andOrgIdEqualTo(orgId);
					List<TbUserAssets> list = userAssetsService.selectByExample(assetsCriteria);
					if(!list.isEmpty()){
						assets = list.get(0);
						if(assets.getPath()!=null && !"".equals(assets.getPath())){
							Path path = Paths.get(assets.getPath());
							try {
								Files.deleteIfExists(path);
							} catch (IOException e) {
								e.printStackTrace();
							}
						}
						
						assets.setName(name);
						assets.setPath(uploadPath + File.separator + name);
						assets.setUrl(url + "/" + name);
						userAssetsService.updateByPrimaryKeySelective(assets);
					}else{
						assets = new TbUserAssets();
						assets.setName(name);
						assets.setPath(uploadPath + File.separator + name);
						assets.setUrl(url + "/" + name);
						assets.setId(System.currentTimeMillis() + "" + Math.round(Math.random() * 99));
						if(null!=orgId && !"".equals(orgId)){
							assets.setOrgId(orgId);
						}
						userAssetsService.insertSelective(assets);
					}
				}else{
					assets = new TbUserAssets();
					assets.setName(name);
					assets.setPath(uploadPath + File.separator + name);
					assets.setUrl(url + "/" + name);
					assets.setId(System.currentTimeMillis() + "" + Math.round(Math.random() * 99));
					if(null!=orgId && !"".equals(orgId)){
						assets.setOrgId(orgId);
					}
					userAssetsService.insertSelective(assets);
				}
				
				userAssets.add(assets);
			}
		}
		map.put("assets", userAssets);
		String result = JSON.toJSONString(map);
		// userAssetsService.batchInsert(userAssets);
		return result;
	}
	

	/**
	 * orgId为商品ID。
	 * @param productId
	 * @param orgId
	 * @param files
	 * @param imgWidth
	 * @param imgHeight
	 * @param HTTP_CONTENT_DISPOSITION
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @param uiModel
	 * @return
	 */
	@RequestMapping(value = "prAssets")
	@ResponseBody
	public String proAssetsUpload(
			@RequestParam String productId,
			@RequestParam String type,
			@RequestParam(value = "file", required = false) CommonsMultipartFile[] files,
			@RequestParam(value = "imgWidth", required = false)  String imgWidth,
			@RequestParam(value = "imgHeight", required = false)  String imgHeight,
			String HTTP_CONTENT_DISPOSITION, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse, Model uiModel) {
		TbUser tbuser = null;
		if (SecurityUtils.getSecurityManager() != null) {
			Subject currentUser = SecurityUtils.getSubject();
			if (currentUser != null) {
				tbuser = (TbUser) currentUser.getSession().getAttribute("user");
			}
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<PrImage> proAssets = new ArrayList<PrImage>();
		Calendar date = Calendar.getInstance();
		String rootDir = httpServletRequest.getSession().getServletContext().getRealPath("/");
		rootDir = "D:"+File.separator;
		String url = "passets/"+productId+"/" + date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/"
				+ date.get(Calendar.DAY_OF_MONTH);
		String uploadPath = rootDir + "images" + File.separator + "passets";
		uploadPath = uploadPath+ File.separator+productId+ File.separator + date.get(Calendar.YEAR) + File.separator
				+ (date.get(Calendar.MONTH) + 1) + File.separator + date.get(Calendar.DAY_OF_MONTH);

		for (int i = 0; i < files.length; i++) {
			if (!files[i].isEmpty()) {
				String name = files[i].getOriginalFilename();
				int index = name.lastIndexOf(".");
				String datetimeName = new Date().getTime() + ((int) Math.random() * 10000) + "";
				name =  datetimeName + name.substring(index, name.length());
				File file = new File(uploadPath, name);

				if (!file.exists()) {// 目录不存在则直接创建
					file.mkdirs();
				}
				CommonsMultipartFile commonsMultipartFile = files[i];
				try {
					commonsMultipartFile.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				PrImage assets = new PrImage();
				if(tbuser!=null){
					assets.setUserId(tbuser.getId());
				}
				assets.setType(type);
				assets.setIsDefault(false);
				assets.setProductId(productId);
				assets.setName(name);
				assets.setLocation(uploadPath + File.separator + name);
				assets.setUrl(url + "/" + name);
				assets.setId(System.currentTimeMillis() + "" + Math.round(Math.random() * 99));
				imageService.insertSelective(assets);
				proAssets.add(assets);
			}
		}
		map.put("assets", proAssets);
		String result = JSON.toJSONString(map);
		// userAssetsService.batchInsert(userAssets);
		return result;
	}
	
	/**
	 * 商品轮播图上传
	 * @param productId
	 * @param files
	 * @param HTTP_CONTENT_DISPOSITION
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @param uiModel
	 * @return
	 */
	@RequestMapping(value = "prSwiperAssets")
	@ResponseBody
	public String proSwiperAssetsUpload(
			@RequestParam String productId,
			@RequestParam String type,
			@RequestParam(value = "file", required = false) CommonsMultipartFile[] files,
			String HTTP_CONTENT_DISPOSITION, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse, Model uiModel) {
		TbUser tbuser = null;
		if (SecurityUtils.getSecurityManager() != null) {
			Subject currentUser = SecurityUtils.getSubject();
			if (currentUser != null) {
				tbuser = (TbUser) currentUser.getSession().getAttribute("user");
			}
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<PrImage> proAssets = new ArrayList<PrImage>();
		Calendar date = Calendar.getInstance();
		String rootDir = httpServletRequest.getSession().getServletContext().getRealPath("/");
		rootDir = "D:"+File.separator;
		String url = "passets/" + date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/"
				+ date.get(Calendar.DAY_OF_MONTH);
		String uploadPath = rootDir + "images" + File.separator + "passets";
		uploadPath = uploadPath + File.separator + date.get(Calendar.YEAR) + File.separator
				+ (date.get(Calendar.MONTH) + 1) + File.separator + date.get(Calendar.DAY_OF_MONTH);
		
		for (int i = 0; i < files.length; i++) {
			if (!files[i].isEmpty()) {
				String name = files[i].getOriginalFilename();
				int index = name.lastIndexOf(".");
				String datetimeName = new Date().getTime() + ((int) Math.random() * 10000) + "";
				name =  datetimeName + name.substring(index, name.length());
				File file = new File(uploadPath, name);
				
				if (!file.exists()) {// 目录不存在则直接创建
					file.mkdirs();
				}
				CommonsMultipartFile commonsMultipartFile = files[i];
				try {
					commonsMultipartFile.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				PrImage assets = new PrImage();
				if(tbuser!=null){
					assets.setUserId(tbuser.getId());
				}
				assets.setProductId(productId);
				//true为轮播图。
				assets.setIsDefault(true);
				assets.setType(type);
				assets.setName(name);
				assets.setLocation(uploadPath + File.separator + name);
				assets.setUrl(url + "/" + name);
				assets.setId(System.currentTimeMillis() + "" + Math.round(Math.random() * 99));
				imageService.insertSelective(assets);
				proAssets.add(assets);
			}
		}
		map.put("assets", proAssets);
		String result = JSON.toJSONString(map);
		// userAssetsService.batchInsert(userAssets);
		return result;
	}
	
	/**
	 * 商品详情图上传
	 * @param productId
	 * @param files
	 * @param HTTP_CONTENT_DISPOSITION
	 * @param httpServletRequest
	 * @param httpServletResponse
	 * @param uiModel
	 * @return
	 */
	@RequestMapping(value = "prDetailAssets")
	@ResponseBody
	public String proDetailAssetsUpload(@RequestParam String productId,
			@RequestParam String type,
			@RequestParam(value = "file", required = false) CommonsMultipartFile[] files,
			String HTTP_CONTENT_DISPOSITION, HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse, Model uiModel) {
		TbUser tbuser = null;
		if (SecurityUtils.getSecurityManager() != null) {
			Subject currentUser = SecurityUtils.getSubject();
			if (currentUser != null) {
				tbuser = (TbUser) currentUser.getSession().getAttribute("user");
			}
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<PrImage> proAssets = new ArrayList<PrImage>();
		Calendar date = Calendar.getInstance();
		String rootDir = httpServletRequest.getSession().getServletContext().getRealPath("/");
		rootDir = "D:"+File.separator;
		String url = "passets/" + date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH) + 1) + "/"
				+ date.get(Calendar.DAY_OF_MONTH);
		String uploadPath = rootDir + "images" + File.separator + "passets";
		uploadPath = uploadPath + File.separator + date.get(Calendar.YEAR) + File.separator
				+ (date.get(Calendar.MONTH) + 1) + File.separator + date.get(Calendar.DAY_OF_MONTH);
		
		for (int i = 0; i < files.length; i++) {
			if (!files[i].isEmpty()) {
				String name = files[i].getOriginalFilename();
				int index = name.lastIndexOf(".");
				String datetimeName = new Date().getTime() + ((int) Math.random() * 10000) + "";
				name =  datetimeName + name.substring(index, name.length());
				File file = new File(uploadPath, name);
				
				if (!file.exists()) {// 目录不存在则直接创建
					file.mkdirs();
				}
				CommonsMultipartFile commonsMultipartFile = files[i];
				try {
					commonsMultipartFile.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				PrImage assets = new PrImage();
				if(tbuser!=null){
					assets.setUserId(tbuser.getId());
				}
				assets.setProductId(productId);
				//true为轮播图。
				assets.setIsDefault(true);
				assets.setType(type);
				assets.setName(name);
				assets.setLocation(uploadPath + File.separator + name);
				assets.setUrl(url + "/" + name);
				assets.setId(System.currentTimeMillis() + "" + Math.round(Math.random() * 99));
				imageService.insertSelective(assets);
				proAssets.add(assets);
			}
		}
		map.put("assets", proAssets);
		String result = JSON.toJSONString(map);
		// userAssetsService.batchInsert(userAssets);
		return result;
	}
	
	

}
