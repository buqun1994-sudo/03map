.class public Lv$e;
.super Lv$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lv$f;-><init>(Lv$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public g()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "com.stcloud.drive.EVT_ACC_STATUS"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.stcloud.drive.EVT_ACC_STATUS"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 14
    const-string p1, "acc"

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string p2, "1"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p2

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz p2, :cond_0

    .line 29
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p2, "0"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 41
    invoke-static {v1, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 44
    :cond_1
    :goto_0
    return v0
.end method
