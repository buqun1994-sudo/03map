.class public Ldb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldb;


# direct methods
.method public constructor <init>(Ldb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldb$a;->a:Ldb;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    iget-object v1, p0, Ldb$a;->a:Ldb;

    .line 13
    invoke-static {v1}, Ldb;->e(Ldb;)Z

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v1, v0, v2

    .line 24
    iget-object v1, p0, Ldb$a;->a:Ldb;

    .line 26
    invoke-static {v1}, Ldb;->f(Ldb;)F

    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x2

    .line 35
    aput-object v1, v0, v3

    .line 37
    iget-object v1, p0, Ldb$a;->a:Ldb;

    .line 39
    invoke-static {v1}, Ldb;->h(Ldb;)F

    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    move-result-object v1

    .line 47
    const/4 v3, 0x3

    .line 48
    aput-object v1, v0, v3

    .line 50
    const-string v1, "[Audio] AutoTTSPlayer"

    .line 52
    const-string v3, "{?} timerTask run isFinish:{?} mAudioTrackVolume:{?} deltaVolume:{?}"

    .line 54
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 59
    invoke-static {v0}, Ldb;->e(Ldb;)Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 67
    invoke-static {v0}, Ldb;->i(Ldb;)V

    .line 70
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 73
    invoke-static {v0}, Ldb;->h(Ldb;)F

    .line 76
    move-result v1

    .line 77
    invoke-static {v0, v1}, Ldb;->g(Ldb;F)F

    .line 80
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 82
    invoke-static {v0}, Ldb;->f(Ldb;)F

    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x0

    .line 87
    cmpg-float v0, v0, v1

    .line 89
    if-gtz v0, :cond_1

    .line 91
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 93
    invoke-static {v0}, Ldb;->i(Ldb;)V

    .line 96
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->notifyPlayStateChange(I)V

    .line 99
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 101
    invoke-static {v0}, Ldb;->j(Ldb;)V

    .line 104
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 106
    invoke-virtual {v0}, Ldb;->s()V

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Ldb$a;->a:Ldb;

    .line 112
    invoke-static {v0}, Ldb;->k(Ldb;)V

    .line 115
    :goto_0
    return-void
.end method
