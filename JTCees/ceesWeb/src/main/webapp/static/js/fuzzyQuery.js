/**
 * 根据根据分公司，大货仓获取网点
 * @param componentId 前台显示文本框的id
 * @param url 调用后台的url
 * @param companyId 分公司
 * @param warehouseId 大货仓
 * @param channelName 网点名
 */
var getWebSite=function(componentId,url,companyId,warehouseId,channelName){
    $("#"+componentId).autocomplete({
     minLength:1,
     source: function(request, response) {
             jQuery.post(url,
            		 {
            	 companyId: companyId,
            	 warehouseId : warehouseId,
            	 channelName : channelName
            		 },
                 function(data) {
					var chk_value =[];
					var i;
					var length;
					length = data.length;
					if (length>20){
						length=20;
					}
					for(i=0;i<length;i++){
					chk_value.push(data[i].websiteName);
					}
					 response(chk_value);		
                 }            
             );
         }
     });
}
/**
 * 根据根据分公司，大货仓获取厂家
 * @param componentId 前台显示文本框的id
 * @param url 调用后台的url
 * @param companyId 分公司
 * @param warehouseId 大货仓
 * @param channelName 网点名
 */
var getFactory=function(componentId,url,companyId,warehouseId,channelName){
    $("#"+componentId).autocomplete({
     minLength:1,
     source: function(request, response) {
             jQuery.post(url,
            		 {
            	 companyId: companyId,
            	 warehouseId : warehouseId,
            	 channelName : channelName
            		 },
                 function(data) {
					var chk_value =[];
					var i;
					var length;
					length = data.length;
					if (length>20){
						length=20;
					}
					for(i=0;i<length;i++){
					chk_value.push(data[i].factoryName);
					}
					 response(chk_value);		
                 }            
             );
         }
     });
}