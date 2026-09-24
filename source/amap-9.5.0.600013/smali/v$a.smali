.class public Lv$a;
.super Lv$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldk0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lv$a;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lv$a;->c:Ljava/lang/String;

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lv$f;-><init>(Lv$a;)V

    .line 11
    return-void
.end method


# virtual methods
.method public g()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lv$a;->a:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, Lv$a;->a:Ljava/lang/String;

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    iget-object v1, p0, Lv$a;->b:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 27
    iget-object v1, p0, Lv$a;->b:Ljava/lang/String;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1
    iget-object v1, p0, Lv$a;->c:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 40
    iget-object v1, p0, Lv$a;->c:Ljava/lang/String;

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lv$a;->b:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 11
    iget-object p2, p0, Lv$a;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 19
    invoke-static {v1, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p0, Lv$a;->c:Ljava/lang/String;

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_1

    .line 31
    iget-object p2, p0, Lv$a;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 39
    invoke-static {v1, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p2, p0, Lv$a;->a:Ljava/lang/String;

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_2

    .line 51
    iget-object p2, p0, Lv$a;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 59
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 62
    :cond_2
    :goto_0
    return v0
.end method
