.class public Ln70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/framework/OnNativePerformanceBridgeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln70;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln70;


# direct methods
.method public constructor <init>(Ln70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln70$a;->a:Ln70;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDispatch(III)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln70$a;->a:Ln70;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0, v1}, Ln70;->a(Ln70;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/lang/Thread;

    .line 13
    new-instance v1, Ln70$a$a;

    .line 15
    invoke-direct {v1, p0, p1, p2, p3}, Ln70$a$a;-><init>(Ln70$a;III)V

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method
