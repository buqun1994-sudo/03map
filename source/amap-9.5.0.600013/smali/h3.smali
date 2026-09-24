.class public Lh3;
.super Lei;
.source "SourceFile"


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lh3;->e:Z

    .line 7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "svautomotive.3partymanager.navigation.MESSAGE"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    return-void

    .line 23
    :cond_1
    const-string p2, "CODE"

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    move-result p2

    .line 29
    const/16 v0, 0x130

    .line 31
    if-eq p2, v0, :cond_2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string p2, "DATA"

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 42
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lh3;->e:Z

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 p2, 0x1

    .line 47
    if-ne p2, p1, :cond_4

    .line 49
    iput-boolean p2, p0, Lh3;->e:Z

    .line 51
    :cond_4
    :goto_0
    return-void
.end method

.method public requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lei;->d:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-boolean v2, p0, Lh3;->e:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "Desay request focus,mTtsEnabled {?}"

    .line 17
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Lh3;->e:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lbc;->requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    return v3
.end method
