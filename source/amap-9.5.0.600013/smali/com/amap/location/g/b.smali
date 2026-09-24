.class public Lcom/amap/location/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/g/b$a;,
        Lcom/amap/location/g/b$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/amap/location/g/e;

.field public m:Lcom/amap/location/g/b$b;

.field public n:Lcom/amap/location/g/b$a;

.field public o:Lcom/amap/location/i/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/g/b;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/g/b;->k:Z

    .line 9
    new-instance v0, Lcom/amap/location/g/b$a;

    .line 11
    invoke-direct {v0}, Lcom/amap/location/g/b$a;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/amap/location/g/b;->n:Lcom/amap/location/g/b$a;

    .line 16
    return-void
.end method
