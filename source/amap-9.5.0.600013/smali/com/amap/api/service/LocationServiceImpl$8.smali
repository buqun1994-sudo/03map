.class Lcom/amap/api/service/LocationServiceImpl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/service/LocationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/service/LocationServiceImpl;


# direct methods
.method public constructor <init>(Lcom/amap/api/service/LocationServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl$8;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 4
    if-eqz p4, :cond_0

    .line 6
    :try_start_0
    check-cast p4, [B

    .line 8
    invoke-static {p4}, Lcom/amap/location/support/util/IOUtils;->bytesToObj([B)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/amap/location/type/location/LocationMatch;

    .line 14
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->setLastLocationMatch(Lcom/amap/location/type/location/LocationMatch;)V

    .line 17
    invoke-static {}, Lcom/amap/location/sdk/f/a;->a()Lcom/amap/location/sdk/f/a;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lcom/amap/location/sdk/f/a;->a(Lcom/amap/location/type/location/LocationMatch;)V

    .line 24
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl$8;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 26
    invoke-static {p2}, Lcom/amap/api/service/LocationServiceImpl;->h(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/sdk/f/a/c;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Lcom/amap/location/sdk/f/a/c;->a(Lcom/amap/location/type/location/LocationMatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string p2, "mainservice"

    .line 37
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    :goto_0
    return-void
.end method
