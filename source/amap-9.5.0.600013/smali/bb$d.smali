.class public Lbb$d;
.super Lbb$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lbb$g;-><init>(Lbb$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 14
    const-string v1, "com.autolink.navi.enter"

    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    :cond_0
    return-void
.end method
