.class public Lcom/autonavi/amapauto/jni/UserInfoReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static feedBackLocationSDKLog()Z
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lxy;->a()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0
.end method
