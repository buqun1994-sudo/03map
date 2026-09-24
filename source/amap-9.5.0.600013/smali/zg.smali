.class public abstract Lzg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lbp;


# direct methods
.method public static a()V
    .locals 1

    .line 1
    sget-object v0, Lzg;->a:Lbp;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lbp;->n()V

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lzg;->a:Lbp;

    .line 11
    :cond_0
    new-instance v0, Lbp;

    .line 13
    invoke-direct {v0}, Lbp;-><init>()V

    .line 16
    sput-object v0, Lzg;->a:Lbp;

    .line 18
    invoke-virtual {v0}, Lbp;->o()V

    .line 21
    return-void
.end method

.method public static declared-synchronized b(Lxe;)V
    .locals 2

    .line 1
    const-class v0, Lzg;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lzg;->a:Lbp;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, p0}, Lbp;->m(Lxe;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lzg;->a:Lbp;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lbp;->n()V

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lzg;->a:Lbp;

    .line 11
    :cond_0
    return-void
.end method
