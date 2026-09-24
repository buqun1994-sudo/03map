.class public Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;
.super Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-boolean p3, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;->c:Z

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;->d()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    const/4 v1, 0x0

    .line 17
    iget-object v2, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 19
    aput-object v2, v0, v1

    .line 21
    const/4 v1, 0x1

    .line 22
    aput-object p1, v0, v1

    .line 24
    const-string p1, "set same value %s=%s"

    .line 26
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->b(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigHmi$b;->d()V

    .line 40
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->TurboConfig()Lut;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 7
    const-string v2, ""

    .line 9
    invoke-interface {v0, v1, v2}, Lut;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->TurboConfig()Lut;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0, v1, v2}, Lut;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v0

    .line 30
    aput-object v0, v1, v2

    .line 32
    const-string v0, "setString ret=%b"

    .line 34
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 41
    return-void
.end method
