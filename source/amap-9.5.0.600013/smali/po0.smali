.class public Lpo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final a:Ljava/lang/String; = "po0"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    .line 1
    sget-object v0, Lpo0;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 13
    const-string v2, "onAudioFocusChange: focusChange={?}"

    .line 15
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v0, -0x2

    .line 19
    if-eq p1, v0, :cond_0

    .line 21
    const/4 v0, -0x1

    .line 22
    if-eq p1, v0, :cond_0

    .line 24
    const/4 v0, -0x3

    .line 25
    if-ne p1, v0, :cond_1

    .line 27
    :cond_0
    invoke-static {}, Lqo0;->a()Lqo0;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lqo0;->c()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 37
    invoke-static {}, Lqo0;->a()Lqo0;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lqo0;->f()V

    .line 44
    invoke-static {}, Lo6;->j()Lo6;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lo6;->H()V

    .line 51
    :cond_1
    return-void
.end method
