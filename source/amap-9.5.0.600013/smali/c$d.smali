.class public Lc$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc;->r(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lc;


# direct methods
.method public constructor <init>(Lc;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc$d;->c:Lc;

    .line 3
    iput-boolean p2, p0, Lc$d;->a:Z

    .line 5
    iput-boolean p3, p0, Lc$d;->b:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, "AIMMediaManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "onRecord isStart:{?} lossFocus:{?}"

    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    iget-boolean v4, p0, Lc$d;->a:Z

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v4

    .line 15
    aput-object v4, v3, v1

    .line 17
    iget-boolean v4, p0, Lc$d;->b:Z

    .line 19
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x1

    .line 24
    aput-object v4, v3, v5

    .line 26
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-boolean v2, p0, Lc$d;->a:Z

    .line 31
    if-eqz v2, :cond_1

    .line 33
    new-instance v2, Lab;

    .line 35
    const/16 v3, 0xbbf

    .line 37
    invoke-direct {v2, v3}, Lab;-><init>(I)V

    .line 40
    invoke-static {}, Ll30;->g()Ll30;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, v2}, Ll30;->a(Lec;)V

    .line 47
    iget-object v2, p0, Lc$d;->c:Lc;

    .line 49
    invoke-static {v2, v5}, Lc;->c(Lc;Z)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lc$d;->c:Lc;

    .line 57
    invoke-static {v2}, Lc;->d(Lc;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/16 v2, 0xb

    .line 63
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(I)V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lc$d;->c:Lc;

    .line 69
    iget-boolean v3, p0, Lc$d;->b:Z

    .line 71
    invoke-static {v2, v3}, Lc;->e(Lc;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    iget-object v3, p0, Lc$d;->c:Lc;

    .line 78
    invoke-static {v3}, Lc;->f(Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    const/16 v3, 0x8

    .line 87
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(I)V

    .line 90
    const-string v3, "onRecord: "

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    .line 94
    invoke-static {v0, v3, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void
.end method
