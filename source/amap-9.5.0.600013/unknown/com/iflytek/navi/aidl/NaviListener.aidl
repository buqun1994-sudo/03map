package com.iflytek.navi.aidl;
interface NaviListener{
   void onSearchPoiResult(int requestCode, int resultCode, String poiResult);
   void onMapShareStateResult(int requestCode, int resultCode);
}
