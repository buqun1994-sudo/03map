.class public Lui0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    const-string v0, "SelfUpdate"

    .line 6
    iput-object v0, p0, Lui0;->a:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lui0;->b:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui0;->b:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    const-string v0, "run before sleep"

    .line 3
    const-string v1, "SelfUpdate"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-wide/16 v2, 0xdac

    .line 10
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ltc0;->F()V

    .line 20
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lui0;->b:Landroid/content/Context;

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v2, v3}, Ltc0;->d(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 30
    const-string v0, "run end"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
