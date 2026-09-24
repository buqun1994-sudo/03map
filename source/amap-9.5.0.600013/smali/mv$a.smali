.class public Lmv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmv;->l(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmv;


# direct methods
.method public constructor <init>(Lmv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmv$a;->a:Lmv;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(ZZLkv;J)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p2, 0x2

    .line 5
    new-array p2, p2, [Ljava/lang/Object;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object p1

    .line 12
    aput-object p1, p2, v0

    .line 14
    iget-object p1, p3, Lkv;->e:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    .line 17
    aput-object p1, p2, v0

    .line 19
    const-string p1, "IssueClusionManager"

    .line 21
    const-string v0, "onLoaded,isAdapted={?}, data.title={?}"

    .line 23
    invoke-static {p1, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lmv$a;->a:Lmv;

    .line 28
    invoke-static {p1, p3}, Lmv;->b(Lmv;Lkv;)Lkv;

    .line 31
    iget-object p1, p0, Lmv$a;->a:Lmv;

    .line 33
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Lmv;->d(Lmv;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    return-void
.end method
