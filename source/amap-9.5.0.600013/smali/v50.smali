.class public Lv50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/SharedPreferences$Editor;

.field public d:Landroid/content/Context;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lv50;->b:Landroid/content/SharedPreferences;

    .line 7
    iput-object p2, p0, Lv50;->c:Landroid/content/SharedPreferences$Editor;

    .line 9
    iput-boolean p5, p0, Lv50;->e:Z

    .line 11
    iput-object p3, p0, Lv50;->a:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lv50;->d:Landroid/content/Context;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lv50;->b:Landroid/content/SharedPreferences;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lv50;->c:Landroid/content/SharedPreferences$Editor;

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_1

    .line 10
    iget-boolean v4, p0, Lv50;->e:Z

    .line 12
    if-nez v4, :cond_0

    .line 14
    iget-object v4, p0, Lv50;->b:Landroid/content/SharedPreferences;

    .line 16
    if-eqz v4, :cond_0

    .line 18
    const-string v4, "t"

    .line 20
    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    :cond_0
    iget-object v0, p0, Lv50;->c:Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    :goto_0
    iget-object v1, p0, Lv50;->b:Landroid/content/SharedPreferences;

    .line 36
    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lv50;->d:Landroid/content/Context;

    .line 40
    if-eqz v1, :cond_2

    .line 42
    iget-object v2, p0, Lv50;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lv50;->b:Landroid/content/SharedPreferences;

    .line 50
    :cond_2
    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv50;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, ""

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Laf0;->b(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    return-object p1

    .line 18
    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv50;->c:Landroid/content/SharedPreferences$Editor;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lv50;->b:Landroid/content/SharedPreferences;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lv50;->c:Landroid/content/SharedPreferences$Editor;

    .line 15
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Laf0;->b(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "t"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lv50;->c()V

    .line 18
    iget-object v0, p0, Lv50;->c:Landroid/content/SharedPreferences$Editor;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Laf0;->b(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "t"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lv50;->c()V

    .line 18
    iget-object v0, p0, Lv50;->c:Landroid/content/SharedPreferences$Editor;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    :cond_0
    return-void
.end method
