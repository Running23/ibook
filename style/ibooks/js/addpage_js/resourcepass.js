$(document).ready(function() {

	// 百度地图API功能
	var map = new BMap.Map("mymap", {
		minZoom : 8,
		maxZoom : 19
	}); // 创建Map实例
	var point = new BMap.Point(113.500296, 23.45686);
	map.centerAndZoom(point, 13); // 初始化地图,设置中心点坐标和地图级别
	// map.centerAndZoom("赣州", 13);
	map.addControl(new BMap.MapTypeControl()); // 添加地图类型控件
	map.setCurrentCity("广州大学华软软件学院"); // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true); // 开启鼠标滚轮缩放
	// 限定地图的显示范围，Bounds的第一个参数是地图的左上角的经纬度，第二个参数是右下角的经纬度
	/**
	 * var bounds = new BMap.Bounds(new BMap.Point(114.785377,25.919546),new
	 * BMap.Point(115.067661,25.747321)); try {
	 * BMapLib.AreaRestriction.setBounds(map, bounds); } catch (e) { alert(e); }
	 */

	var top_left_control = new BMap.ScaleControl({
		anchor : BMAP_ANCHOR_TOP_LEFT
	});// 左上角，添加比例尺
	// map.addControl(top_left_control);
	var top_left_navigation = new BMap.NavigationControl(); // 左上角，添加默认缩放平移控件
	map.addControl(top_left_navigation);
	var top_right_navigation = new BMap.NavigationControl({
		anchor : BMAP_ANCHOR_TOP_RIGHT,
		type : BMAP_NAVIGATION_CONTROL_SMALL
	}); // 右上角，仅包含平移和缩放按钮
	map.addControl(top_right_navigation);
	var geolocationControl = new BMap.GeolocationControl();
	geolocationControl.addEventListener("locationSuccess", function(e) {
		// 定位成功事件
		var address = '';
		address += e.addressComponent.province;
		address += e.addressComponent.city;
		address += e.addressComponent.district;
		address += e.addressComponent.street;
		address += e.addressComponent.streetNumber;
		alert("当前定位地址为：" + address);
	});
	geolocationControl.addEventListener("locationError", function(e) {
		// 定位失败事件
		alert(e.message);
	});
	map.addControl(geolocationControl);

	// 添加城市选择控件
	var size = new BMap.Size(10, 20);
	map.addControl(new BMap.CityListControl({
		anchor : BMAP_ANCHOR_TOP_LEFT,
		offset : size,
	// 切换城市之间事件
	// onChangeBefore: function(){
	// alert('before');
	// },
	// 切换城市之后事件
	// onChangeAfter:function(){
	// alert('after');
	// }
	}));

	var marker = new BMap.Marker(point); // 创建标注
	map.addOverlay(marker); // 将标注添加到地图中
	marker.enableDragging();
	var label = new BMap.Label("广州大学华软软件学院", {
		offset : new BMap.Size(20, -10)
	});
	marker.setLabel(label);

	var opts = {
		width : 200, // 信息窗口宽度
		height : 100, // 信息窗口高度
		title : "设备所在地", // 信息窗口标题
		enableMessage : true,// 设置允许信息窗发送短息
		message : "亲耐滴，晚上一起吃个饭吧？戳下面的链接看下地址喔~"
	}
	var infoWindow = new BMap.InfoWindow("地址：广州大学华软软件学院", opts);
	marker.addEventListener("click", function() {
		map.openInfoWindow(infoWindow, point);
	})

	var markerMenu = new BMap.ContextMenu();
	markerMenu.addItem(new BMap.MenuItem('显示详情', function() {
		alert("点击了显示详情");
	}));
	marker.addContextMenu(markerMenu);
	// marker.hide();
	// marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画

});
