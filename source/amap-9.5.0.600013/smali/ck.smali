.class public Lck;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lec;-><init>()V

    .line 20
    iput-object p1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;-><init>()V

    iput-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgga:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gprmc:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->x()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgsv:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgsa:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpvtg:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgll:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->E()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->timestamp:J

    .line 10
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->getLat()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->lat:D

    .line 11
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->getLon()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->lon:D

    .line 12
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->C()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->ns:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->A()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->matchLat:D

    .line 14
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->B()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->matchLon:D

    .line 15
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->ew:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->r()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->course:F

    .line 17
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->D()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->posAcc:F

    .line 18
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->s()I

    move-result p1

    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->drStatus:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;-><init>()V

    .line 10
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 12
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgga:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->I(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 19
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gprmc:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->M(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 26
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgsv:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->L(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 33
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgsa:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->K(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 40
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpvtg:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->N(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 47
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgll:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->J(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 54
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->timestamp:J

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->S(J)V

    .line 59
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 61
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->lat:D

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->setLat(D)V

    .line 66
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 68
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->lon:D

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->setLon(D)V

    .line 73
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 75
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->ns:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->Q(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 82
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->matchLat:D

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->O(D)V

    .line 87
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 89
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->matchLon:D

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->P(D)V

    .line 94
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 96
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->ew:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->H(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 103
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->course:F

    .line 105
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->F(F)V

    .line 108
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 110
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->posAcc:F

    .line 112
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->R(F)V

    .line 115
    iget-object v1, p0, Lck;->d:Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;

    .line 117
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->drStatus:I

    .line 119
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->G(I)V

    .line 122
    return-object v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 124
    return-object v0
.end method
