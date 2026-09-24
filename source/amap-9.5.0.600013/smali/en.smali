.class public abstract Len;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeCollectionData(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    const-string p2, "GLogSpy"

    .line 11
    const-string v0, "collectData throwable"

    .line 13
    invoke-static {p2, v0, p0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeCollectionDataDB(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    const-string p2, "GLogSpy"

    .line 11
    const-string p3, "collectDataDB throwable"

    .line 13
    invoke-static {p2, p3, p0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeCollectionDataEx(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    const-string p2, "GLogSpy"

    .line 11
    const-string p3, "collectDataEx throwable"

    .line 13
    invoke-static {p2, p3, p0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method
