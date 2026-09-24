.class public Lnm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm;->q(Ljava/util/List;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lnm;


# direct methods
.method public constructor <init>(Lnm;ILjava/util/List;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnm$b;->e:Lnm;

    .line 3
    iput p2, p0, Lnm$b;->a:I

    .line 5
    iput-object p3, p0, Lnm$b;->b:Ljava/util/List;

    .line 7
    iput p4, p0, Lnm$b;->c:I

    .line 9
    iput-boolean p5, p0, Lnm$b;->d:Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnm$b;->e:Lnm;

    .line 3
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lnm$b;->e:Lnm;

    .line 11
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lkm;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lnm$b;->e:Lnm;

    .line 21
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lkm;

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lkm;->setTmcVisibility(Z)V

    .line 31
    iget-object v0, p0, Lnm$b;->e:Lnm;

    .line 33
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lkm;

    .line 39
    iget v1, p0, Lnm$b;->a:I

    .line 41
    invoke-virtual {v0, v1}, Lkm;->z(I)V

    .line 44
    iget-object v0, p0, Lnm$b;->e:Lnm;

    .line 46
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lkm;

    .line 52
    iget-object v1, p0, Lnm$b;->b:Ljava/util/List;

    .line 54
    iget v2, p0, Lnm$b;->c:I

    .line 56
    iget-boolean v3, p0, Lnm$b;->d:Z

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lkm;->n(Ljava/util/List;IZ)V

    .line 61
    :cond_0
    return-void
.end method
