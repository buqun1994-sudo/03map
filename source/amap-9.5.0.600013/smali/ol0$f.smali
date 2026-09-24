.class public Lol0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 4
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 6
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9
    const/4 p2, 0x5

    .line 10
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x4

    .line 15
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 26
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 29
    const/16 p2, 0xc

    .line 31
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 34
    move-result-object p1

    .line 35
    const/16 p2, 0x14

    .line 37
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 44
    move-result-object p1

    .line 45
    :goto_0
    return-object p1
.end method
