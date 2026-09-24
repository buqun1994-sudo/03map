.class Lcom/amap/location/sdk/d/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/app/MessageCenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/d/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/d/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/d/a/a$3;->a:Lcom/amap/location/sdk/d/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public onChange(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/amap/location/sdk/d/a/a$3;->a:Lcom/amap/location/sdk/d/a/a;

    .line 12
    const-wide/16 v0, -0x2

    .line 14
    invoke-static {p1, v0, v1}, Lcom/amap/location/sdk/d/a/a;->a(Lcom/amap/location/sdk/d/a/a;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    const-string v0, "phone_state_coll"

    .line 21
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_0
    :goto_0
    return-void
.end method
