.class public Lh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lh;


# instance fields
.field public a:Lae0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh;

    .line 3
    invoke-direct {v0}, Lh;-><init>()V

    .line 6
    sput-object v0, Lh;->b:Lh;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lbe0;

    .line 6
    invoke-direct {v0}, Lbe0;-><init>()V

    .line 9
    iput-object v0, p0, Lh;->a:Lae0;

    .line 11
    invoke-virtual {p0}, Lh;->c()V

    .line 14
    return-void
.end method

.method public static declared-synchronized a()Lh;
    .locals 2

    .line 1
    const-class v0, Lh;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lh;->b:Lh;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lh;

    .line 10
    invoke-direct {v1}, Lh;-><init>()V

    .line 13
    sput-object v1, Lh;->b:Lh;

    .line 15
    :cond_0
    sget-object v1, Lh;->b:Lh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method


# virtual methods
.method public final b(I)Llt;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "[ALSimulate] ALSimulateManager"

    .line 13
    const-string v3, "getSimulator simulateType = {?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lh;->a:Lae0;

    .line 20
    if-nez v0, :cond_0

    .line 22
    const-string v0, "getSimulator simulateContext == null"

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lh;->a:Lae0;

    .line 31
    invoke-interface {v0, p1}, Lae0;->a(I)Llt;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object p3, v0, v1

    .line 17
    const/4 v1, 0x3

    .line 18
    aput-object p4, v0, v1

    .line 20
    const-string v1, "[ALSimulate] ALSimulateManager"

    .line 22
    const-string v3, "receiveSimulateData simulateType = {?} protocolContent = {?} protocolId = {?} version = {?}"

    .line 24
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, p1}, Lh;->b(I)Llt;

    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 33
    const-string v0, "receiveSimulateData simulator!=null"

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-interface {p1, p2, p3, p4}, Llt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p1, "receiveSimulateData not support simulate type"

    .line 46
    new-array p2, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_0
    return-void
.end method
