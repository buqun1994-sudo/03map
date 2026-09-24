.class public Lpk$l;
.super Lpk$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk;
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
    invoke-direct {p0, v0}, Lpk$m;-><init>(Lpk$d;)V

    .line 5
    return-void
.end method


# virtual methods
.method public m(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public o()Z
    .locals 2

    .line 1
    const-string v0, "persist.sys.screen_full"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Luf0;->b(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    return-void
.end method
