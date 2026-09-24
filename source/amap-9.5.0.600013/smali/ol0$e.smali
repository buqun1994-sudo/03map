.class public Lol0$e;
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
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 3
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    const/16 p2, 0xc

    .line 8
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 15
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
