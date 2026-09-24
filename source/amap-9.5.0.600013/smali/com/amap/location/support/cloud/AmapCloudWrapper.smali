.class public Lcom/amap/location/support/cloud/AmapCloudWrapper;
.super Lcom/amap/location/support/dispatch/ListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/ListenerWrapper<",
        "Lcom/amap/location/support/cloud/IAmapCloudListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmapCloudWrapper"


# instance fields
.field private mDistributed:Z


# direct methods
.method public constructor <init>(Lcom/amap/location/support/cloud/IAmapCloudListener;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/dispatch/ListenerWrapper;-><init>(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/amap/location/support/cloud/AmapCloudWrapper;->mDistributed:Z

    .line 7
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p4, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string p3, "what: "

    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string p3, " mDistributed:"

    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean p3, p0, Lcom/amap/location/support/cloud/AmapCloudWrapper;->mDistributed:Z

    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    const-string p3, "AmapCloudWrapper"

    .line 33
    invoke-static {p3, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    check-cast p4, Lorg/json/JSONObject;

    .line 38
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lcom/amap/location/support/cloud/IAmapCloudListener;

    .line 44
    const/4 p3, 0x1

    .line 45
    if-eq p1, p3, :cond_1

    .line 47
    const/4 v0, 0x2

    .line 48
    if-ne p1, v0, :cond_4

    .line 50
    iget-boolean p1, p0, Lcom/amap/location/support/cloud/AmapCloudWrapper;->mDistributed:Z

    .line 52
    if-nez p1, :cond_4

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/amap/location/support/cloud/IAmapCloudListener;->getKey()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 64
    return-void

    .line 65
    :cond_2
    iput-boolean p3, p0, Lcom/amap/location/support/cloud/AmapCloudWrapper;->mDistributed:Z

    .line 67
    invoke-virtual {p2}, Lcom/amap/location/support/cloud/IAmapCloudListener;->getKey()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p2}, Lcom/amap/location/support/cloud/IAmapCloudListener;->onUpdated()V

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p2}, Lcom/amap/location/support/cloud/IAmapCloudListener;->onDisabled()V

    .line 84
    :cond_4
    :goto_0
    return-void
.end method
