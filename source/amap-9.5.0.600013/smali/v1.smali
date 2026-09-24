.class public Lv1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "UserDataPath"

    .line 3
    const-string v1, "activateSpecifiedPath"

    .line 5
    const-string v2, "AutoNaviRoot"

    .line 7
    const-string v3, "MapDataPath"

    .line 9
    const-string v4, "AudioPath"

    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lv1;->a:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lv1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1;->b()V

    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 12

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isDynamicStoragePath"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    sget-object v1, Lv1;->a:[Ljava/lang/String;

    .line 14
    array-length v3, v1

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v3, :cond_3

    .line 18
    aget-object v5, v1, v4

    .line 20
    sget-object v6, Ln1;->a:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 25
    move-result v7

    .line 26
    const-string v8, "AdapterValidationChecker"

    .line 28
    const/4 v9, 0x1

    .line 29
    if-ltz v7, :cond_1

    .line 31
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 34
    move-result v6

    .line 35
    invoke-static {}, Lpi;->n()Lpi;

    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v7}, Lpi;->j()Lm1;

    .line 42
    move-result-object v7

    .line 43
    const-string v10, ""

    .line 45
    invoke-virtual {v7, v6, v10}, Ldc;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v10

    .line 53
    if-nez v10, :cond_2

    .line 55
    const/4 v10, 0x3

    .line 56
    new-array v10, v10, [Ljava/lang/Object;

    .line 58
    aput-object v5, v10, v2

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v11

    .line 64
    aput-object v11, v10, v9

    .line 66
    const/4 v9, 0x2

    .line 67
    aput-object v7, v10, v9

    .line 69
    const-string v9, "checkPath, key:{?},adapterConfig:{?}, path:{?}"

    .line 71
    invoke-static {v8, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/16 v8, 0x2e

    .line 76
    if-ne v6, v8, :cond_0

    .line 78
    invoke-virtual {p0, v6, v5, v7, v2}, Lv1;->c(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {p0, v6, v5, v7, v0}, Lv1;->c(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    new-array v6, v9, [Ljava/lang/Object;

    .line 88
    aput-object v5, v6, v2

    .line 90
    const-string v5, "checkPath error, not found config[{?}] in the AdapterConfigMap"

    .line 92
    invoke-static {v8, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    return-void
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    if-eqz p4, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 31
    :cond_0
    invoke-static {p3}, Ls1;->B(Ljava/lang/String;)Z

    .line 34
    move-result v3

    .line 35
    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v0, v1

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object p4

    .line 50
    aput-object p4, v0, v1

    .line 52
    const/4 p4, 0x2

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    aput-object v1, v0, p4

    .line 59
    const/4 p4, 0x3

    .line 60
    aput-object p2, v0, p4

    .line 62
    const/4 p4, 0x4

    .line 63
    aput-object p3, v0, p4

    .line 65
    const-string p4, "AdapterValidationChecker"

    .line 67
    const-string v1, "checkPathIsValid, isValidate={?}, isDynamicPath={?}, adapterKey={?}, funcKey={?}, path={?}"

    .line 69
    invoke-static {p4, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const/16 v0, 0x3e8

    .line 74
    const/4 v2, 0x2

    .line 75
    invoke-static {}, Lpi;->n()Lpi;

    .line 78
    move-result-object p4

    .line 79
    invoke-virtual {p4}, Lpi;->m()Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    new-instance p4, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v1, "key="

    .line 90
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string p2, ",path="

    .line 98
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    move v1, p1

    .line 109
    invoke-static/range {v0 .. v5}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    new-instance v0, Lv1$a;

    .line 3
    invoke-direct {v0, p0}, Lv1$a;-><init>(Lv1;)V

    .line 6
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
