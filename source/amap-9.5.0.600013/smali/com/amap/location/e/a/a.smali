.class public Lcom/amap/location/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/e/a/g;

.field private b:[D

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/amap/location/support/bean/location/AmapLocation;

.field private i:Lcom/amap/location/support/bean/location/AmapLocation;

.field private j:J

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [D

    .line 7
    fill-array-data v0, :array_0

    .line 10
    iput-object v0, p0, Lcom/amap/location/e/a/a;->b:[D

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/amap/location/e/a/a;->e:Ljava/util/List;

    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x4018000000000000L    # -0.75
        0x403e000000000000L    # 30.0
    .end array-data
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/e/a/a;->k:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/amap/location/e/a/a;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/e/a/a;->k:J

    return-void
.end method

.method public a(Lcom/amap/location/e/a/g;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/amap/location/e/a/a;->a:Lcom/amap/location/e/a/g;

    return-void
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amap/location/e/a/a;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/amap/location/e/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/a/l;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/amap/location/e/a/a;->e:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/List;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;JJ)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/amap/location/e/a/a;->l:Ljava/util/List;

    .line 4
    iput-wide p2, p0, Lcom/amap/location/e/a/a;->m:J

    .line 5
    iput-wide p4, p0, Lcom/amap/location/e/a/a;->n:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/amap/location/e/a/a;->g:Z

    return-void
.end method

.method public a([D)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amap/location/e/a/a;->b:[D

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->l:Ljava/util/List;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/amap/location/e/a/a;->j:J

    return-void
.end method

.method public b(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/e/a/a;->i:Lcom/amap/location/support/bean/location/AmapLocation;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/amap/location/e/a/a;->f:Ljava/util/List;

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/e/a/a;->m:J

    .line 3
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/e/a/a;->n:J

    .line 3
    return-wide v0
.end method

.method public e()Lcom/amap/location/e/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->a:Lcom/amap/location/e/a/g;

    .line 3
    return-object v0
.end method

.method public f()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->b:[D

    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/e/a/a;->c:I

    .line 3
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/a/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->e:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->f:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/e/a/a;->g:Z

    .line 3
    return v0
.end method

.method public l()Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    return-object v0
.end method

.method public m()Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a;->i:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    return-object v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/e/a/a;->j:J

    .line 3
    return-wide v0
.end method
