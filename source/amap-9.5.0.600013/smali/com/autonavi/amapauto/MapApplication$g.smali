.class public Lcom/autonavi/amapauto/MapApplication$g;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/MapApplication;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/MapApplication;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/MapApplication;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/MapApplication$g;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    iget-object p1, p0, Lcom/autonavi/amapauto/MapApplication$g;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 6
    invoke-static {p1}, Lcom/autonavi/amapauto/MapApplication;->f(Lcom/autonavi/amapauto/MapApplication;)Landroid/app/Application;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p1

    .line 14
    const-string v0, "ambient_color"

    .line 16
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v1, "ambient_color onChange val:"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    const-string v1, "MapApplication"

    .line 42
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/autonavi/amapauto/MapApplication$g;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 47
    invoke-static {p1}, Lcom/autonavi/amapauto/MapApplication;->g(Lcom/autonavi/amapauto/MapApplication;)Landroid/app/Application;

    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lyg0;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method
