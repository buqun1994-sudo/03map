.class public Le30$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le30;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le30;


# direct methods
.method public constructor <init>(Le30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le30$c;->a:Le30;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le30$c;->a:Le30;

    .line 3
    new-instance v1, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;

    .line 5
    iget-object v2, p0, Le30$c;->a:Le30;

    .line 7
    invoke-static {v2}, Le30;->h(Le30;)La30;

    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;-><init>(La30;)V

    .line 14
    invoke-static {v0, v1}, Le30;->g(Le30;Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;)Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;

    .line 17
    :try_start_0
    iget-object v0, p0, Le30$c;->a:Le30;

    .line 19
    invoke-static {v0}, Le30;->f(Le30;)Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const/4 v1, 0x0

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    const-string v2, "NetworkManager"

    .line 33
    const-string v3, "[addListener]Exception"

    .line 35
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    :goto_0
    iget-object v0, p0, Le30$c;->a:Le30;

    .line 40
    invoke-static {v0}, Le30;->i(Le30;)V

    .line 43
    return-void
.end method
