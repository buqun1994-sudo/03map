.class public Lcom/amap/location/g/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/g/b/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/location/g/b/b;

.field private static b:Lcom/amap/location/g/b/a;

.field private static c:Lcom/amap/location/i/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/location/g/b/d$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/amap/location/g/b/d$a;-><init>(Lcom/amap/location/g/b/d$1;)V

    .line 7
    sput-object v0, Lcom/amap/location/g/b/d;->c:Lcom/amap/location/i/a;

    .line 9
    return-void
.end method

.method public static a()Lcom/amap/location/g/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/g/b/d;->a:Lcom/amap/location/g/b/b;

    return-object v0
.end method

.method public static a(Lcom/amap/location/g/b/a;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/amap/location/g/b/d;->b:Lcom/amap/location/g/b/a;

    return-void
.end method

.method public static a(Lcom/amap/location/g/b/b;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/amap/location/g/b/d;->a:Lcom/amap/location/g/b/b;

    return-void
.end method

.method public static b()Lcom/amap/location/g/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/g/b/d;->b:Lcom/amap/location/g/b/a;

    .line 3
    return-object v0
.end method

.method public static c()Lcom/amap/location/i/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/g/b/d;->c:Lcom/amap/location/i/a;

    .line 3
    return-object v0
.end method

.method public static synthetic d()Lcom/amap/location/g/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/g/b/d;->b:Lcom/amap/location/g/b/a;

    .line 3
    return-object v0
.end method
