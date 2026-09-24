.class public Lkm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkm;


# direct methods
.method public constructor <init>(Lkm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkm$a;->a:Lkm;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "FloatLayoutStyleGuide"

    .line 6
    const-string v2, "AL\u5173\u95ed\u670d\u52a1\u60ac\u6d6e\u7a97 from:\u6d6e\u52a8\u7a97\u53e3\u6309\u94ae"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lhm;->a()Lhm;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lkm$a;->a:Lkm;

    .line 17
    invoke-virtual {v1}, Lfc;->getmContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lhm;->e(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v1, v0, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    aput-object v0, v1, p1

    .line 33
    const-string v0, "[100000031][1][%d]"

    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const v1, 0x5f5e11f

    .line 42
    const/16 v2, 0xa

    .line 44
    const-string v3, "AUTO_NAVI"

    .line 46
    invoke-static {v3, v1, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 49
    iget-object v0, p0, Lkm$a;->a:Lkm;

    .line 51
    invoke-static {v0, p1}, Lkm;->k(Lkm;I)V

    .line 54
    return-void
.end method
