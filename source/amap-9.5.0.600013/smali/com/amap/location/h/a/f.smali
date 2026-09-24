.class public Lcom/amap/location/h/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/h/a/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/location/h/a/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/location/h/a/f$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/amap/location/h/a/f$a;-><init>(Lcom/amap/location/h/a/f$1;)V

    .line 7
    sput-object v0, Lcom/amap/location/h/a/f;->a:Lcom/amap/location/h/a/f$a;

    .line 9
    return-void
.end method

.method public static a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/h/a/b;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    sget-object v1, Lcom/amap/location/h/a/f;->a:Lcom/amap/location/h/a/f$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    iget-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/support/bean/cell/AmapCell;

    .line 29
    iget-object v2, p0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    invoke-static {v2, v1}, Lcom/amap/location/h/a/f;->b(Lcom/amap/location/support/bean/cell/AmapCell;Lcom/amap/location/support/bean/cell/AmapCell;)Lcom/amap/location/h/a/b$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v2, p1, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget v2, v1, Lcom/amap/location/h/a/b$a;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 32
    iput-object v1, p1, Lcom/amap/location/h/a/b;->c:Lcom/amap/location/h/a/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LocationCacheUtil"

    .line 33
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/h/a/g;)V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    iput-wide v0, p1, Lcom/amap/location/h/a/g;->a:J

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 37
    iget-object v4, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-eqz v4, :cond_1

    .line 38
    iget-wide v4, v4, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_1

    .line 39
    iget-object v6, p1, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_2
    iget-wide v3, p1, Lcom/amap/location/h/a/g;->a:J

    cmp-long p0, v3, v1

    if-eqz p0, :cond_3

    .line 41
    iget-object p0, p1, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static a(JJ)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/AmapFps;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    iget-object v2, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    invoke-static {v1, v2}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/cell/AmapCell;Lcom/amap/location/support/bean/cell/AmapCell;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-static {p0, p1, v0}, Lcom/amap/location/h/a/f;->a(Ljava/util/List;Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/AmapFps;D)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    new-array v3, v2, [I

    .line 10
    invoke-static {p0, v3}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/AmapFps;[I)[J

    move-result-object v0

    const/4 v4, 0x0

    aget v5, v3, v4

    .line 11
    invoke-static {v1, v3}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/AmapFps;[I)[J

    move-result-object v1

    aget v3, v3, v4

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int v6, v5, v3

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_5

    .line 12
    aget-wide v9, v0, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v3, :cond_3

    .line 13
    aget-wide v12, v1, v11

    cmp-long v14, v9, v12

    if-nez v14, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    :cond_5
    mul-int/lit8 v8, v8, 0x2

    int-to-double v0, v8

    int-to-double v5, v6

    mul-double v5, v5, p2

    cmpl-double v3, v0, v5

    if-ltz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private static a(Lcom/amap/location/support/bean/cell/AmapCell;Lcom/amap/location/support/bean/cell/AmapCell;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static a(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 45
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 46
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_2
    add-int p0, v0, v1

    const/4 p1, 0x1

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    return p1

    :cond_3
    mul-int/lit8 v3, v3, 0x2

    int-to-double v0, v3

    int-to-double v3, p0

    const-wide v5, 0x3fe3c6a7ef9db22dL    # 0.618

    mul-double v3, v3, v5

    cmpl-double p0, v0, v3

    if-ltz p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCell;

    iget-boolean v4, v4, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    if-nez v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCell;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/support/bean/cell/AmapCell;

    invoke-static {v4, v5}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/cell/AmapCell;Lcom/amap/location/support/bean/cell/AmapCell;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;)[D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 55
    fill-array-data v0, :array_0

    .line 56
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 60
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 61
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [D

    .line 62
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 63
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_1

    move-wide v10, v6

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    aput-wide v10, v0, v3

    .line 64
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide v6, v8

    :goto_2
    aput-wide v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {v0, v2}, Lcom/amap/location/h/a/f;->a([D[D)[D

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a([D[D)[D
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 47
    fill-array-data v1, :array_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    move-wide v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 48
    :goto_0
    array-length v12, v0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ge v9, v12, :cond_1

    .line 49
    aget-wide v15, v0, v9

    mul-double v17, v15, v15

    add-double v2, v2, v17

    .line 50
    aget-wide v17, p1, v9

    mul-double v19, v17, v17

    add-double v5, v5, v19

    mul-double v19, v15, v17

    add-double v7, v7, v19

    cmpl-double v12, v17, v13

    if-nez v12, :cond_0

    add-int/lit8 v10, v10, 0x1

    cmpl-double v12, v15, v13

    if-nez v12, :cond_0

    add-int/lit8 v11, v11, 0x1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-nez v10, :cond_2

    return-object v1

    .line 51
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v2, v2, v5

    div-double/2addr v7, v2

    aput-wide v7, v1, v4

    int-to-double v2, v11

    mul-double v5, v2, v13

    int-to-double v7, v10

    div-double/2addr v5, v7

    const/4 v0, 0x1

    aput-wide v5, v1, v0

    const/4 v0, 0x2

    aput-wide v2, v1, v0

    :goto_1
    if-ge v4, v0, :cond_4

    .line 52
    aget-wide v2, v1, v4

    cmpl-double v5, v2, v13

    if-lez v5, :cond_3

    .line 53
    aput-wide v13, v1, v4

    .line 54
    :cond_3
    aget-wide v2, v1, v4

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v5

    aput-wide v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a(Lcom/amap/location/support/bean/AmapFps;[I)[J
    .locals 10

    .line 14
    iget-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v0, :cond_4

    .line 16
    iget-object p0, p0, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v5

    new-array v0, v0, [J

    .line 18
    aput-wide v3, v0, v6

    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v5, 0x0

    .line 20
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-eqz v7, :cond_2

    .line 21
    iget-wide v7, v7, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    cmp-long v9, v7, v1

    if-eqz v9, :cond_2

    cmp-long v9, v7, v3

    if-eqz v9, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 22
    aput-wide v7, v0, v5

    move v5, v9

    goto :goto_2

    .line 23
    :cond_3
    aput v5, p1, v6

    goto :goto_3

    :cond_4
    cmp-long p0, v3, v1

    if-eqz p0, :cond_5

    new-array v0, v5, [J

    aput-wide v3, v0, v6

    .line 24
    aput v5, p1, v6

    goto :goto_3

    .line 25
    :cond_5
    aput v6, p1, v6

    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method private static b(Lcom/amap/location/support/bean/cell/AmapCell;Lcom/amap/location/support/bean/cell/AmapCell;)Lcom/amap/location/h/a/b$a;
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Lcom/amap/location/h/a/b$a;

    invoke-direct {v0}, Lcom/amap/location/h/a/b$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    move-result v1

    iput v1, v0, Lcom/amap/location/h/a/b$a;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/amap/location/support/bean/cell/AmapCell;->getMncInt()I

    move-result v1

    iput v1, v0, Lcom/amap/location/h/a/b$a;->b:I

    .line 4
    invoke-virtual {p1}, Lcom/amap/location/support/bean/cell/AmapCell;->getAreaID()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/h/a/b$a;->c:J

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/support/bean/cell/AmapCell;->getCellID()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/h/a/b$a;->d:J

    .line 6
    instance-of v1, p1, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    iget v1, v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    iput v1, v0, Lcom/amap/location/h/a/b$a;->b:I

    :cond_0
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 9
    iput p0, v0, Lcom/amap/location/h/a/b$a;->e:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 10
    iput p0, v0, Lcom/amap/location/h/a/b$a;->e:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static b(Ljava/util/HashSet;Ljava/util/HashSet;)[D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)[D"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 11
    fill-array-data v0, :array_0

    .line 12
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 16
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [D

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [D

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 19
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_1

    move-wide v10, v6

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    aput-wide v10, v0, v3

    .line 20
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide v6, v8

    :goto_2
    aput-wide v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {v0, v2}, Lcom/amap/location/h/a/f;->a([D[D)[D

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
