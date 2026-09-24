.class public abstract Lr70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr70$a;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Lr70$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lr70;->a:Landroid/content/Context;

    .line 11
    new-instance v0, Lr70$a;

    .line 13
    invoke-direct {v0}, Lr70$a;-><init>()V

    .line 16
    sput-object v0, Lr70;->b:Lr70$a;

    .line 18
    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lr70;->a:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 1
    sget-object v0, Lr70;->b:Lr70$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lr70$a;->a(Lr70$a;)V

    .line 8
    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 2

    .line 1
    invoke-static {}, Lr70;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 7
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 28
    sget-object v0, Lr70;->b:Lr70$a;

    .line 30
    if-eqz v0, :cond_1

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-boolean v1, v0, Lr70$a;->b:Z

    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "protocolAssertLog/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public static e()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "ProtocolAssertDebugUtils"

    .line 6
    const-string v3, "[ALSimulate] isProtocolDebugOpen"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lr70;->b:Lr70$a;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lr70$a;->c()Z

    .line 18
    move-result v0

    .line 19
    :cond_0
    return v0
.end method
