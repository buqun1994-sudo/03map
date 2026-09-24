.class public Ln1$a;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    const-string v1, "audioChannel"

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    const/4 v0, 0x5

    .line 11
    const-string v1, "ttsDelayAfterPlay"

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    const/4 v0, 0x6

    .line 17
    const-string v1, "ttsDelayBeforePlay"

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    const/16 v0, 0x16

    .line 24
    const-string v1, "isAudioDataSameWithAmap"

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    const/16 v0, 0x15

    .line 31
    const-string v1, "isNeedStopAudioTrack"

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    const/16 v0, 0x14

    .line 38
    const-string v1, "isVolumeZeroNeedPauseBackgroundNoises"

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    const/16 v0, 0xa

    .line 45
    const-string v1, "isUserHighVersionAudioApi"

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    const/16 v0, 0x13

    .line 52
    const-string v1, "isNeedContinueTtsAfterFocusLoss"

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    const/16 v0, 0x9

    .line 59
    const-string v1, "isPlayWarningSoundNeedRequestFocus"

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    const/16 v0, 0x8

    .line 66
    const-string v1, "isNeedAudioRequestFocus"

    .line 68
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    const/4 v0, 0x7

    .line 72
    const-string v1, "GetAudioTrackBufferSize"

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    const/16 v0, 0xd

    .line 79
    const-string v1, "Pos_Type"

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    const/16 v0, 0xe

    .line 86
    const-string v1, "gpsTimeOffset"

    .line 88
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    const/16 v0, 0x10

    .line 93
    const-string v1, "isSpeakByTTS"

    .line 95
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    const/16 v0, 0x11

    .line 100
    const-string v1, "XunFeiVoiceLine"

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    const/16 v0, 0x12

    .line 107
    const-string v1, "locationInteval"

    .line 109
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    const/16 v0, 0x18

    .line 114
    const-string v1, "audioMode"

    .line 116
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const/16 v0, 0x19

    .line 121
    const-string v1, "show_send2car"

    .line 123
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    const/16 v0, 0x1a

    .line 128
    const-string v1, "Common_Activation_Mode"

    .line 130
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    const/16 v0, 0x1b

    .line 135
    const-string v1, "isNeedDataUpdateMessage"

    .line 137
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    const/16 v0, 0x1c

    .line 142
    const-string v1, "isEnableSpeedLimitfunc"

    .line 144
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    const/16 v0, 0x1d

    .line 149
    const-string v1, "heartbeatFrequency"

    .line 151
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    const/16 v0, 0x1e

    .line 156
    const-string v1, "isNeedShowSystemBarSetting"

    .line 158
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    const/16 v0, 0x1f

    .line 163
    const-string v1, "IS_NEED_SHOW_FLOAT_WINDOW"

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    const/16 v0, 0x20

    .line 170
    const-string v1, "gdArCameraServiceAppPackage"

    .line 172
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    const/16 v0, 0x21

    .line 177
    const-string v1, "isEnableOilRemind"

    .line 179
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    const/16 v0, 0x22

    .line 184
    const-string v1, "MapDataPath"

    .line 186
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    const/16 v0, 0x23

    .line 191
    const-string v1, "isNeedOpenADAS"

    .line 193
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    const/16 v0, 0x24

    .line 198
    const-string v1, "showHomepageBtn"

    .line 200
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    const/16 v0, 0x25

    .line 205
    const-string v1, "AudioPath"

    .line 207
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    const/16 v0, 0x26

    .line 212
    const-string v1, "MapViewParam_textScale"

    .line 214
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    const/16 v0, 0x27

    .line 219
    const-string v1, "SimulateSpeedS"

    .line 221
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    const/16 v0, 0x28

    .line 226
    const-string v1, "isNeedCopySofile"

    .line 228
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    const/16 v0, 0x29

    .line 233
    const-string v1, "isNeedServiceStartForeground"

    .line 235
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    const/16 v0, 0x2a

    .line 240
    const-string v1, "isEnableGoHomeOrCompanyRemind"

    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    const/16 v0, 0x2b

    .line 247
    const-string v1, "DIRECT_FEATURE_ENABLE"

    .line 249
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    const/16 v0, 0x2c

    .line 254
    const-string v1, "isUseSystemToast"

    .line 256
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    const/16 v0, 0x2d

    .line 261
    const-string v1, "status_bar_show_gps"

    .line 263
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    const/16 v0, 0x2e

    .line 268
    const-string v1, "activateSpecifiedPath"

    .line 270
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    const/16 v0, 0x2f

    .line 275
    const-string v1, "status_bar_show_VolumeBar"

    .line 277
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    const/16 v0, 0x30

    .line 282
    const-string v1, "restKey"

    .line 284
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    const/16 v0, 0x31

    .line 289
    const-string v1, "isNeedPreviewMapShow"

    .line 291
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    const/16 v0, 0x32

    .line 296
    const-string v1, "isShieldCameraWord"

    .line 298
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    const/16 v0, 0x33

    .line 303
    const-string v1, "isShowMuteToast"

    .line 305
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    const/16 v0, 0x34

    .line 310
    const-string v1, "screenShotWidth"

    .line 312
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    const/16 v0, 0x35

    .line 317
    const-string v1, "projID"

    .line 319
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    const/16 v0, 0x36

    .line 324
    const-string v1, "ShowPhoneConnect"

    .line 326
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    const/16 v0, 0x37

    .line 331
    const-string v1, "SendSatelliteInfo"

    .line 333
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    const/16 v0, 0x38

    .line 338
    const-string v1, "animationFPSNew"

    .line 340
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    const/16 v0, 0x39

    .line 345
    const-string v1, "isAutoOpenLight"

    .line 347
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    const/16 v0, 0x3a

    .line 352
    const-string v1, "status_bar_show_time"

    .line 354
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    const/16 v0, 0x3b

    .line 359
    const-string v1, "isOpenNaviSettingAutoScale"

    .line 361
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    const/16 v0, 0x3c

    .line 366
    const-string v1, "AutoNaviRoot"

    .line 368
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    const/16 v0, 0x3d

    .line 373
    const-string v1, "isNeedMixModel"

    .line 375
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    const/16 v0, 0x3e

    .line 380
    const-string v1, "DoSurfaceClean"

    .line 382
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    const/16 v0, 0x3f

    .line 387
    const-string v1, "isDynamicStoragePath"

    .line 389
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    const/16 v0, 0x40

    .line 394
    const-string v1, "status_bar_show_wifi"

    .line 396
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    const/16 v0, 0x41

    .line 401
    const-string v1, "isNeedAnimation"

    .line 403
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    const/16 v0, 0x42

    .line 408
    const-string v1, "GetArCameraType"

    .line 410
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    const/16 v0, 0x43

    .line 415
    const-string v1, "isSupportArNavi"

    .line 417
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    const/16 v0, 0x44

    .line 422
    const-string v1, "isGpsViewCanEnter"

    .line 424
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    const/16 v0, 0x45

    .line 429
    const-string v1, "Warning_EXIT_Btn"

    .line 431
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    const/16 v0, 0x46

    .line 436
    const-string v1, "isUseLocalHtml"

    .line 438
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    const/16 v0, 0x47

    .line 443
    const-string v1, "isNeedShowOfflineData"

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    const/16 v0, 0x48

    .line 450
    const-string v1, "isNeedShowNaviHomeButton"

    .line 452
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    const/16 v0, 0x49

    .line 457
    const-string v1, "isNeedContinueSimulateNaviFromBackground"

    .line 459
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    const/16 v0, 0x4a

    .line 464
    const-string v1, "defaultSecurityReminderState"

    .line 466
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    const/16 v0, 0x4b

    .line 471
    const-string v1, "GetArImageFormat"

    .line 473
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    const/16 v0, 0x4c

    .line 478
    const-string v1, "isNeedShowInterconnection"

    .line 480
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    const/16 v0, 0x4d

    .line 485
    const-string v1, "isNeedInputMethodSetting"

    .line 487
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    const/16 v0, 0x4e

    .line 492
    const-string v1, "UserDataPath"

    .line 494
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    const/16 v0, 0x4f

    .line 499
    const-string v1, "SetFuncShowOnMenu"

    .line 501
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    const/16 v0, 0x50

    .line 506
    const-string v1, "isEnableDistanceLimitationOnCalculate"

    .line 508
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    const/16 v0, 0x51

    .line 513
    const-string v1, "defaultLineWidth"

    .line 515
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    const/16 v0, 0x52

    .line 520
    const-string v1, "isNeedDisplayIconFollowServerRule"

    .line 522
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 525
    const/16 v0, 0x53

    .line 527
    const-string v1, "isEnableInitIflytek"

    .line 529
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    const/16 v0, 0x54

    .line 534
    const-string v1, "isDoubleClickToBackground"

    .line 536
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    const/16 v0, 0x55

    .line 541
    const-string v1, "StartNaviCount"

    .line 543
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    const/16 v0, 0x56

    .line 548
    const-string v1, "isNeedHideDataConsumeDialog"

    .line 550
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    const/16 v0, 0x57

    .line 555
    const-string v1, "switch_daynight"

    .line 557
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 560
    const/16 v0, 0x58

    .line 562
    const-string v1, "isTransferInfoWhileSpeedLimitEnable"

    .line 564
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    const/16 v0, 0x59

    .line 569
    const-string v1, "isNeedMD5Check"

    .line 571
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    const/16 v0, 0x5a

    .line 576
    const-string v1, "isBgBitMapRun"

    .line 578
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 581
    const/16 v0, 0x5b

    .line 583
    const-string v1, "HandWriting_StrokeWeight"

    .line 585
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    const/16 v0, 0x5c

    .line 590
    const-string v1, "isBackgroundWidgetRender"

    .line 592
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 595
    const/16 v0, 0x5d

    .line 597
    const-string v1, "isNeedNotifyTunnelStatus"

    .line 599
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    const/16 v0, 0x5e

    .line 604
    const-string v1, "DefaultThemeBackgroundColor"

    .line 606
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    const/16 v0, 0x5f

    .line 611
    const-string v1, "isChangeVolumePlayCurrentVolume"

    .line 613
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 616
    const/16 v0, 0x60

    .line 618
    const-string v1, "getDefaultVolumNum"

    .line 620
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    const/16 v0, 0x61

    .line 625
    const-string v1, "Common_MapNum_Type"

    .line 627
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    const/16 v0, 0x62

    .line 632
    const-string v1, "isNeedRouteGrowthAnimation"

    .line 634
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    const/16 v0, 0x63

    .line 639
    const-string v1, "isNeedVoiceRoleChange"

    .line 641
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    const/16 v0, 0x64

    .line 646
    const-string v1, "touchKeyBeep"

    .line 648
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    const/16 v0, 0x65

    .line 653
    const-string v1, "isUnlockMapAngle"

    .line 655
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 658
    const/16 v0, 0x66

    .line 660
    const-string v1, "HomeBtnDisplay"

    .line 662
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    const/16 v0, 0x67

    .line 667
    const-string v1, "isChananAgroup"

    .line 669
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 672
    const/16 v0, 0x68

    .line 674
    const-string v1, "CruiseBackgroundFunc"

    .line 676
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 679
    const/16 v0, 0x69

    .line 681
    const-string v1, "isExt4So"

    .line 683
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 686
    const/16 v0, 0x6a

    .line 688
    const-string v1, "isBackgroundCruiseVoiceGuide"

    .line 690
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    const/16 v0, 0x6b

    .line 695
    const-string v1, "IS_NEED_SHOW_NET_WORK_TYPE"

    .line 697
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 700
    const/16 v0, 0x6c

    .line 702
    const-string v1, "isNeedWifiConnectTip"

    .line 704
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    const/16 v0, 0x6d

    .line 709
    const-string v1, "ShowNetSet"

    .line 711
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 714
    const/16 v0, 0x6e

    .line 716
    const-string v1, "isNaviCompleteNeedCountDown"

    .line 718
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 721
    const/16 v0, 0x6f

    .line 723
    const-string v1, "ShowGPS"

    .line 725
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 728
    const/16 v0, 0x70

    .line 730
    const-string v1, "getThresholdValue"

    .line 732
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    const/16 v0, 0x71

    .line 737
    const-string v1, "isOpenAutomaticTripRecord"

    .line 739
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    const/16 v0, 0x72

    .line 744
    const-string v1, "isOpenInputMethodSwitch"

    .line 746
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 749
    const/16 v0, 0x73

    .line 751
    const-string v1, "isLocationDecryptedIntoGcj02"

    .line 753
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 756
    const/16 v0, 0x74

    .line 758
    const-string v1, "isHelpAllUseLocalHtml"

    .line 760
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    const/16 v0, 0x75

    .line 765
    const-string v1, "getMixModeDefaultValue"

    .line 767
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    const/16 v0, 0x76

    .line 772
    const-string v1, "getGpsTimeOut"

    .line 774
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    const/16 v0, 0x77

    .line 779
    const-string v1, "isNeedShowBrandCarLogo"

    .line 781
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 784
    const/16 v0, 0x78

    .line 786
    const-string v1, "isNeedReplaceWarnConten"

    .line 788
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    const/16 v0, 0x79

    .line 793
    const-string v1, "trafficID"

    .line 795
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 798
    const/16 v0, 0x7a

    .line 800
    const-string v1, "isTrafficEventReportEnable"

    .line 802
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 805
    const/16 v0, 0x7b

    .line 807
    const-string v1, "isNeedSupportPlugAndPlay"

    .line 809
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    const/16 v0, 0x7c

    .line 814
    const-string v1, "IsNeedScreencapture"

    .line 816
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 819
    const/16 v0, 0x7d

    .line 821
    const-string v1, "isPlayWarnSound"

    .line 823
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    const/16 v0, 0x7e

    .line 828
    const-string v1, "getNeedShieldLanName"

    .line 830
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    const/16 v0, 0x7f

    .line 835
    const-string v1, "StartNaviCountConfig"

    .line 837
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 840
    const/16 v0, 0x80

    .line 842
    const-string v1, "widgetType"

    .line 844
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 847
    const/16 v0, 0x81

    .line 849
    const-string v1, "trafficPwd"

    .line 851
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 854
    const/16 v0, 0x82

    .line 856
    const-string v1, "maxVolumePercent"

    .line 858
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 861
    const/16 v0, 0x83

    .line 863
    const-string v1, "status_bar_time_format"

    .line 865
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 868
    const/16 v0, 0x84

    .line 870
    const-string v1, "screenShotHeight"

    .line 872
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 875
    const/16 v0, 0x85

    .line 877
    const-string v1, "gestureFPSNew"

    .line 879
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 882
    const/16 v0, 0x86

    .line 884
    const-string v1, "isSocolEnable"

    .line 886
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 889
    const/16 v0, 0x87

    .line 891
    const-string v1, "isSupportAlinkFunction"

    .line 893
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 896
    const/16 v0, 0x88

    .line 898
    const-string v1, "ShowQuitAuto"

    .line 900
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 903
    const/16 v0, 0x89

    .line 905
    const-string v1, "SearchSatMode"

    .line 907
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 910
    const/16 v0, 0x8a

    .line 912
    const-string v1, "cacheCntFactor"

    .line 914
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 917
    const/16 v0, 0x8b

    .line 919
    const-string v1, "IsReplaceKeyword"

    .line 921
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 924
    const/16 v0, 0x8c

    .line 926
    const-string v1, "isOpenOfflineDataMessage"

    .line 928
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 931
    const/16 v0, 0x8d

    .line 933
    const-string v1, "restSecurityCode"

    .line 935
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 938
    const/16 v0, 0x8e

    .line 940
    const-string v1, "defaultNaviCarMode"

    .line 942
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 945
    const/16 v0, 0x8f

    .line 947
    const-string v1, "gdArCameraServiceActionName"

    .line 949
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 952
    const/16 v0, 0x90

    .line 954
    const-string v1, "isNeedShowRouteOverviewAnimation"

    .line 956
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 959
    const/16 v0, 0x91

    .line 961
    const-string v1, "getDefaultFloatingWindowValue"

    .line 963
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 966
    const/16 v0, 0x92

    .line 968
    const-string v1, "isShowNoDataNoInternetView"

    .line 970
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 973
    const/16 v0, 0x93

    .line 975
    const-string v1, "isNeedReadOfflineData"

    .line 977
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    const/16 v0, 0x94

    .line 982
    const-string v1, "isNeedKickOffAutoNaviAccount"

    .line 984
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 987
    const/16 v0, 0x95

    .line 989
    const-string v1, "isNeedSendLastMile"

    .line 991
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 994
    const/16 v0, 0x96

    .line 996
    const-string v1, "isNeedDisplayGrid"

    .line 998
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    const/16 v0, 0x97

    .line 1003
    const-string v1, "status_panel_show_time"

    .line 1005
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1008
    const/16 v0, 0x98

    .line 1010
    const-string v1, "isNeedOpenAgroup"

    .line 1012
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1015
    const/16 v0, 0x99

    .line 1017
    const-string v1, "isNeedOpenForegroundSendToCar"

    .line 1019
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1022
    const/16 v0, 0x9a

    .line 1024
    const-string v1, "isNeedShowWarningInterface"

    .line 1026
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1029
    const/16 v0, 0x9b

    .line 1031
    const-string v1, "isNeedBindAccount"

    .line 1033
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1036
    const/16 v0, 0x9c

    .line 1038
    const-string v1, "defaultEdogTrafficState"

    .line 1040
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1043
    const/16 v0, 0x9d

    .line 1045
    const-string v1, "isNeedShowWeatherInfo"

    .line 1047
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1050
    const/16 v0, 0x9e

    .line 1052
    const-string v1, "isNeedProvideMatchPositionInfo"

    .line 1054
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1057
    const/16 v0, 0x9f

    .line 1059
    const-string v1, "isCheckPullUSBPath"

    .line 1061
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1064
    const/16 v0, 0xa0

    .line 1066
    const-string v1, "defaultEdogCarmeraState"

    .line 1068
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1071
    const/16 v0, 0xa1

    .line 1073
    const-string v1, "getGpsSpeedRedressMultiple"

    .line 1075
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1078
    const/16 v0, 0xa2

    .line 1080
    const-string v1, "getGpsAdjustmentParameter"

    .line 1082
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1085
    const/16 v0, 0xa3

    .line 1087
    const-string v1, "isUseSystemCameraCalibration"

    .line 1089
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1092
    const/16 v0, 0xa4

    .line 1094
    const-string v1, "NaviMode"

    .line 1096
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1099
    const/16 v0, 0xa5

    .line 1101
    const-string v1, "isSupportInstrumentShowAR"

    .line 1103
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1106
    const/16 v0, 0xa6

    .line 1108
    const-string v1, "SensorDataType"

    .line 1110
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1113
    const/16 v0, 0xa7

    .line 1115
    const-string v1, "isShowARNightDialogue"

    .line 1117
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1120
    const/16 v0, 0xa8

    .line 1122
    const-string v1, "ARNaviFrame"

    .line 1124
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1127
    const/16 v0, 0xa9

    .line 1129
    const-string v1, "ARRenderingFPS"

    .line 1131
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1134
    const/16 v0, 0xaa

    .line 1136
    const-string v1, "ARImageRecognizingFPS"

    .line 1138
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1141
    const/16 v0, 0xab

    .line 1143
    const-string v1, "iSNeedProtocolAdapting"

    .line 1145
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1148
    const/16 v0, 0xc

    .line 1150
    const-string v1, "SysFontPath"

    .line 1152
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1155
    const/16 v0, 0x17

    .line 1157
    const-string v1, "isPlayWithoutFocusSucceed"

    .line 1159
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1162
    const/16 v0, 0xac

    .line 1164
    const-string v1, "OpenAGroupVoiceCommFunc"

    .line 1166
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1169
    const/16 v0, 0xad

    .line 1171
    const-string v1, "ARSingleMultiVehicleRecognizing"

    .line 1173
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1176
    const/16 v0, 0xae

    .line 1178
    const-string v1, "ARSSDRecognizingFPS"

    .line 1180
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1183
    const/16 v0, 0xaf

    .line 1185
    const-string v1, "ARSEGRecognizingFPS"

    .line 1187
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1190
    const/16 v0, 0xb0

    .line 1192
    const-string v1, "ARTrackingRecognizingFPS"

    .line 1194
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1197
    const/16 v0, 0xb1

    .line 1199
    const-string v1, "getARCameraId"

    .line 1201
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1204
    const/16 v0, 0xb2

    .line 1206
    const-string v1, "isPlayByAudioTrack"

    .line 1208
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1211
    const/16 v0, 0xb3

    .line 1213
    const-string v1, "isAudioStreamCustomSync"

    .line 1215
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1218
    const/16 v0, 0xb4

    .line 1220
    const-string v1, "getTtsIncreaseDefaultNum"

    .line 1222
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1225
    const/16 v0, 0xb5

    .line 1227
    const-string v1, "isNeedGetSystemVolume"

    .line 1229
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1232
    const/16 v0, 0xb6

    .line 1234
    const-string v1, "isIgnoreAndroidVolumeBroadcast"

    .line 1236
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1239
    const/16 v0, 0xb7

    .line 1241
    const-string v1, "setVolumeToZeroWhenMute"

    .line 1243
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1246
    const/16 v0, 0xb8

    .line 1248
    const-string v1, "isNeedPlayDestinationVoice"

    .line 1250
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1253
    const/16 v0, 0xb9

    .line 1255
    const-string v1, "isRequestDelayedNeedPlay"

    .line 1257
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1260
    const/16 v0, 0xba

    .line 1262
    const-string v1, "audioContentType"

    .line 1264
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1267
    const/16 v0, 0xbb

    .line 1269
    const-string v1, "MainIconScale"

    .line 1271
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1274
    const/16 v0, 0xbc

    .line 1276
    const-string v1, "MainMapOverlayScale"

    .line 1278
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1281
    const/16 v0, 0xbd

    .line 1283
    const-string v1, "MapTextRatio"

    .line 1285
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1288
    const/16 v0, 0xbe

    .line 1290
    const-string v1, "EGMapProfileNew"

    .line 1292
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1295
    const/16 v0, 0xc0

    .line 1297
    const-string v1, "ttsShakeDelayBeforePlay"

    .line 1299
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1302
    const/16 v0, 0xc1

    .line 1304
    const-string v1, "ttsShakeState"

    .line 1306
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1309
    const/16 v0, 0xc2

    .line 1311
    const-string v1, "ttsShakeVolatilityValue"

    .line 1313
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1316
    const/16 v0, 0xc3

    .line 1318
    const-string v1, "isNeedSwitchNewIconID"

    .line 1320
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1323
    const/16 v0, 0xc4

    .line 1325
    const-string v1, "getGpsAdjustmentParameterThreshold"

    .line 1327
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1330
    return-void
.end method
