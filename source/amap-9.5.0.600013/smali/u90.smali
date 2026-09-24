.class public Lu90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

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
    const-string v2, "RecordFocusChangeListener"

    .line 13
    const-string v4, "onAudioFocusChange focusChange:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v1, -0x3

    .line 19
    if-eq p1, v1, :cond_0

    .line 21
    const/4 v1, -0x2

    .line 22
    if-eq p1, v1, :cond_0

    .line 24
    const/4 v1, -0x1

    .line 25
    if-eq p1, v1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lc;->i()Lc;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v3, v0}, Lc;->r(ZZ)V

    .line 35
    :goto_0
    return-void
.end method
