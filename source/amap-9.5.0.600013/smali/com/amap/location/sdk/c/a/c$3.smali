.class final Lcom/amap/location/sdk/c/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/c/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->j()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "is_trace_open"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lcom/amap/location/sdk/c/a/c;->b(Z)V

    .line 15
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->j()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "is_key_log_switch"

    .line 21
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lcom/amap/location/sdk/c/a/c;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    return-void
.end method
