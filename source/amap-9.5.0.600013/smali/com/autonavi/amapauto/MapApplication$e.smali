.class public Lcom/autonavi/amapauto/MapApplication$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/MapApplication;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/MapApplication;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/MapApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/MapApplication$e;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-static {}, La7;->c()La7;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, La7;->f(La7$b;)V

    .line 8
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MapApplication"

    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->n()V

    .line 4
    return-void
.end method
