/**
 * Hestia
 * This helper script created by 墨者.  Copyright 2018 墨者.  
 * Licensed under the MIT license.  
 * All individual scripts remain property of their copyrighters.
 * Team members：康文洋
 * Date: 2018-01-27
 * Version: 0.0.1
 */

$(function ($) {
	$.AceResule = $.AceResule || {Data:{TotalCount:"",TotalPage:"",CurrentPage:"",PageSize:"",DataList:""},Status:"",Msg:""};
	
	$.AceResule.getAceResult = function (data){
		$.AceResule.Status = $.AceResule.ConvertStatus(data.state);
		$.AceResule.Msg = data.message;
		$.AceResule.Data.TotalCount = data.records;
		$.AceResule.Data.TotalPage = data.total;
		$.AceResule.Data.CurrentPage = data.page;
		//if(data.rows != null)
		$.AceResule.Data.PageSize = 20;
		$.AceResule.Data.DataList = data.rows;
		
		
		return $.AceResule;
    }
	
	$.AceResule.ConvertStatus = function(data){
		if(data == "success")
			return 100;
		else if(data == "error")
			return 101;
		else
			return data;
	}
	
	$.AceResule.isNull = function (data){
		if (data !== null && data !== undefined && data !== '') 
			return true;
		else
			return false;
    }
})