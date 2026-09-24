.class public Ljb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljb;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljb;


# direct methods
.method public constructor <init>(Ljb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljb$b;->a:Ljb;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Ljb$b;->a:Ljb;

    .line 6
    invoke-static {v1}, Ljb;->d(Ljb;)I

    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 17
    const-string v1, "AutoWavMediaPlayer"

    .line 19
    const-string v2, "playByMediaPlayer :onCompletion mPlayMode:{?}"

    .line 21
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Ljb$b;->a:Ljb;

    .line 26
    invoke-static {v0}, Ljb;->e(Ljb;)V

    .line 29
    iget-object v0, p0, Ljb$b;->a:Ljb;

    .line 31
    invoke-static {v0}, Ljb;->d(Ljb;)I

    .line 34
    move-result v0

    .line 35
    if-ne p1, v0, :cond_0

    .line 37
    const/4 p1, 0x6

    .line 38
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->notifyPlayStateChange(I)V

    .line 41
    :cond_0
    return-void
.end method
