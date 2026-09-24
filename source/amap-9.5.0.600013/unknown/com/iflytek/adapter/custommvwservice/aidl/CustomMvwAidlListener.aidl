package com.iflytek.adapter.custommvwservice.aidl;

interface CustomMvwAidlListener {
	void onMVWWakeup(in int nMvwId, in int nMvwScore);
	void onVwInited(in boolean state, in int errId);
}
