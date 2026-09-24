.class public Lkc$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkc;


# direct methods
.method public constructor <init>(Lkc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc$e;->a:Lkc;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Activity"

    .line 6
    const-string v3, "onNaviStatusChange"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lkc$e;->a:Lkc;

    .line 13
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    const/16 v1, 0x137

    .line 22
    if-ne p1, v1, :cond_4

    .line 24
    const-string p1, "map_bench"

    .line 26
    const-string v1, "postDelayed hideCover begin"

    .line 28
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string p1, "GFRAME_FIRST_DRAW"

    .line 33
    new-array v1, v0, [Ljava/lang/Object;

    .line 35
    const-string v3, "BaseNativeActivity"

    .line 37
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lkc$e;->a:Lkc;

    .line 42
    const/16 v1, 0x64

    .line 44
    invoke-static {p1, v1}, Lkc;->c(Lkc;I)V

    .line 47
    iget-object p1, p0, Lkc$e;->a:Lkc;

    .line 49
    invoke-static {p1, v0}, Lkc;->f(Lkc;Z)Z

    .line 52
    iget-object p1, p0, Lkc$e;->a:Lkc;

    .line 54
    invoke-static {p1}, Lkc;->e(Lkc;)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lkc$e;->a:Lkc;

    .line 62
    invoke-static {p1}, Lkc;->e(Lkc;)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 66
    new-instance v1, Lkc$e$a;

    .line 68
    invoke-direct {v1, p0}, Lkc$e$a;-><init>(Lkc$e;)V

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_1
    invoke-static {}, Lzm;->d()Lzm;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lzm;->c()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    const/4 v1, 0x1

    .line 83
    if-eqz p1, :cond_2

    .line 85
    new-array v3, v1, [Ljava/lang/Object;

    .line 87
    aput-object p1, v3, v0

    .line 89
    const-string v4, "innerChannelId:{?}"

    .line 91
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {p1}, Lpi;->s(Ljava/lang/String;)Z

    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_2

    .line 100
    invoke-static {}, Luf;->c()Z

    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_2

    .line 106
    const/4 p1, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const/4 p1, 0x1

    .line 109
    :goto_0
    if-eqz p1, :cond_3

    .line 111
    invoke-static {}, Lp7;->d()Z

    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 117
    const-string p1, "uploadCrash"

    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {v1}, Lcom/autonavi/common/tool/b;->l0(Z)V

    .line 127
    :cond_3
    iget-object p1, p0, Lkc$e;->a:Lkc;

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lbi;->v(Landroid/app/Application;)V

    .line 136
    invoke-static {}, Lbi;->j()V

    .line 139
    :cond_4
    return-void
.end method
