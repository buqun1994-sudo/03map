.class public Lka0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lka0;->d(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka0$a;->a:Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p2, v0, v1

    .line 14
    const-string v2, "RequestLastOneKmHelper"

    .line 16
    const-string v3, "[requestToken][callback]resultCode:{?}; dataJson:{?}"

    .line 18
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget v0, Lup;->a:I

    .line 23
    if-ne p1, v0, :cond_0

    .line 25
    invoke-static {}, Lse;->c()Lse;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v1, p2}, Lse;->handleLastOneKmResponse(ILjava/lang/String;)V

    .line 32
    iget-object p1, p0, Lka0$a;->a:Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;

    .line 34
    invoke-static {p1}, Lka0;->a(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V

    .line 37
    :cond_0
    return-void
.end method
