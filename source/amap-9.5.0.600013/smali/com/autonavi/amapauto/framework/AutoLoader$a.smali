.class public Lcom/autonavi/amapauto/framework/AutoLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/framework/AutoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/amapauto/framework/AutoLoader$a;->a:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->x(Z)V

    .line 9
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/autonavi/amapauto/framework/AutoLoader$a;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->w(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->h()V

    .line 25
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->c()V

    .line 32
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/TurboConfig;->k()V

    .line 39
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->x(Z)V

    .line 47
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->native_initAlc()V

    .line 54
    invoke-static {}, Ln70;->f()Ln70;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ln70;->g()V

    .line 61
    return-void
.end method
