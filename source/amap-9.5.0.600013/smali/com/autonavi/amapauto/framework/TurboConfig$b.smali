.class public abstract Lcom/autonavi/amapauto/framework/TurboConfig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/framework/TurboConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/autonavi/amapauto/framework/TurboConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/framework/TurboConfig;-><init>(Lcom/autonavi/amapauto/framework/TurboConfig$a;)V

    .line 7
    sput-object v0, Lcom/autonavi/amapauto/framework/TurboConfig$b;->a:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/autonavi/amapauto/framework/TurboConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/framework/TurboConfig$b;->a:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 3
    return-object v0
.end method
