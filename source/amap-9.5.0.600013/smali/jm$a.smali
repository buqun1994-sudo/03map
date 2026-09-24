.class public Ljm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljm;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljm;


# direct methods
.method public constructor <init>(Ljm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljm$a;->a:Ljm;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "FloatLayoutStyleCruise"

    .line 6
    const-string v2, "AL\u5173\u95ed\u670d\u52a1\u60ac\u6d6e\u7a97 from:\u6d6e\u52a8\u7a97\u53e3\u6309\u94ae"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ljm$a;->a:Ljm;

    .line 13
    invoke-static {v0, p1}, Ljm;->k(Ljm;I)V

    .line 16
    invoke-static {}, Lhm;->a()Lhm;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Ljm$a;->a:Ljm;

    .line 22
    invoke-virtual {v1}, Lfc;->getmContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lhm;->e(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    .line 30
    new-array v1, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    aput-object v0, v1, p1

    .line 38
    const-string p1, "[100000031][1][%d]"

    .line 40
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    const v0, 0x5f5e11f

    .line 47
    const/16 v1, 0xa

    .line 49
    const-string v2, "AUTO_NAVI"

    .line 51
    invoke-static {v2, v0, p1, v1}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 54
    return-void
.end method
