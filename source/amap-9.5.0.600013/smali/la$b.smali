.class public Lla$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ln7;

    .line 3
    invoke-static {}, Lrv;->H()Lrv;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ln7;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0}, Ln7;->a()I

    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 23
    move-result-object v1

    .line 24
    sget v2, Lcom/autonavi/amapauto/framework/AutoLoader;->j:I

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->u(ILjava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method
