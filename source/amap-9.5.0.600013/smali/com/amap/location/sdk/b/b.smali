.class public Lcom/amap/location/sdk/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/location/b/b;

.field private b:Lcom/amap/location/sdk/b/b$a;

.field private c:Lcom/amap/location/b/b/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/b/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/sdk/b/b$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/b/b$1;-><init>(Lcom/amap/location/sdk/b/b;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/sdk/b/b;->c:Lcom/amap/location/b/b/a;

    .line 11
    iput-object p1, p0, Lcom/amap/location/sdk/b/b;->b:Lcom/amap/location/sdk/b/b$a;

    .line 13
    invoke-static {}, Lcom/amap/location/b/b;->a()Lcom/amap/location/b/b;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/amap/location/sdk/b/b;->a:Lcom/amap/location/b/b;

    .line 19
    invoke-virtual {p1}, Lcom/amap/location/b/b;->b()V

    .line 22
    iget-object p1, p0, Lcom/amap/location/sdk/b/b;->a:Lcom/amap/location/b/b;

    .line 24
    iget-object v0, p0, Lcom/amap/location/sdk/b/b;->c:Lcom/amap/location/b/b/a;

    .line 26
    invoke-virtual {p1, v0}, Lcom/amap/location/b/b;->a(Lcom/amap/location/b/b/a;)V

    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/b/b;)Lcom/amap/location/sdk/b/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/b/b;->b:Lcom/amap/location/sdk/b/b$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/amap/location/b/b;->a()Lcom/amap/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/b/b;->c()V

    return-void
.end method
