.class public Lka0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lka0;->c(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
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
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v0, p1

    .line 14
    const-string p1, "RequestLastOneKmHelper"

    .line 16
    const-string p2, "[requestLastOneKm][callback]resultCode:{?}; dataJson:{?}"

    .line 18
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method
