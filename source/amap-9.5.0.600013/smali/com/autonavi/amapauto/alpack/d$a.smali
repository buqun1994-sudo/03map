.class public Lcom/autonavi/amapauto/alpack/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/alpack/d;->g(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alpack/d$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/alpack/d$a;->b:Landroid/os/Bundle;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alpack/d$a;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/autonavi/amapauto/alpack/d$a;->b:Landroid/os/Bundle;

    .line 5
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/alpack/d;->h(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    return-void
.end method
