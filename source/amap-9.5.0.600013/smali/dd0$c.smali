.class public Ldd0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldk0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "gaei.action.DAY_NIGHT_ACTION"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldd0$c;->q()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    const-string p1, "ACTION"

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x0

    .line 9
    if-ne p1, v0, :cond_0

    .line 11
    invoke-static {p2, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 14
    return v0

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 17
    invoke-static {p2, p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 20
    return v0

    .line 21
    :cond_1
    return p2
.end method

.method public q()Z
    .locals 8

    .line 1
    invoke-static {}, Ldd0;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "power"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/PowerManager;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 20
    move-result-object v1

    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v2, :cond_1

    .line 26
    aget-object v5, v1, v4

    .line 28
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    const-string v7, "getBrightNessMode"

    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v5, 0x0

    .line 45
    :goto_1
    const/4 v1, 0x1

    .line 46
    if-nez v5, :cond_2

    .line 48
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    aput-object v2, v1, v3

    .line 60
    const-string v2, "\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\u5e7f\u6c7d\u5927\u706f\u72b6\u6001 \u65e0\u6cd5\u901a\u8fc7\u53d1\u5c04\u65b9\u5f0f\u83b7\u53d6\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 62
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return v3

    .line 66
    :cond_2
    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    const-string v4, "exception:"

    .line 86
    new-array v5, v3, [Ljava/lang/Object;

    .line 88
    invoke-static {v2, v4, v0, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x0

    .line 92
    :goto_2
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    const/4 v4, 0x2

    .line 97
    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    aput-object v5, v4, v3

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v5

    .line 109
    aput-object v5, v4, v1

    .line 111
    const-string v5, "\u5927\u706f\u72b6\u6001 nRes = {?}"

    .line 113
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const/4 v2, 0x3

    .line 117
    if-ne v2, v0, :cond_3

    .line 119
    const/4 v3, 0x1

    .line 120
    :cond_3
    return v3
.end method
