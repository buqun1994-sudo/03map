.class Lcom/amap/location/sdk/d/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/status/PhoneStatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/d/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/d/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/d/a/a$2;->a:Lcom/amap/location/sdk/d/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x199

    return-wide v0
.end method

.method public onChange(JLorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 3
    cmp-long p3, p1, v0

    .line 5
    if-eqz p3, :cond_0

    .line 7
    const-wide/16 v0, 0x10

    .line 9
    cmp-long p3, p1, v0

    .line 11
    if-eqz p3, :cond_0

    .line 13
    const-wide/16 v0, 0x100

    .line 15
    cmp-long p3, p1, v0

    .line 17
    if-eqz p3, :cond_0

    .line 19
    const-wide/16 v0, 0x8

    .line 21
    cmp-long p3, p1, v0

    .line 23
    if-eqz p3, :cond_0

    .line 25
    const-wide/16 v0, 0x80

    .line 27
    cmp-long p3, p1, v0

    .line 29
    if-nez p3, :cond_1

    .line 31
    :cond_0
    iget-object p3, p0, Lcom/amap/location/sdk/d/a/a$2;->a:Lcom/amap/location/sdk/d/a/a;

    .line 33
    invoke-static {p3, p1, p2}, Lcom/amap/location/sdk/d/a/a;->a(Lcom/amap/location/sdk/d/a/a;J)V

    .line 36
    :cond_1
    return-void
.end method
