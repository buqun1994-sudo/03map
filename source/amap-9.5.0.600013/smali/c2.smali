.class public Lc2;
.super Lst$a;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ltt;

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Ltt;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lst$a;-><init>()V

    .line 4
    iput-object p1, p0, Lc2;->b:Ltt;

    .line 6
    const-string p1, "com.iflytek.tts.setting"

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lc2;->c:Landroid/content/SharedPreferences;

    .line 15
    invoke-virtual {p0}, Lc2;->t1()J

    .line 18
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Lc2;->a:J

    .line 21
    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc2;->b:Ltt;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Ltt;->a(ZI)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p2, "AgentListener"

    .line 11
    const-string v0, "onTtsInited, client == null!"

    .line 13
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    const/4 p1, 0x1

    .line 19
    sput-boolean p1, Lbi0;->h:Z

    .line 21
    invoke-static {}, Lbi0;->k()Lbi0;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lbi0;->o()V

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    sput-boolean p1, Lbi0;->k:Z

    .line 31
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc2;->b:Ltt;

    .line 3
    invoke-interface {v0}, Ltt;->k()V

    .line 6
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc2;->b:Ltt;

    .line 3
    invoke-interface {v0}, Ltt;->n()V

    .line 6
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc2;->b:Ltt;

    .line 3
    invoke-interface {v0}, Ltt;->o()V

    .line 6
    return-void
.end method

.method public r(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc2;->b:Ltt;

    .line 3
    invoke-interface {v0, p1, p2}, Ltt;->r(II)V

    .line 6
    return-void
.end method

.method public s0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc2;->a:J

    .line 3
    return-wide v0
.end method

.method public final t1()J
    .locals 5

    .line 1
    iget-object v0, p0, Lc2;->c:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "AgentListener"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "getClientId, shared preferences is null!"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Ljava/util/Date;

    .line 14
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 17
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-string v2, "com.iflytek.tts.setting.clientid"

    .line 24
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    const-string v0, "already has id, using existing one!"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lc2;->c:Landroid/content/SharedPreferences;

    .line 37
    const-wide/16 v3, -0x1

    .line 39
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 42
    move-result-wide v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "create new id!"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/util/Date;

    .line 51
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 54
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 57
    move-result-wide v0

    .line 58
    iget-object v3, p0, Lc2;->c:Landroid/content/SharedPreferences;

    .line 60
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 63
    move-result-object v3

    .line 64
    iput-object v3, p0, Lc2;->d:Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v2, p0, Lc2;->d:Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    :goto_0
    return-wide v0
.end method
