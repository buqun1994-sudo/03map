.class public Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf80$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onSearchCallBack,isSuccessed={?}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const-string v2, "ThirdPartSearchProvider"

    .line 25
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    instance-of v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 34
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 36
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->b(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;Ljava/util/List;)Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 45
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCityList()Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->b:Ljava/util/List;

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 54
    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 58
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 60
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->b(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;Ljava/util/List;)Ljava/util/List;

    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 69
    invoke-static {p1}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;)Ljava/util/List;

    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 77
    invoke-static {p1}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->a(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;)Ljava/util/List;

    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 84
    move-result p1

    .line 85
    if-lez p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 89
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->c:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 91
    invoke-static {p1, v0}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;)Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$a;->a:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;

    .line 97
    sget-object v0, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;->d:Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 99
    invoke-static {p1, v0}, Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;->c(Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider;Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;)Lcom/autonavi/auto/search/provider/ThirdPartSearchProvider$b;

    .line 102
    :goto_1
    return-void
.end method
