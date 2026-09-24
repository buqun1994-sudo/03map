.class public Lg3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg3;


# direct methods
.method public constructor <init>(Lg3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg3$a;->a:Lg3;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg3$a;->a:Lg3;

    .line 3
    invoke-static {v0, p1}, Lg3;->e(Lg3;I)I

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    const-string v2, "AndroidTTSPlayer"

    .line 18
    const-string v4, "onAudioFocusChange :{?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lg3$a;->a:Lg3;

    .line 25
    invoke-static {v1}, Lg3;->f(Lg3;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v1, -0x1

    .line 33
    if-eq p1, v1, :cond_1

    .line 35
    const/4 v4, -0x2

    .line 36
    if-ne p1, v4, :cond_3

    .line 38
    :cond_1
    invoke-static {}, Lo6;->j()Lo6;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 45
    move-result-object v4

    .line 46
    iget-boolean v4, v4, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedContinueTtsAfterFocusLoss:Z

    .line 48
    new-array v5, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    move-result-object v6

    .line 54
    aput-object v6, v5, v3

    .line 56
    const-string v6, "do onAudioFocusChange isNeedContinueTtsAfterFocusLoss:{?}"

    .line 58
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    if-nez v4, :cond_3

    .line 63
    iget-object v2, p0, Lg3$a;->a:Lg3;

    .line 65
    if-eq p1, v1, :cond_2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {v2, v0}, Lg3;->u(Z)V

    .line 72
    :cond_3
    return-void
.end method
