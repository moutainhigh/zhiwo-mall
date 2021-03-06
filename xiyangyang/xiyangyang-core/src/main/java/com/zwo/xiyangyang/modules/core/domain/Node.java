package com.zwo.xiyangyang.modules.core.domain;

import java.util.List;

import javax.persistence.Transient;

import com.google.gson.Gson;

/**
 * @author 黄记新 E-mail: 517714860@qq.com
 * @Date 创建时间：2017年1月10日 上午9:24:50
 * @version 1.0 类说明 :树节点,所有具有上级节点的VO类要继承该类方可以使用构造树工具.
 */
public class Node implements java.io.Serializable {

	/**
	 * @Fields serialVersionUID : 默认系列化版本UID  
	 */
	private static final long serialVersionUID = 1L;

	private String id;

	private String parentId;

	@Transient
	private Node parent;
	
	@SuppressWarnings("rawtypes")
	@Transient
	private List children;

	private String name;
	@Transient
	private Integer level;

	private Integer sort;
	
	@Transient
	private String rootId;

//	private String type;
	@Transient
	private boolean isLeaf;

	private String description;
	
	public Node() {  
        super();  
    }  
  
    public Node(String id, String parentId, String name) {  
        super();  
        this.id = id;  
        this.parentId = parentId;  
        this.name = name;  
    } 
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public Node getParent() {
		return parent;
	}

	public void setParent(Node parent) {
		this.parent = parent;
	}

	@SuppressWarnings("rawtypes")
	public List getChildren() {
		return children;
	}
	 
	@SuppressWarnings("rawtypes")
	public void setChildren( List children) {
		this.children = children;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getRootId() {
		return rootId;
	}

	public void setRootId(String rootId) {
		this.rootId = rootId;
	}

//	public String getType() {
//		return type;
//	}
//
//	public void setType(String type) {
//		this.type = type;
//	}

	public boolean isLeaf() {
		return isLeaf;
	}

	public void setLeaf(boolean isLeaf) {
		this.isLeaf = isLeaf;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		Gson gson = new Gson();
		String jsonStr = gson.toJson(this);
		return jsonStr;
	}
}
