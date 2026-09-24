.class public Lrh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lrh;


# instance fields
.field public a:Lh2;

.field public b:Ll2;

.field public c:Lgd;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrh;

    .line 3
    invoke-direct {v0}, Lrh;-><init>()V

    .line 6
    sput-object v0, Lrh;->d:Lrh;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lh2;

    .line 6
    invoke-direct {v0}, Lh2;-><init>()V

    .line 9
    iput-object v0, p0, Lrh;->a:Lh2;

    .line 11
    new-instance v0, Ll2;

    .line 13
    invoke-direct {v0}, Ll2;-><init>()V

    .line 16
    iput-object v0, p0, Lrh;->b:Ll2;

    .line 18
    new-instance v0, Lgd;

    .line 20
    invoke-direct {v0}, Lgd;-><init>()V

    .line 23
    iput-object v0, p0, Lrh;->c:Lgd;

    .line 25
    return-void
.end method

.method public static declared-synchronized d()Lrh;
    .locals 2

    .line 1
    const-class v0, Lrh;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lrh;->d:Lrh;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lrh;

    .line 10
    invoke-direct {v1}, Lrh;-><init>()V

    .line 13
    sput-object v1, Lrh;->d:Lrh;

    .line 15
    :cond_0
    sget-object v1, Lrh;->d:Lrh;
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
.method public a()Lh2;
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->a:Lh2;

    .line 3
    return-object v0
.end method

.method public b()Ll2;
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->b:Ll2;

    .line 3
    return-object v0
.end method

.method public c()Lgd;
    .locals 1

    .line 1
    iget-object v0, p0, Lrh;->c:Lgd;

    .line 3
    return-object v0
.end method
