.class public Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dev:I

.field public directNavi:I

.field public fMidPoiId:Ljava/lang/String;

.field public fmidTypecode:Ljava/lang/String;

.field public fmid_entrylat:D

.field public fmid_entrylon:D

.field public fmidlat:D

.field public fmidlon:D

.field public fmidname:Ljava/lang/String;

.field public fmidtype:I

.field public requestId:I

.field public sMidPoiId:Ljava/lang/String;

.field public smidTypecode:Ljava/lang/String;

.field public smid_entrylat:D

.field public smid_entrylon:D

.field public smidlat:D

.field public smidlon:D

.field public smidname:Ljava/lang/String;

.field public smidtype:I

.field public strategy:I

.field public tMidPoiId:Ljava/lang/String;

.field public tmidTypecode:Ljava/lang/String;

.field public tmid_entrylat:D

.field public tmid_entrylon:D

.field public tmidlat:D

.field public tmidlon:D

.field public tmidname:Ljava/lang/String;

.field public tmidtype:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidlat:D

    .line 8
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidlon:D

    .line 10
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmid_entrylat:D

    .line 12
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmid_entrylon:D

    .line 14
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidlat:D

    .line 16
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidlon:D

    .line 18
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smid_entrylat:D

    .line 20
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smid_entrylon:D

    .line 22
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidlat:D

    .line 24
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidlon:D

    .line 26
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmid_entrylat:D

    .line 28
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmid_entrylon:D

    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->dev:I

    .line 33
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->strategy:I

    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "SpecialPoiNaviData{requestId="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->requestId:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", type="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->type:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", directNavi="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->directNavi:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", fMidPoiId="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fMidPoiId:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", fmidlat="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidlat:D

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", fmidlon="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidlon:D

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", fmid_entrylat="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmid_entrylat:D

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", fmid_entrylon="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmid_entrylon:D

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", fmidname="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidname:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", fmidTypecode="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidTypecode:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", fmidtype="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->fmidtype:I

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", sMidPoiId="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->sMidPoiId:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", smidlat="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidlat:D

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", smidlon="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidlon:D

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", smid_entrylat="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smid_entrylat:D

    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", smid_entrylon="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smid_entrylon:D

    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", smidname="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidname:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", smidTypecode="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidTypecode:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", smidtype="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->smidtype:I

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ", tMidPoiId="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tMidPoiId:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ", tmidlat="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidlat:D

    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", tmidlon="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidlon:D

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, ", tmid_entrylat="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmid_entrylat:D

    .line 233
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", tmid_entrylon="

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmid_entrylon:D

    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", tmidTypecode="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidTypecode:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", tmidtype="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->tmidtype:I

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, ", dev="

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->dev:I

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", strategy="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;->strategy:I

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const/16 v1, 0x7d

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 295
    return-object v0
.end method
