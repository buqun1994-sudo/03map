.class public Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/AndroidAudioControl;->playByMediaPlayer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->b:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const-string v1, "AndroidAudioControl"

    .line 14
    const-string v2, "ERROR playByMediaPlayer filepath is empty"

    .line 16
    invoke-static {v1, v2, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->a:Ljava/lang/String;

    .line 22
    sget-object v1, Lo6;->s:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->a:Ljava/lang/String;

    .line 32
    sget-object v1, Lo6;->t:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->a:Ljava/lang/String;

    .line 42
    const-string v1, ".mp3"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lo6;->j()Lo6;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lo6;->q()Lzt;

    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->a:Ljava/lang/String;

    .line 61
    iget v2, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->b:I

    .line 63
    invoke-interface {v0, v1, v2}, Lzt;->a(Ljava/lang/String;I)V

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    invoke-static {}, Lo6;->j()Lo6;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lo6;->l()Lzt;

    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->a:Ljava/lang/String;

    .line 77
    iget v2, p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;->b:I

    .line 79
    invoke-interface {v0, v1, v2}, Lzt;->a(Ljava/lang/String;I)V

    .line 82
    :goto_1
    return-void
.end method
