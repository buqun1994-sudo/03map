.class public Lo6$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo6$h;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TTS"

    return-object v0
.end method

.method public onAudioFocusChange(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "[Audio] AutoAudioManager"

    .line 13
    const-string v4, "TTSFocusObserver.onAudioFocusChange: focusChange={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v4

    .line 24
    aput-object v4, v1, v3

    .line 26
    const-string v4, "\u3010SystemToAuto\u3011onAudioFocusChange: focusChange={?} "

    .line 28
    invoke-static {v2, v4, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lo6;->j()Lo6;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Lo6;->N(I)V

    .line 38
    invoke-static {}, Lo6;->j()Lo6;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lo6;->c(Lo6;)Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 45
    move-result-object v1

    .line 46
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedContinueTtsAfterFocusLoss:Z

    .line 48
    new-array v4, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v4, v3

    .line 56
    const-string v5, "do onAudioFocusChange isNeedContinueTtsAfterFocusLoss:{?}"

    .line 58
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/4 v2, -0x3

    .line 62
    if-eq p1, v2, :cond_2

    .line 64
    const/4 v2, -0x2

    .line 65
    if-eq p1, v2, :cond_1

    .line 67
    const/4 v2, -0x1

    .line 68
    if-eq p1, v2, :cond_2

    .line 70
    if-eq p1, v0, :cond_0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sput-boolean v3, Lo6;->w:Z

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sput-boolean v0, Lo6;->w:Z

    .line 78
    invoke-static {}, Lo6;->j()Lo6;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v3}, Lo6;->u(Z)V

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lo6;->j()Lo6;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Lo6;->u(Z)V

    .line 93
    :goto_0
    return-void
.end method
