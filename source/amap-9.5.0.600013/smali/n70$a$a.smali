.class public Ln70$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln70$a;->onDispatch(III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ln70$a;


# direct methods
.method public constructor <init>(Ln70$a;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln70$a$a;->d:Ln70$a;

    .line 3
    iput p2, p0, Ln70$a$a;->a:I

    .line 5
    iput p3, p0, Ln70$a$a;->b:I

    .line 7
    iput p4, p0, Ln70$a$a;->c:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "ProcessMonitor"

    .line 3
    const-string v1, "onDispatch"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Ln70$a$a;->d:Ln70$a;

    .line 10
    iget-object v0, v0, Ln70$a;->a:Ln70;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Ln70;->b(Ln70;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v0, p0, Ln70$a$a;->d:Ln70$a;

    .line 18
    iget-object v0, v0, Ln70$a;->a:Ln70;

    .line 20
    iget v1, p0, Ln70$a$a;->a:I

    .line 22
    iget v2, p0, Ln70$a$a;->b:I

    .line 24
    iget v3, p0, Ln70$a$a;->c:I

    .line 26
    invoke-static {v0, v1, v2, v3}, Ln70;->c(Ln70;III)V

    .line 29
    iget-object v0, p0, Ln70$a$a;->d:Ln70$a;

    .line 31
    iget-object v0, v0, Ln70$a;->a:Ln70;

    .line 33
    invoke-static {v0}, Ln70;->d(Ln70;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/autonavi/amapauto/framework/PerformanceBridge;->nativeOnPerformanceResult(Ljava/lang/String;)Z

    .line 40
    return-void
.end method
