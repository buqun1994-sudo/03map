.class public Lcom/amap/location/sdk/h/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/amap/location/sdk/h/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/location/sdk/h/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/amap/location/sdk/h/b;-><init>(Lcom/amap/location/sdk/h/b$1;)V

    .line 7
    sput-object v0, Lcom/amap/location/sdk/h/b$a;->a:Lcom/amap/location/sdk/h/b;

    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/amap/location/sdk/h/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/sdk/h/b$a;->a:Lcom/amap/location/sdk/h/b;

    .line 3
    return-object v0
.end method
