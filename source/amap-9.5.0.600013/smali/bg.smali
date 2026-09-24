.class public Lbg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lbg;


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lbg;->b:Landroid/content/Context;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lbg;->a:Ljava/util/HashMap;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbg;
    .locals 2

    .line 1
    sget-object v0, Lbg;->c:Lbg;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lbg;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lbg;->c:Lbg;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lbg;

    .line 14
    invoke-direct {v1, p0}, Lbg;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Lbg;->c:Lbg;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lbg;->c:Lbg;

    .line 26
    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lbg;->a:Ljava/util/HashMap;

    .line 3
    const-string v1, "net_condition"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0
.end method
