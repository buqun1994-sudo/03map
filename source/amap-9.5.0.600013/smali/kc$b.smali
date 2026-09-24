.class public Lkc$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkc;


# direct methods
.method public constructor <init>(Lkc;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc$b;->a:Lkc;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v0, 0x64

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "REQUEST_GFRAME_MESSAGE_TIMEOUT"

    .line 10
    const-string v1, ""

    .line 12
    invoke-static {v1, p1, v1}, Lcom/autonavi/common/tool/b;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lkc$b;->a:Lkc;

    .line 17
    invoke-virtual {p1}, Lkc;->z()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 23
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 26
    :cond_1
    :goto_0
    return-void
.end method
