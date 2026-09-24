.class public Lbk$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbk;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lbk;


# direct methods
.method public constructor <init>(Lbk;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbk$f;->b:Lbk;

    .line 3
    iput-object p2, p0, Lbk$f;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lbk$f;->a:Ljava/lang/String;

    .line 21
    invoke-interface {v0, v1}, Lgr;->i(Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    const-string v1, "DR"

    .line 30
    const-string v2, "DR JNIContext.getInstance().getLocator()=null"

    .line 32
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-void
.end method
