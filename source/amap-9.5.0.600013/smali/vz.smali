.class public Lvz;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:D

.field public n:D

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lvz;->p:I

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lvz;->p:I

    .line 5
    iput-wide p1, p0, Lvz;->m:D

    .line 6
    iput-wide p3, p0, Lvz;->n:D

    .line 7
    iput-object p5, p0, Lvz;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 5

    .line 19
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lvz;->p:I

    const-string v0, "POINAME"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvz;->k:Ljava/lang/String;

    const-string v0, "LAT"

    const-wide/16 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lvz;->m:D

    const-string v0, "LON"

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lvz;->n:D

    const-string v0, "DEV"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lvz;->o:I

    const-string v0, "SOURCE_APP"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvz;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lvz;->p:I

    const-string v0, "lat"

    .line 10
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lon"

    .line 11
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dev"

    .line 12
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "poiname"

    .line 13
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvz;->k:Ljava/lang/String;

    const-string v3, "addr"

    .line 14
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvz;->l:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 15
    invoke-static {v0, v3, v4}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lvz;->m:D

    .line 16
    invoke-static {v1, v3, v4}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lvz;->n:D

    const/4 v0, 0x0

    .line 17
    invoke-static {v2, v0}, Lah;->k(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lvz;->o:I

    const-string v0, "sourceApplication"

    .line 18
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvz;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 12

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;-><init>()V

    .line 12
    iget v1, p0, Lvz;->p:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setType(I)V

    .line 17
    iget-object v1, p0, Lvz;->k:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setPoiName(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lvz;->l:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setAddress(Ljava/lang/String;)V

    .line 27
    iget-wide v1, p0, Lvz;->m:D

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setLatitude(D)V

    .line 32
    iget-wide v1, p0, Lvz;->n:D

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setLongitude(D)V

    .line 37
    iget v1, p0, Lvz;->o:I

    .line 39
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->setEncryptType(I)V

    .line 42
    iget-object v1, p0, Lvz;->q:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x5

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    const/4 v1, 0x0

    .line 55
    iget-object v2, p0, Lvz;->k:Ljava/lang/String;

    .line 57
    aput-object v2, v0, v1

    .line 59
    const/4 v1, 0x1

    .line 60
    iget-object v2, p0, Lvz;->l:Ljava/lang/String;

    .line 62
    aput-object v2, v0, v1

    .line 64
    iget-wide v1, p0, Lvz;->m:D

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x2

    .line 71
    aput-object v1, v0, v2

    .line 73
    iget-wide v1, p0, Lvz;->n:D

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    move-result-object v1

    .line 79
    const/4 v2, 0x3

    .line 80
    aput-object v1, v0, v2

    .line 82
    iget v1, p0, Lvz;->o:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v1

    .line 88
    const/4 v2, 0x4

    .line 89
    aput-object v1, v0, v2

    .line 91
    const-string v1, "MapLabelAction"

    .line 93
    const-string v2, "poiName={?},address={?},lat={?},lon={?},dev={?}"

    .line 95
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v3, p0, Lvz;->k:Ljava/lang/String;

    .line 100
    iget-object v4, p0, Lvz;->l:Ljava/lang/String;

    .line 102
    iget-wide v5, p0, Lvz;->m:D

    .line 104
    iget-wide v7, p0, Lvz;->n:D

    .line 106
    iget v9, p0, Lvz;->o:I

    .line 108
    const/4 v10, -0x1

    .line 109
    invoke-virtual {p0}, Lnc;->i()I

    .line 112
    move-result v11

    .line 113
    invoke-static/range {v3 .. v11}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeMapLabel(Ljava/lang/String;Ljava/lang/String;DDIII)V

    .line 116
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
