.class public Lcom/amap/location/g/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/amap/location/support/bean/location/AmapLocationNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/amap/location/g/c/c;->a:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/g/c/c;->b:Z

    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/amap/location/g/c/c;->c:Ljava/util/HashSet;

    .line 18
    new-instance v0, Lcom/amap/location/g/c/c$1;

    .line 20
    const/16 v1, 0xa

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/amap/location/g/c/c$1;-><init>(Lcom/amap/location/g/c/c;I)V

    .line 25
    iput-object v0, p0, Lcom/amap/location/g/c/c;->d:Ljava/util/LinkedHashMap;

    .line 27
    return-void
.end method
