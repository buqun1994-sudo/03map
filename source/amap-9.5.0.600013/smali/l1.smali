.class public abstract Ll1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/util/SparseArray;

.field public static b:I

.field public static final c:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    sput-object v0, Ll1;->a:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    sput-object v0, Ll1;->c:Ljava/util/Set;

    .line 15
    return-void
.end method

.method public static a(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Ll1;->a:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne p2, v3, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x1

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 26
    sget-object v1, Ll1;->a:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    new-instance v1, Landroid/util/SparseArray;

    .line 33
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/util/SparseArray;

    .line 49
    if-nez v4, :cond_2

    .line 51
    new-instance v1, Landroid/util/SparseArray;

    .line 53
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 56
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Integer;

    .line 69
    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v0

    .line 75
    if-eq v0, v1, :cond_3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    return-void

    .line 79
    :cond_4
    :goto_1
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    :goto_2
    invoke-static/range {p0 .. p5}, Ll1;->d(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Ll1;->c:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p0, v0, v1

    .line 19
    const-string p0, "AUTO_AL"

    .line 21
    const-string v1, "collectResultForDynamicFunc add:{?}"

    .line 23
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x2

    .line 30
    invoke-static {}, Lpi;->n()Lpi;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lpi;->m()Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    move-object v7, p1

    .line 39
    invoke-static/range {v2 .. v7}, Ll1;->d(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x2

    .line 5
    invoke-static {}, Lpi;->n()Lpi;

    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lpi;->m()Ljava/lang/String;

    .line 12
    move-result-object v4

    .line 13
    move-object v5, p0

    .line 14
    invoke-static/range {v0 .. v5}, Ll1;->d(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static d(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Ll1;->b:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    sput v0, Ll1;->b:I

    .line 7
    const/4 v0, 0x7

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const v2, 0x5f5e139

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v3, v0, v4

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 24
    aput-object p0, v0, v1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x2

    .line 31
    aput-object p0, v0, p1

    .line 33
    const/4 p0, 0x3

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p2

    .line 38
    aput-object p2, v0, p0

    .line 40
    const/4 p0, 0x4

    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p2

    .line 45
    aput-object p2, v0, p0

    .line 47
    const/4 p0, 0x5

    .line 48
    aput-object p4, v0, p0

    .line 50
    const/4 p0, 0x6

    .line 51
    aput-object p5, v0, p0

    .line 53
    const-string p0, "[%d][6][%d][%d][%d][%d][%s][%s]"

    .line 55
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    aput-object p0, p1, v4

    .line 63
    sget p2, Ll1;->b:I

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p2

    .line 69
    aput-object p2, p1, v1

    .line 71
    const-string p2, "AdapteResultCollectionUtils"

    .line 73
    const-string p3, "format = {?}, trigger num = {?}"

    .line 75
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const-string p1, "AUTO_AL"

    .line 80
    const/16 p2, 0x64

    .line 82
    invoke-static {p1, v2, p0, p2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 85
    return-void
.end method

.method public static e(I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const v1, 0x5f5e17f

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v0, v3

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p0

    .line 19
    aput-object p0, v0, v2

    .line 21
    const-string p0, "[%d][1][%d]"

    .line 23
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string v0, "AUTO_AL"

    .line 29
    const/4 v2, 0x5

    .line 30
    invoke-static {v0, v1, p0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static f(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const v1, 0x5f5e180

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v0, v3

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p0

    .line 19
    aput-object p0, v0, v2

    .line 21
    const/4 p0, 0x2

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v0, p0

    .line 28
    const/4 p0, 0x3

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 33
    aput-object p1, v0, p0

    .line 35
    const/4 p0, 0x4

    .line 36
    aput-object p3, v0, p0

    .line 38
    const/4 p0, 0x5

    .line 39
    aput-object p4, v0, p0

    .line 41
    const-string p0, "[%d][5][%d][%d][%d][%s][%s]"

    .line 43
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "AUTO_AL"

    .line 49
    const/16 p2, 0x32

    .line 51
    invoke-static {p1, v1, p0, p2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 54
    return-void
.end method

.method public static g(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ll1;->c:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
