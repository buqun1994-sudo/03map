.class public Lqi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqi$a;
    }
.end annotation


# instance fields
.field public final a:Lqi$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lqi$a;

    const-string v1, "DeviceFeatureGroup"

    invoke-direct {v0, v1}, Lqi$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lqi;->a:Lqi$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lqi$a;

    const-string v1, "DeviceFeatureGroup"

    invoke-direct {v0, v1}, Lqi$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lqi;->a:Lqi$a;

    .line 5
    invoke-virtual {v0, p1, p2}, Ldc;->g(Ljava/lang/String;Z)Z

    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lqi;->a:Lqi$a;

    .line 3
    invoke-virtual {v0}, Ldc;->a()Landroid/util/SparseArray;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lqi;->a:Lqi$a;

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {v0, p1, v1}, Ldc;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqi;->a:Lqi$a;

    .line 3
    invoke-virtual {v0}, Ldc;->c()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqi;->a:Lqi$a;

    .line 3
    invoke-virtual {v0, p1, p2}, Ldc;->i(ILjava/lang/String;)V

    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xf

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    aput-object v3, v1, v2

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v1, v2

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    aput-object v3, v1, v2

    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    aput-object v3, v1, v2

    .line 37
    const/4 v2, 0x4

    .line 38
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v1, v2

    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    aput-object v3, v1, v2

    .line 51
    const/4 v2, 0x6

    .line 52
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    aput-object v3, v1, v2

    .line 58
    const/4 v2, 0x7

    .line 59
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    aput-object v3, v1, v2

    .line 65
    const/16 v2, 0x8

    .line 67
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    aput-object v3, v1, v2

    .line 73
    const/16 v2, 0x9

    .line 75
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    aput-object v3, v1, v2

    .line 81
    const/16 v2, 0xa

    .line 83
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    aput-object v3, v1, v2

    .line 89
    const/16 v2, 0xb

    .line 91
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    aput-object v3, v1, v2

    .line 97
    const/16 v2, 0xc

    .line 99
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    aput-object v3, v1, v2

    .line 105
    const/16 v2, 0xd

    .line 107
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    aput-object v3, v1, v2

    .line 113
    const/16 v2, 0xe

    .line 115
    invoke-virtual {p0, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    aput-object v3, v1, v2

    .line 121
    const-string v2, "DeviceFeatureGroup[fingerPrint:%s, brand:%s, name:%s, model:%s,  manufacturer:%s, versionRelease:%s, versionSdk:%s, board:%s, device:%s, platform:%s, cpuAbi:%s,  width:%s, height:%s, dpi:%s, buildDisplay:%s]"

    .line 123
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method
