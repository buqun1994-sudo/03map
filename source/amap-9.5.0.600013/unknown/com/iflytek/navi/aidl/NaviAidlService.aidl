package com.iflytek.navi.aidl;
import com.iflytek.navi.aidl.NaviListener;
interface NaviAidlService {
	boolean setNaviListener(in NaviListener listener);
	boolean searchPoi(in String parameters,in int requestCode);
    boolean searchPoiNearby(in String parameters,in int requestCode);
    boolean searchPoiAlongRoute(in String parameters,in int requestCode);
    boolean searchPoiFavorite(in int parameters,in int requestCode);
    boolean generalNavigate(in String parameters,in int route_type,in int coord_type);
    boolean showOnMap(in String paramString);
    boolean navigate(in String destPoiResult,in int route_type,in String passPoiResult);
	boolean showLocation();
    boolean showTraffic(in String parameters);
	boolean settingOption(in String paramString);
	boolean setAvoidPlace(in String paramString);
	boolean setPassPlace(in String paramString);
	void onGetMapShareState(in int requestCode);
	boolean shareByMap(in String parameters);
	String getLocation();
}
