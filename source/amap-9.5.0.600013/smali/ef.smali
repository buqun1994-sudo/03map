.class public abstract Lef;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeGetColomboMsg(I)V

    .line 4
    return-void
.end method

.method public static b(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 15
    aput-object p0, v0, v1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x1

    .line 26
    aput-object p0, v0, v1

    .line 28
    const/4 p0, 0x2

    .line 29
    aput-object p1, v0, p0

    .line 31
    const-string p0, "ColomboMsgManager"

    .line 33
    const-string p1, "notifyColomboMsg: msgType = {?},len = {?},msg = {?}"

    .line 35
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method
