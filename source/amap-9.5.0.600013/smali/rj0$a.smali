.class public Lrj0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf80$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrj0;
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
    const-string v2, "VRSearchUtils"

    .line 25
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    instance-of v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 34
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lrj0;->b(Ljava/util/List;)Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCityList()Ljava/util/List;

    .line 44
    move-result-object p1

    .line 45
    sput-object p1, Lrj0;->c:Ljava/util/List;

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 50
    if-eqz v0, :cond_1

    .line 52
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 54
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lrj0;->b(Ljava/util/List;)Ljava/util/List;

    .line 61
    :cond_1
    :goto_0
    invoke-static {}, Lrj0;->a()Ljava/util/List;

    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 67
    invoke-static {}, Lrj0;->a()Ljava/util/List;

    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 74
    move-result p1

    .line 75
    if-lez p1, :cond_2

    .line 77
    sget-object p1, Lrj0$b;->c:Lrj0$b;

    .line 79
    invoke-static {p1}, Lrj0;->c(Lrj0$b;)Lrj0$b;

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object p1, Lrj0$b;->d:Lrj0$b;

    .line 85
    invoke-static {p1}, Lrj0;->c(Lrj0$b;)Lrj0$b;

    .line 88
    :goto_1
    return-void
.end method
