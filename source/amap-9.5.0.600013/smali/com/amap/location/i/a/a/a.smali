.class public Lcom/amap/location/i/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Z

.field public i:J

.field public j:Lcom/amap/location/support/bean/location/AmapLocationNetwork;


# direct methods
.method public constructor <init>(ZLjava/lang/String;JIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/i/a/a/a;->h:Z

    .line 7
    iput-boolean p1, p0, Lcom/amap/location/i/a/a/a;->a:Z

    .line 9
    iput-object p2, p0, Lcom/amap/location/i/a/a/a;->f:Ljava/lang/String;

    .line 11
    iput-wide p3, p0, Lcom/amap/location/i/a/a/a;->g:J

    .line 13
    iput p5, p0, Lcom/amap/location/i/a/a/a;->b:I

    .line 15
    iput p6, p0, Lcom/amap/location/i/a/a/a;->c:I

    .line 17
    iput p7, p0, Lcom/amap/location/i/a/a/a;->d:I

    .line 19
    iput p8, p0, Lcom/amap/location/i/a/a/a;->e:I

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "{"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p0, Lcom/amap/location/i/a/a/a;->a:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "@"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v2, p0, Lcom/amap/location/i/a/a/a;->f:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v2, p0, Lcom/amap/location/i/a/a/a;->b:I

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v2, p0, Lcom/amap/location/i/a/a/a;->c:I

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v2, p0, Lcom/amap/location/i/a/a/a;->e:I

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-boolean v2, p0, Lcom/amap/location/i/a/a/a;->h:Z

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v2, p0, Lcom/amap/location/i/a/a/a;->i:J

    .line 63
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p0, Lcom/amap/location/i/a/a/a;->j:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 71
    const-wide/16 v3, 0x0

    .line 73
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 78
    move-result-wide v5

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move-wide v5, v3

    .line 81
    :goto_0
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/amap/location/i/a/a/a;->j:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 89
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 94
    move-result-wide v3

    .line 95
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 98
    const/16 v1, 0x7d

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method
