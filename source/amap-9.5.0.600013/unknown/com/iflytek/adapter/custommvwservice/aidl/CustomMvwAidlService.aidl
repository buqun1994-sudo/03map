package com.iflytek.adapter.custommvwservice.aidl;

import java.util.List;
import com.iflytek.adapter.custommvwservice.aidl.CustomMvwAidlListener;

interface CustomMvwAidlService {
	int startForegroundIvw(String clientId, in List<String> keywords, boolean needSpWords, String packageName, CustomMvwAidlListener listener);
	int startBackgroundIvw(String clientId, in List<String> keywords, boolean needSpWords, CustomMvwAidlListener listener);
	int stopCustomIvw(String clientId);
}
