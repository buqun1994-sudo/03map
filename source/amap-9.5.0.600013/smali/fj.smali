.class public abstract Lfj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, "Camera1"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Camera2"

    goto :goto_0

    :cond_1
    const-string p0, "GDCamera"

    :goto_0
    return-object p0
.end method

.method public static b()I
    .locals 3

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "GetArImageFormat"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 20
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    const/16 v0, 0x27

    .line 30
    const/16 v2, 0x27

    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    const v0, 0x2000031

    .line 36
    const v2, 0x2000031

    .line 39
    goto :goto_0

    .line 40
    :pswitch_2
    const v0, 0x2000030

    .line 43
    const v2, 0x2000030

    .line 46
    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v0, 0x3

    .line 48
    const/4 v2, 0x3

    .line 49
    goto :goto_0

    .line 50
    :pswitch_4
    const/16 v0, 0x100

    .line 52
    const/16 v2, 0x100

    .line 54
    goto :goto_0

    .line 55
    :pswitch_5
    const/4 v0, 0x1

    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :pswitch_6
    const/16 v0, 0x11

    .line 60
    const/16 v2, 0x11

    .line 62
    goto :goto_0

    .line 63
    :pswitch_7
    const v0, 0x32315659

    .line 66
    const v2, 0x32315659

    .line 69
    goto :goto_0

    .line 70
    :pswitch_8
    const/16 v0, 0x23

    .line 72
    const/16 v2, 0x23

    .line 74
    :catch_0
    :cond_0
    :goto_0
    return v2

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "GetArImageFormat"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    const-string v2, "unkonw"

    .line 19
    if-nez v1, :cond_0

    .line 21
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    move-result v0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 28
    goto :goto_1

    .line 29
    :pswitch_0
    const-string v0, "YUV_422_888"

    .line 31
    goto :goto_0

    .line 32
    :pswitch_1
    const-string v0, "BGRABGRA_8888"

    .line 34
    goto :goto_0

    .line 35
    :pswitch_2
    const-string v0, "BGRBGR_888"

    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    const-string v0, "RGB_888"

    .line 40
    goto :goto_0

    .line 41
    :pswitch_4
    const-string v0, "JPEG"

    .line 43
    goto :goto_0

    .line 44
    :pswitch_5
    const-string v0, "RGBA_8888"

    .line 46
    goto :goto_0

    .line 47
    :pswitch_6
    const-string v0, "NV21"

    .line 49
    goto :goto_0

    .line 50
    :pswitch_7
    const-string v0, "YV12"

    .line 52
    goto :goto_0

    .line 53
    :pswitch_8
    const-string v0, "YUV420_888"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    move-object v2, v0

    .line 56
    :catch_0
    :cond_0
    :goto_1
    return-object v2

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "\u672a\u77e5\u7f51\u7edc\u7c7b\u578b"

    goto :goto_0

    :cond_0
    const-string p0, "wifi"

    goto :goto_0

    :cond_1
    const-string p0, "4G\u7f51\u7edc"

    goto :goto_0

    :cond_2
    const-string p0, "3G\u7f51\u7edc"

    goto :goto_0

    :cond_3
    const-string p0, "2G\u7f51\u7edc"

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "location"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/location/LocationManager;

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_2

    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    move-result v1

    .line 23
    if-gtz v1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "gps"

    .line 28
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_2
    :goto_0
    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    move-result-object p0

    .line 6
    const-string v1, "location_mode"

    .line 8
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    return v0
.end method

.method public static final g()Z
    .locals 7

    .line 1
    const-string v0, "result = "

    .line 3
    const-string v1, "----result---"

    .line 5
    :try_start_0
    const-string v2, "www.amap.com"

    .line 7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v5, "ping -c 3 -w 100 "

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Ljava/io/BufferedReader;

    .line 38
    new-instance v5, Ljava/io/InputStreamReader;

    .line 40
    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    new-instance v3, Ljava/lang/StringBuffer;

    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    if-eqz v5, :cond_0

    .line 57
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v4, "------ping-----"

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v6, "result content : "

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 93
    const-string v2, "success"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x1

    .line 114
    return v0

    .line 115
    :cond_1
    :try_start_1
    const-string v2, "failed"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v2

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    :try_start_2
    const-string v2, "InterruptedException"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    goto :goto_1

    .line 133
    :catch_1
    :try_start_3
    const-string v2, "IOException"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    .line 154
    return v0

    .line 155
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    throw v2
.end method
