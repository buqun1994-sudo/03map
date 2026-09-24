.class public Lcom/autonavi/eaglet/surfacemng/cfg/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;,
        Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final NULL:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "SurfaceViewManagerCfg"

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final adapterLogo:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final adapterRes:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final cleanStartupBg:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final colorNaviBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final colorStatusBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final cover:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final coverCopyProxy:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final coverDelay:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final coverDelayOnCreate:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final disableMapColorClear:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final dummy:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final eagletBackDoor:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final exitAnimate:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final fence:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final fillNaviBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final fillStatusBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final firstStartup:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final fitMapSize:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapCallback2:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapCb2Delay:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapCb2MaxWait:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapInitMaxWait:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapRebindChangedSize:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapRebindDelay:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapRebindMultiWnd:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final mapResumeOnViewCreate:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final multiWnd:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final performanceCheck:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final removeCoverOnStart:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final resBackDoor:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field private static sSupported:Ljava/lang/Boolean;

.field public static final sync:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final uiOffset:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final widgetClearColor:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final widgetCover:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final widgetCoverMaxFrame:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final widgetWndId:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

.field public static final wndReuse:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 3
    const-string v1, "sm_enable_performance_check"

    .line 5
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->performanceCheck:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 10
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 12
    const-string v1, "sm_enable_dummy"

    .line 14
    const-string v2, "true"

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->dummy:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 21
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 23
    const-string v1, "sm_enable_adapter_res"

    .line 25
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 28
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->adapterRes:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 30
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 32
    const-string v1, "sm_enable_surface_sync"

    .line 34
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 37
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->sync:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 39
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 41
    const-string v1, "sm_enable_cover"

    .line 43
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 46
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->cover:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 48
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 50
    const-string v1, "sm_enable_surface_fence"

    .line 52
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 55
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->fence:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 57
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 59
    const-string v1, "sm_enable_wnd_reuse"

    .line 61
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 64
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->wndReuse:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 66
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 68
    const-string v1, "sm_enable_widget_cover"

    .line 70
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 73
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->widgetCover:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 75
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 77
    const-string v1, "sm_enable_fit_map_size"

    .line 79
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 82
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->fitMapSize:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 84
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 86
    const-string v1, "sm_clean_startup_bg"

    .line 88
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 91
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->cleanStartupBg:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 93
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 95
    const-string v1, "sm_support_remove_cover_on_start"

    .line 97
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 100
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->removeCoverOnStart:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 102
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 104
    const-string v1, "sm_support_adapter_logo"

    .line 106
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 109
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->adapterLogo:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 111
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 113
    const-string v1, "sm_support_fill_status_bar"

    .line 115
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 118
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->fillStatusBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 120
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 122
    const-string v1, "sm_support_fill_navi_bar"

    .line 124
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 127
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->fillNaviBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 129
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 131
    const-string v1, "sm_support_color_status_bar"

    .line 133
    const-string v2, "#00000000"

    .line 135
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->colorStatusBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 140
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 142
    const-string v1, "sm_support_color_navi_bar"

    .line 144
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->colorNaviBar:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 149
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 151
    const-string v1, "sm_support_res_backdoor"

    .line 153
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 156
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->resBackDoor:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 158
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 160
    const-string v1, "sm_support_eaglet_backdoor"

    .line 162
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 165
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->eagletBackDoor:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 167
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 169
    const-string v1, "sm_support_multi_wnd"

    .line 171
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 174
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->multiWnd:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 176
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 178
    const-string v1, "sm_support_ui_offset"

    .line 180
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 183
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->uiOffset:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 185
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 187
    const-string v1, "sm_disable_map_color_clear"

    .line 189
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 192
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->disableMapColorClear:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 194
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 196
    const-string v1, "sm_support_first_startup"

    .line 198
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 201
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->firstStartup:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 203
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 205
    const-string v1, "sm_support_exit_animate"

    .line 207
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 210
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->exitAnimate:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 212
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 214
    const-string v1, "sm_support_cover_delay"

    .line 216
    const-string v2, "0"

    .line 218
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->coverDelay:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 223
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 225
    const-string v1, "sm_support_cover_delay_on_create"

    .line 227
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->coverDelayOnCreate:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 232
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 234
    const-string v1, "sm_support_cover_copy_proxy"

    .line 236
    const-string v3, "onPause"

    .line 238
    invoke-direct {v0, v1, v3}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->coverCopyProxy:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 243
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 245
    const-string v1, "sm_enable_widgetCoverForWndId"

    .line 247
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 250
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->widgetWndId:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 252
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 254
    const-string v1, "sm_support_widget_clear_color"

    .line 256
    const-string v3, "127"

    .line 258
    invoke-direct {v0, v1, v3}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->widgetClearColor:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 263
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 265
    const-string v1, "sm_support_widgetCoverMaxFrame"

    .line 267
    const-string v3, "2"

    .line 269
    invoke-direct {v0, v1, v3}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->widgetCoverMaxFrame:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 274
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 276
    const-string v1, "sm_support_mapInitMaxWait"

    .line 278
    const-string v3, "4000"

    .line 280
    invoke-direct {v0, v1, v3}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapInitMaxWait:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 285
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 287
    const-string v1, "sm_support_map_cb2"

    .line 289
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 292
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCallback2:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 294
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 296
    const-string v1, "sm_support_map_cb2_max_wait"

    .line 298
    invoke-direct {v0, v1, v3}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCb2MaxWait:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 303
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 305
    const-string v1, "sm_support_map_cb2_delay"

    .line 307
    invoke-direct {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCb2Delay:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 312
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 314
    const-string v1, "sm_support_map_resume_on_view_create"

    .line 316
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 319
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapResumeOnViewCreate:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 321
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 323
    const-string v1, "sm_rebind_on_multi_wnd"

    .line 325
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 328
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapRebindMultiWnd:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 330
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 332
    const-string v1, "sm_rebind_map_changed_size"

    .line 334
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 337
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapRebindChangedSize:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 339
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 341
    const-string v1, "sm_rebind_map_delay"

    .line 343
    invoke-direct {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;)V

    .line 346
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapRebindDelay:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 348
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugLog(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->Logger()Lyr;

    move-result-object v0

    invoke-interface {v0}, Lyr;->a()Z

    move-result v0

    const-string v1, "SurfaceViewManagerCfg"

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {v1, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->Logger()Lyr;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lyr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static finishLoad()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet;->finishLoad()V

    .line 4
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->finishLoad()V

    .line 7
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->finishLoad()V

    .line 10
    return-void
.end method

.method public static getConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->c()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static isSupport()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->sSupported:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->c()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 25
    invoke-virtual {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->sSupported:Ljava/lang/Boolean;

    .line 35
    :cond_1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->sSupported:Ljava/lang/Boolean;

    .line 37
    if-nez v0, :cond_2

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    sput-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->sSupported:Ljava/lang/Boolean;

    .line 43
    :cond_2
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->sSupported:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result v0

    .line 49
    return v0
.end method

.method public static preLoad()V
    .locals 0

    .line 1
    invoke-static {}, Ldc0;->g()V

    .line 4
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet;->preLoad()V

    .line 7
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;->preLoad()V

    .line 10
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmiVar;->preLoad()V

    .line 13
    return-void
.end method
