.class public Lcom/amap/location/e/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([D)I
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 4
    const/4 v3, 0x1

    .line 5
    aget-wide v4, p0, v3

    .line 7
    const/4 v6, 0x2

    .line 8
    aget-wide v6, p0, v6

    .line 10
    const/4 v6, 0x3

    .line 11
    aget-wide v6, p0, v6

    .line 13
    const-wide v8, 0x403623d70a3d70a4L    # 22.14

    .line 18
    cmpg-double p0, v6, v8

    .line 20
    if-gtz p0, :cond_0

    .line 22
    const-wide/high16 v8, 0x4023000000000000L    # 9.5

    .line 24
    cmpg-double p0, v1, v8

    .line 26
    if-gtz p0, :cond_0

    .line 28
    const-wide v8, 0x4033bd70a3d70a3dL    # 19.74

    .line 33
    cmpl-double p0, v6, v8

    .line 35
    if-gtz p0, :cond_4

    .line 37
    :cond_0
    const-wide v8, 0x4048a147ae147ae1L    # 49.26

    .line 42
    const-wide v10, 0x4032800000000000L    # 18.5

    .line 47
    cmpl-double p0, v6, v8

    .line 49
    if-lez p0, :cond_1

    .line 51
    cmpg-double p0, v1, v10

    .line 53
    if-gtz p0, :cond_1

    .line 55
    const-wide v8, 0x40ae54b851eb851fL    # 3882.36

    .line 60
    cmpg-double p0, v6, v8

    .line 62
    if-lez p0, :cond_4

    .line 64
    :cond_1
    const-wide v8, 0x411a784770a3d70aL    # 433681.86

    .line 69
    cmpl-double p0, v6, v8

    .line 71
    if-lez p0, :cond_2

    .line 73
    cmpg-double p0, v1, v10

    .line 75
    if-lez p0, :cond_4

    .line 77
    :cond_2
    const-wide v8, 0x405b0d70a3d70a3dL    # 108.21

    .line 82
    const-wide v12, 0x40d2538a3d70a3d7L    # 18766.16

    .line 87
    cmpl-double p0, v6, v8

    .line 89
    if-lez p0, :cond_3

    .line 91
    cmpl-double p0, v1, v10

    .line 93
    if-lez p0, :cond_3

    .line 95
    cmpg-double p0, v6, v12

    .line 97
    if-lez p0, :cond_4

    .line 99
    :cond_3
    cmpl-double p0, v1, v10

    .line 101
    if-lez p0, :cond_5

    .line 103
    cmpl-double p0, v6, v12

    .line 105
    if-lez p0, :cond_5

    .line 107
    const-wide v1, -0x3efdb57b851eb852L    # -149840.56

    .line 112
    cmpg-double p0, v4, v1

    .line 114
    if-gtz p0, :cond_5

    .line 116
    :cond_4
    const/4 v0, 0x1

    .line 117
    :cond_5
    return v0
.end method
