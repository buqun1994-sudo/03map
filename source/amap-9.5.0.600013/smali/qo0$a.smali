.class public Lqo0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqo0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqo0;


# direct methods
.method public constructor <init>(Lqo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqo0$a;->a:Lqo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p2

    .line 16
    aput-object p2, v0, p1

    .line 18
    const-string p1, ""

    .line 20
    const-string p2, " [VoiceRecognition] AmapAutoAdapter initTTSAgent mAgent == null mAgent.initService onTtsInited b = {?} i = {?}"

    .line 22
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "TAG_ADAPTER"

    .line 6
    const-string v3, "NaviVoice ITtsClientListener onPlayInterrupted"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, " [VoiceRecognition] AmapAutoAdapter initTTSAgent mAgent == null mAgent.initService onPlayInterrupted"

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v2, ""

    .line 17
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lo6;->j()Lo6;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lo6;->H()V

    .line 27
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "TAG_ADAPTER"

    .line 6
    const-string v3, "NaviVoice ITtsClientListener onPlayCompleted"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, " [VoiceRecognition] AmapAutoAdapter initTTSAgent mAgent == null mAgent.initService onPlayCompleted"

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v2, ""

    .line 17
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lo6;->j()Lo6;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lo6;->H()V

    .line 27
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, ""

    .line 6
    const-string v2, " [VoiceRecognition] AmapAutoAdapter initTTSAgent mAgent == null mAgent.initService onPlayBegin"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public r(II)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p2

    .line 16
    aput-object p2, v0, p1

    .line 18
    const-string p1, ""

    .line 20
    const-string p2, " [VoiceRecognition] AmapAutoAdapter initTTSAgent mAgent == null mAgent.initService onProgressReturn i = {?} i1 = {?}"

    .line 22
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method
