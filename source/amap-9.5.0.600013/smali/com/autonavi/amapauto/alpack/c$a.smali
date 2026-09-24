.class public abstract Lcom/autonavi/amapauto/alpack/c$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/alpack/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alpack/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/alpack/c$a$a;
    }
.end annotation


# direct methods
.method public static t1(Landroid/os/IBinder;)Lcom/autonavi/amapauto/alpack/c;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.autonavi.amapauto.alpack.AutoBroadcastResponse"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Lcom/autonavi/amapauto/alpack/c;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lcom/autonavi/amapauto/alpack/c;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/alpack/c$a$a;

    .line 22
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alpack/c$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method

.method public static u1()Lcom/autonavi/amapauto/alpack/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/alpack/c$a$a;->b:Lcom/autonavi/amapauto/alpack/c;

    .line 3
    return-object v0
.end method
