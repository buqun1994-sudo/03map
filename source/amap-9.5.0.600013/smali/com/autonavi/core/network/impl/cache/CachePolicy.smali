.class public Lcom/autonavi/core/network/impl/cache/CachePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOTH:I = 0x3

.field public static final CACHE_FIRST:I = 0x4

.field public static final CACHE_ONLY:I = 0x1

.field public static final NETWORK_ONLY:I = 0x2


# instance fields
.field public cacheKey:Ljava/lang/String;

.field public cachePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/autonavi/core/network/impl/cache/CachePolicy;->cachePolicy:I

    .line 7
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/cache/CachePolicy;->cachePolicy:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 15
    const-string v0, "UNKNOWN"

    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v0, "CACHE_FIRST"

    .line 20
    return-object v0

    .line 21
    :cond_1
    const-string v0, "BOTH"

    .line 23
    return-object v0

    .line 24
    :cond_2
    const-string v0, "NETWORK_ONLY"

    .line 26
    return-object v0

    .line 27
    :cond_3
    const-string v0, "CACHE_ONLY"

    .line 29
    return-object v0
.end method
