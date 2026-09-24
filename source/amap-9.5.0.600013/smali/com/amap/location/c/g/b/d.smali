.class public Lcom/amap/location/c/g/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/amap/location/c/g/b/d;

.field public static final b:Lcom/amap/location/c/g/b/d;


# instance fields
.field public final c:I

.field public final d:J

.field public final e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/amap/location/c/g/b/d;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    const-wide/16 v4, 0x0

    .line 8
    move-object v0, v6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/c/g/b/d;-><init>(IJJ)V

    .line 12
    sput-object v6, Lcom/amap/location/c/g/b/d;->a:Lcom/amap/location/c/g/b/d;

    .line 14
    new-instance v0, Lcom/amap/location/c/g/b/d;

    .line 16
    const/4 v8, 0x0

    .line 17
    const-wide/16 v9, 0x0

    .line 19
    const-wide/16 v11, 0x0

    .line 21
    move-object v7, v0

    .line 22
    invoke-direct/range {v7 .. v12}, Lcom/amap/location/c/g/b/d;-><init>(IJJ)V

    .line 25
    sput-object v0, Lcom/amap/location/c/g/b/d;->b:Lcom/amap/location/c/g/b/d;

    .line 27
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/amap/location/c/g/b/d;->c:I

    .line 6
    iput-wide p2, p0, Lcom/amap/location/c/g/b/d;->d:J

    .line 8
    iput-wide p4, p0, Lcom/amap/location/c/g/b/d;->e:J

    .line 10
    return-void
.end method
