.class public Lcom/amap/api/service/LocationServiceImpl;
.super Lcom/amap/location/sdk/fusion/ILocationService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/service/LocationServiceImpl$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/service/LocationServiceImpl$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/service/LocationServiceImpl$a<",
            "Lcom/amap/location/sdk/fusion/ILocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/amap/location/fusion/LocationProvider;

.field private c:Lcom/amap/location/sdk/c/a;

.field private final d:Ljava/lang/Object;

.field private e:Lcom/amap/location/sdk/fusion/IStatusCallback;

.field private f:Lcom/amap/location/sdk/fusion/ILocationCallback;

.field private g:Z

.field private h:J

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/Context;

.field private l:Lcom/amap/location/support/handler/AmapLooper;

.field private m:Lcom/amap/location/support/handler/AmapHandler;

.field private n:Z

.field private o:Lcom/amap/location/sdk/f/a/c;

.field private p:Lcom/amap/location/support/nl/NetworkLocationListener;

.field private q:Lcom/amap/location/support/fusion/IStatusListener;

.field private r:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private s:Lcom/amap/location/support/handler/OnHandleMessage;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/location/sdk/fusion/ILocationService$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/service/LocationServiceImpl;->g:Z

    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/amap/api/service/LocationServiceImpl;->i:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    .line 27
    new-instance v0, Lcom/amap/location/sdk/f/a/c;

    .line 29
    invoke-direct {v0}, Lcom/amap/location/sdk/f/a/c;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->o:Lcom/amap/location/sdk/f/a/c;

    .line 34
    new-instance v0, Lcom/amap/api/service/LocationServiceImpl$3;

    .line 36
    const/16 v1, 0x10

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/amap/api/service/LocationServiceImpl$3;-><init>(Lcom/amap/api/service/LocationServiceImpl;I)V

    .line 41
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 43
    new-instance v0, Lcom/amap/api/service/LocationServiceImpl$4;

    .line 45
    invoke-direct {v0, p0}, Lcom/amap/api/service/LocationServiceImpl$4;-><init>(Lcom/amap/api/service/LocationServiceImpl;)V

    .line 48
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->q:Lcom/amap/location/support/fusion/IStatusListener;

    .line 50
    new-instance v0, Lcom/amap/api/service/LocationServiceImpl$6;

    .line 52
    const-string v1, "LocationServiceImpl"

    .line 54
    invoke-direct {v0, p0, v1}, Lcom/amap/api/service/LocationServiceImpl$6;-><init>(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;)V

    .line 57
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->r:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 59
    new-instance v0, Lcom/amap/api/service/LocationServiceImpl$8;

    .line 61
    invoke-direct {v0, p0}, Lcom/amap/api/service/LocationServiceImpl$8;-><init>(Lcom/amap/api/service/LocationServiceImpl;)V

    .line 64
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->s:Lcom/amap/location/support/handler/OnHandleMessage;

    .line 66
    new-instance v0, Lcom/amap/api/service/LocationServiceImpl$9;

    .line 68
    invoke-direct {v0, p0}, Lcom/amap/api/service/LocationServiceImpl$9;-><init>(Lcom/amap/api/service/LocationServiceImpl;)V

    .line 71
    iput-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->t:Ljava/lang/Runnable;

    .line 73
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->k:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public static synthetic a(Lcom/amap/api/service/LocationServiceImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/service/LocationServiceImpl;->h:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/fusion/LocationProvider;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    return-object p0
.end method

.method public static synthetic a(Lcom/amap/api/service/LocationServiceImpl;Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/api/service/LocationServiceImpl;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;I)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/amap/api/service/LocationServiceImpl;->a(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 7

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string v1, "call back list is null so stop request"

    .line 135
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return v2

    .line 138
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 139
    invoke-static {p1}, Lcom/amap/location/support/util/IOUtils;->objToBytes(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 140
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/amap/location/sdk/fusion/ILocationCallback;

    .line 141
    invoke-interface {v3, p1}, Lcom/amap/location/sdk/fusion/ILocationCallback;->a([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    const v4, 0x18975

    .line 142
    :try_start_4
    invoke-static {v4}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    const-string v4, "mainservice"

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-gtz v1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string v1, "call back which can brd is null so stop request"

    .line 146
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 148
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 7

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string p2, "call back status list is null so stop request"

    .line 152
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit p0

    return v2

    .line 155
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 156
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/amap/location/sdk/fusion/ILocationCallback;

    invoke-interface {v3, p1, p2}, Lcom/amap/location/sdk/fusion/ILocationCallback;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "mainservice"

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback status error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-gtz v1, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string p2, "call back status which can brd is null so stop request"

    .line 160
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 162
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic b(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/support/nl/NetworkLocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/service/LocationServiceImpl;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->l:Lcom/amap/location/support/handler/AmapLooper;

    return-object p0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string v1, "call back provider enable list is null so stop request"

    .line 8
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return v2

    .line 11
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/amap/location/sdk/fusion/ILocationCallback;

    invoke-interface {v3, p1}, Lcom/amap/location/sdk/fusion/ILocationCallback;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "mainservice"

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback provider enable error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-gtz v1, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string v1, "call back provider enable which can brd is null so stop request"

    .line 16
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic d(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/sdk/fusion/ILocationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->f:Lcom/amap/location/sdk/fusion/ILocationCallback;

    return-object p0
.end method

.method private declared-synchronized d(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string v1, "call back provider disable list is null so stop request"

    .line 8
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return v2

    .line 11
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/amap/location/sdk/fusion/ILocationCallback;

    invoke-interface {v3, p1}, Lcom/amap/location/sdk/fusion/ILocationCallback;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "mainservice"

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback provider disable error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-gtz v1, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->h()V

    const-string p1, "mainservice"

    const-string v1, "call back provider disable which can brd is null so stop request"

    .line 16
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic e(Lcom/amap/api/service/LocationServiceImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/service/LocationServiceImpl;->g:Z

    return p0
.end method

.method public static synthetic f(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/sdk/fusion/IStatusCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->e:Lcom/amap/location/sdk/fusion/IStatusCallback;

    return-object p0
.end method

.method public static synthetic g(Lcom/amap/api/service/LocationServiceImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/service/LocationServiceImpl;->i:I

    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/sdk/f/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->o:Lcom/amap/location/sdk/f/a/c;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->i()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    .line 8
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->o:Lcom/amap/location/sdk/f/a/c;

    invoke-virtual {v0}, Lcom/amap/location/sdk/f/a/c;->b()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    invoke-virtual {v1}, Lcom/amap/location/fusion/LocationProvider;->removeFromMain()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    new-instance v2, Lcom/amap/api/service/LocationServiceImpl$7;

    invoke-direct {v2, p0}, Lcom/amap/api/service/LocationServiceImpl$7;-><init>(Lcom/amap/api/service/LocationServiceImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic i(Lcom/amap/api/service/LocationServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->i()V

    return-void
.end method

.method public static synthetic j(Lcom/amap/api/service/LocationServiceImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/service/LocationServiceImpl;->h:J

    .line 3
    return-wide v0
.end method

.method public static synthetic k(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/amap/api/service/LocationServiceImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/LocationServiceImpl;->t:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    return-void
.end method

.method public a(IJFZLcom/amap/location/sdk/fusion/ILocationCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/amap/api/service/LocationServiceImpl$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amap/api/service/LocationServiceImpl$a;-><init>(Lcom/amap/api/service/LocationServiceImpl;Lcom/amap/api/service/LocationServiceImpl$1;)V

    iput-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    :cond_0
    if-eqz p6, :cond_1

    .line 9
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    invoke-virtual {v1, p6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    iget-object p6, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    monitor-enter p6

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz v0, :cond_2

    .line 13
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amap/location/fusion/LocationProvider;->requestFromMain(IJFZ)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    new-instance v8, Lcom/amap/api/service/LocationServiceImpl$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/service/LocationServiceImpl$1;-><init>(Lcom/amap/api/service/LocationServiceImpl;IJFZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_0
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->o:Lcom/amap/location/sdk/f/a/c;

    invoke-virtual {p1}, Lcom/amap/location/sdk/f/a/c;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit p6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(Lcom/amap/location/fusion/LocationProvider;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 119
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    .line 120
    iget-boolean p1, p0, Lcom/amap/api/service/LocationServiceImpl;->n:Z

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/location/fusion/LocationProvider;->updateForegroundStatus(Z)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 123
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 127
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/amap/location/sdk/c/a;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->c:Lcom/amap/location/sdk/c/a;

    return-void
.end method

.method public a(Lcom/amap/location/sdk/fusion/ILocationAosProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lcom/amap/location/sdk/j/a;->a(Lcom/amap/location/sdk/fusion/ILocationAosProvider;)V

    return-void
.end method

.method public a(Lcom/amap/location/sdk/fusion/ILocationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->a:Lcom/amap/api/service/LocationServiceImpl$a;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-direct {p0}, Lcom/amap/api/service/LocationServiceImpl;->i()V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/amap/location/sdk/fusion/ILocationCallback;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->f:Lcom/amap/location/sdk/fusion/ILocationCallback;

    .line 26
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 27
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    invoke-virtual {p1, p4}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlayOnline(Z)V

    .line 28
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    monitor-enter p1

    .line 29
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz p2, :cond_0

    .line 30
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object p2

    iget-object p3, p0, Lcom/amap/api/service/LocationServiceImpl;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    iget-object p4, p0, Lcom/amap/api/service/LocationServiceImpl;->l:Lcom/amap/location/support/handler/AmapLooper;

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0, p4}, Lcom/amap/location/support/nl/INetworkLocator;->requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    new-instance p3, Lcom/amap/api/service/LocationServiceImpl$2;

    invoke-direct {p3, p0}, Lcom/amap/api/service/LocationServiceImpl$2;-><init>(Lcom/amap/api/service/LocationServiceImpl;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public a(Lcom/amap/location/sdk/fusion/IStatusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->e:Lcom/amap/location/sdk/fusion/IStatusCallback;

    .line 35
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->q:Lcom/amap/location/support/fusion/IStatusListener;

    invoke-static {p1}, Lcom/amap/location/support/fusion/RemoteProcessHelper;->setStatusListener(Lcom/amap/location/support/fusion/IStatusListener;)V

    return-void
.end method

.method public a(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 2

    .line 129
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->l:Lcom/amap/location/support/handler/AmapLooper;

    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->l:Lcom/amap/location/support/handler/AmapLooper;

    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->s:Lcom/amap/location/support/handler/OnHandleMessage;

    .line 131
    invoke-interface {p1, v0, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->m:Lcom/amap/location/support/handler/AmapHandler;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendParam(Ljava/lang/String;)V

    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-static {v0}, Lcom/amap/location/fusion/util/AmapExtraUtil;->updateHeaderConfig(Lorg/json/JSONObject;)V

    .line 39
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const-string p1, "auto_log_path"

    const-string v1, ""

    .line 40
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-static {p1}, Lcom/amap/location/support/util/FileUtils;->setExternalStoragePath(Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/amap/location/sdk/e/c;->a(Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    monitor-enter p1

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    invoke-virtual {v1, v0}, Lcom/amap/location/fusion/LocationProvider;->updateConfig(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl;->j:Ljava/util/List;

    new-instance v2, Lcom/amap/api/service/LocationServiceImpl$5;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/service/LocationServiceImpl$5;-><init>(Lcom/amap/api/service/LocationServiceImpl;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->c:Lcom/amap/location/sdk/c/a;

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/c/a;->a(Lorg/json/JSONObject;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception p1

    .line 52
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "cmdappstatus"

    const-string v5, "cmdnavi"

    const-string v6, "loc_scene"

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "cmdmainheartbeat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "cmdatuoproperty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "cmdenginenavilink"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "corner_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_6
    const-string v1, "cmdamapcloud"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "feedbackengine"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_8
    const-string v1, "opt_heartbeat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_9
    const-string v1, "cmdtesturl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_a
    const-string v1, "disturb_switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_b
    const-string v1, "feedbackuptunnel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_c
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_d
    const-string v1, "filter_gps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_b

    .line 54
    :pswitch_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p1

    if-ne p1, v3, :cond_10

    .line 55
    invoke-static {p4}, Lcom/amap/location/sdk/a/a;->a(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_1
    if-ne p2, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 56
    :goto_2
    invoke-static {v7}, Lcom/amap/location/support/app/MessageCenter;->setDisturbSwitch(Z)V

    goto/16 :goto_b

    .line 57
    :pswitch_2
    invoke-static {}, Lcom/amap/location/sdk/f/a;->a()Lcom/amap/location/sdk/f/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amap/location/sdk/f/a;->a(I)V

    goto/16 :goto_b

    .line 58
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 59
    invoke-static {p1, p2}, Lcom/amap/location/support/app/MessageCenter;->setMainProcessLastActiveTime(J)V

    goto/16 :goto_b

    .line 60
    :pswitch_4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object p1

    if-ne p2, v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-interface {p1, v7}, Lcom/amap/location/support/signal/gnss/IGnssManager;->setFilterGps(Z)V

    goto/16 :goto_b

    .line 61
    :pswitch_5
    invoke-static {v6, p2, p3, p4}, Lcom/amap/location/support/app/MessageCenter;->sendCommand(Ljava/lang/String;IILjava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/amap/location/sdk/f/a;->a()Lcom/amap/location/sdk/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/location/sdk/f/a;->c()V

    goto/16 :goto_b

    .line 63
    :pswitch_6
    invoke-static {v7}, Lcom/amap/location/sdk/e/c;->b(Z)V

    goto/16 :goto_b

    .line 64
    :pswitch_7
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz p1, :cond_10

    .line 65
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    invoke-virtual {p1, p4}, Lcom/amap/location/fusion/LocationProvider;->updateEngineNaviLink(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 66
    :pswitch_8
    iput p2, p0, Lcom/amap/api/service/LocationServiceImpl;->i:I

    .line 67
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->retryStart()V

    const-string p1, "mainservice"

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app current status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/service/LocationServiceImpl;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget p1, p0, Lcom/amap/api/service/LocationServiceImpl;->i:I

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Lcom/amap/location/sdk/e/c;->b(Z)V

    .line 70
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationDim()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x18966

    .line 71
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 72
    :cond_4
    invoke-static {v4, p2, p3, p4}, Lcom/amap/location/support/app/MessageCenter;->sendCommand(Ljava/lang/String;IILjava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz p1, :cond_6

    .line 74
    iput-boolean v8, p0, Lcom/amap/api/service/LocationServiceImpl;->n:Z

    .line 75
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    iget p2, p0, Lcom/amap/api/service/LocationServiceImpl;->i:I

    if-ne p2, v7, :cond_5

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {p1, v7}, Lcom/amap/location/fusion/LocationProvider;->updateForegroundStatus(Z)V

    goto :goto_6

    .line 76
    :cond_6
    iput-boolean v7, p0, Lcom/amap/api/service/LocationServiceImpl;->n:Z

    .line 77
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "foreground:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/amap/api/service/LocationServiceImpl;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/location/support/util/TestCaseUtil;->writeLog(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 78
    :pswitch_9
    invoke-static {}, Lcom/amap/location/support/uptunnel/UpTunnel;->uploadLogCmd()V

    goto/16 :goto_b

    .line 79
    :pswitch_a
    invoke-static {}, Lcom/amap/location/sdk/e/c;->b()V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendBroadcast(IJJLjava/lang/Object;)V

    const-string p1, "feedback"

    .line 81
    invoke-static {p1}, Lcom/amap/location/support/util/TestCaseUtil;->writeLog(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 82
    :pswitch_b
    invoke-static {p4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_7

    .line 83
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/amap/location/sdk/b/a;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 85
    :try_start_3
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    const-string p1, "cloud"

    .line 86
    invoke-static {p1}, Lcom/amap/location/support/util/TestCaseUtil;->writeLog(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 87
    :pswitch_c
    invoke-static {p4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 88
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "uptunneltest"

    .line 89
    invoke-virtual {p1, p2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/amap/location/k/b;->a:Z

    const-string p2, "cloudtest"

    .line 90
    invoke-virtual {p1, p2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    sput v2, Lcom/amap/location/b/a/a;->a:I

    const-string p2, "collectiontest"

    .line 91
    invoke-virtual {p1, p2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/amap/location/c/b;->a:Z

    const-string p2, "offlinetest"

    .line 92
    invoke-virtual {p1, p2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/amap/location/i/c;->a:Z

    .line 93
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz p2, :cond_9

    .line 94
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    const-string p3, "nltest"

    invoke-virtual {p1, p3, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amap/location/fusion/LocationProvider;->updateTestServer(Z)V

    :cond_9
    const-string p2, "aosserver"

    .line 95
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 97
    invoke-static {p2}, Lcom/amap/location/g/c/e;->a(Ljava/lang/String;)V

    :cond_a
    const-string p2, "apsserver"

    .line 98
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 100
    invoke-static {p1}, Lcom/amap/location/g/c/e;->b(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_d
    if-lez p2, :cond_b

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    .line 101
    :goto_9
    iput-boolean v7, p0, Lcom/amap/api/service/LocationServiceImpl;->g:Z

    .line 102
    sput-boolean v7, Lcom/amap/location/support/AmapContext;->sOnNavi:Z

    .line 103
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz p1, :cond_c

    .line 104
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    iget-boolean v0, p0, Lcom/amap/api/service/LocationServiceImpl;->g:Z

    invoke-virtual {p1, v0}, Lcom/amap/location/fusion/LocationProvider;->updateNaviStatus(Z)V

    .line 105
    :cond_c
    invoke-static {v5, p2, p3, p4}, Lcom/amap/location/support/app/MessageCenter;->sendCommand(Ljava/lang/String;IILjava/lang/String;)V

    .line 106
    iget-boolean p1, p0, Lcom/amap/api/service/LocationServiceImpl;->g:Z

    if-eqz p1, :cond_e

    .line 107
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->m:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p1, :cond_d

    .line 108
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl;->t:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->m:Lcom/amap/location/support/handler/AmapHandler;

    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl;->t:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    const-wide/16 p1, 0x0

    .line 110
    iput-wide p1, p0, Lcom/amap/api/service/LocationServiceImpl;->h:J

    goto :goto_a

    .line 111
    :cond_e
    iget-object p1, p0, Lcom/amap/api/service/LocationServiceImpl;->m:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p1, :cond_f

    .line 112
    iget-object p2, p0, Lcom/amap/api/service/LocationServiceImpl;->t:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    :cond_f
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "navi:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/amap/api/service/LocationServiceImpl;->g:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/location/support/util/TestCaseUtil;->writeLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_b

    :catch_1
    move-exception p1

    .line 114
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_10
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c8cf09d -> :sswitch_d
        -0x4ad65133 -> :sswitch_c
        -0x2bbd6ab8 -> :sswitch_b
        -0x2888468c -> :sswitch_a
        -0x274916dd -> :sswitch_9
        -0xc9c6990 -> :sswitch_8
        -0x89191f9 -> :sswitch_7
        0x49281c0 -> :sswitch_6
        0x59c011c -> :sswitch_5
        0xd78549c -> :sswitch_4
        0x2c72d51c -> :sswitch_3
        0x34bdcfe0 -> :sswitch_2
        0x45e69869 -> :sswitch_1
        0x5bbcad59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->m:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 117
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->isOnGnssRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->b:Lcom/amap/location/fusion/LocationProvider;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/LocationProvider;->getRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->c:Lcom/amap/location/sdk/c/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a;->c()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->b()V

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->c:Lcom/amap/location/sdk/c/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a;->d()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->c()V

    return-void
.end method

.method public e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->c:Lcom/amap/location/sdk/c/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a;->e()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/amap/location/sdk/e/c;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "cmdappexit"

    const/4 v3, 0x1

    .line 5
    invoke-static {v2, v3, v0, v1}, Lcom/amap/location/support/app/MessageCenter;->sendCommand(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public f()Lcom/amap/location/support/signal/gnss/AmapLocationListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl;->r:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    return-object v0
.end method
