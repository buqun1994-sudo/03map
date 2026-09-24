.class public Lcom/autonavi/adiu/AdiuManagerNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireAdiu()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AdiuManagerNative"

    .line 6
    const-string v2, " acquireAdiu form JNI "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lz1;->c(Landroid/content/Context;)Lz1;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lz1;->a()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public static backupAdiu(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AdiuManagerNative"

    .line 9
    const-string v2, " backupAdiu form JNI, adiu:{?} "

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lrv;->H()Lrv;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lz1;->c(Landroid/content/Context;)Lz1;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Lz1;->b(Ljava/lang/String;)Z

    .line 29
    move-result p0

    .line 30
    return p0
.end method
