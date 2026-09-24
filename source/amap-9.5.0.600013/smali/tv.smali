.class public Ltv;
.super Lsv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsv;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "/storage/udisk"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-object v0
.end method
