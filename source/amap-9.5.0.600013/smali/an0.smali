.class public Lan0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lan0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lan0;
    .locals 2

    .line 1
    sget-object v0, Lan0;->a:Lan0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lan0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lan0;->a:Lan0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lan0;

    .line 14
    invoke-direct {v1}, Lan0;-><init>()V

    .line 17
    sput-object v1, Lan0;->a:Lan0;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lan0;->a:Lan0;

    .line 26
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Lzm0;->r0()Lzm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm0;->f1()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method
