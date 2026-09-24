.class public Loy$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loy;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loy;


# direct methods
.method public constructor <init>(Loy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loy$d;->a:Loy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "LocationInstrument"

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    const-string v3, "ca"

    .line 11
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Lzm;->C:Ljava/lang/String;

    .line 17
    invoke-virtual {v4, v5, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 20
    move-result v4

    .line 21
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 24
    const-string v3, "path"

    .line 26
    invoke-static {}, Lzm;->d()Lzm;

    .line 29
    move-result-object v4

    .line 30
    sget-object v5, Lzm;->D:Ljava/lang/String;

    .line 32
    const-string v6, ""

    .line 34
    invoke-virtual {v4, v5, v6}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v3, "setNetworkParams jsonObject={?}"

    .line 43
    const/4 v4, 0x1

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    aput-object v5, v4, v2

    .line 52
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v3, p0, Loy$d;->a:Loy;

    .line 57
    iget-object v3, v3, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 59
    const/16 v4, 0x11

    .line 61
    invoke-virtual {v3, v4, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->setParams(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void
.end method
