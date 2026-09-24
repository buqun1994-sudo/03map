.class Lcom/amap/location/sdk/fusion/c$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/c$5;->a(Ljava/lang/String;JJ[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:[B

.field final synthetic e:Lcom/amap/location/sdk/fusion/c$5;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/c$5;Ljava/lang/String;JJ[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/c$5$2;->e:Lcom/amap/location/sdk/fusion/c$5;

    .line 3
    iput-object p2, p0, Lcom/amap/location/sdk/fusion/c$5$2;->a:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/amap/location/sdk/fusion/c$5$2;->b:J

    .line 7
    iput-wide p5, p0, Lcom/amap/location/sdk/fusion/c$5$2;->c:J

    .line 9
    iput-object p7, p0, Lcom/amap/location/sdk/fusion/c$5$2;->d:[B

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/c$5$2;->e:Lcom/amap/location/sdk/fusion/c$5;

    .line 3
    iget-object v0, v0, Lcom/amap/location/sdk/fusion/c$5;->a:Lcom/amap/location/sdk/fusion/c;

    .line 5
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/c;->l(Lcom/amap/location/sdk/fusion/c;)Lcom/amap/location/sdk/fusion/LocationStatusListener;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/c$5$2;->a:Ljava/lang/String;

    .line 13
    iget-wide v3, p0, Lcom/amap/location/sdk/fusion/c$5$2;->b:J

    .line 15
    iget-wide v5, p0, Lcom/amap/location/sdk/fusion/c$5$2;->c:J

    .line 17
    iget-object v7, p0, Lcom/amap/location/sdk/fusion/c$5$2;->d:[B

    .line 19
    invoke-interface/range {v1 .. v7}, Lcom/amap/location/sdk/fusion/LocationStatusListener;->onDataReport(Ljava/lang/String;JJ[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    const-string v1, "mainserviceproxy"

    .line 26
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :cond_0
    :goto_0
    return-void
.end method
