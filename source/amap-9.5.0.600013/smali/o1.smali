.class public Lo1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "AdapterConfigUpdater"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lo1;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Lo1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo1;->c()V

    .line 4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 8

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lpi;->l()I

    .line 18
    move-result v0

    .line 19
    sget-object v1, Lo1;->a:Ljava/lang/String;

    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v4, v3, v5

    .line 31
    const-string v4, "onApplyDeviceAdapterNotify,isHasAdapted, businessType={?}"

    .line 33
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    if-ne v0, v2, :cond_1

    .line 38
    invoke-static {}, Lpi;->n()Lpi;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lpi;->j()Lm1;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ldc;->a()Landroid/util/SparseArray;

    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 54
    move-result v3

    .line 55
    if-ge v1, v3, :cond_3

    .line 57
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 63
    const-string v4, "="

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    array-length v6, v4

    .line 70
    const/4 v7, 0x2

    .line 71
    if-eq v6, v7, :cond_0

    .line 73
    sget-object v4, Lo1;->a:Ljava/lang/String;

    .line 75
    new-array v6, v2, [Ljava/lang/Object;

    .line 77
    aput-object v3, v6, v5

    .line 79
    const-string v3, "applyFuncConfig, error: {?}"

    .line 81
    invoke-static {v4, v3, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    invoke-static {}, Lzm;->d()Lzm;

    .line 88
    move-result-object v3

    .line 89
    aget-object v6, v4, v5

    .line 91
    aget-object v4, v4, v2

    .line 93
    invoke-virtual {v3, v6, v4}, Lzm;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Ln1;->a:Landroid/util/SparseArray;

    .line 101
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 104
    move-result v1

    .line 105
    if-ge v5, v1, :cond_3

    .line 107
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 110
    move-result v1

    .line 111
    invoke-static {}, Lpi;->n()Lpi;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lpi;->j()Lm1;

    .line 118
    move-result-object v2

    .line 119
    const-string v3, ""

    .line 121
    invoke-virtual {v2, v1, v3}, Ldc;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_2

    .line 131
    invoke-static {}, Lzm;->d()Lzm;

    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-virtual {v3, v1, v2}, Lzm;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    sget-object v0, Lo1;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "init"

    .line 8
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lo1$a;

    .line 13
    invoke-direct {v0, p0}, Lo1$a;-><init>(Lo1;)V

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative;->setApplyDeviceAdapterNotifyInterface(Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$b;)V

    .line 19
    return-void
.end method
