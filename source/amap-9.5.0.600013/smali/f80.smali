.class public Lf80;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf80$a;
    }
.end annotation


# static fields
.field public static b:Lf80;


# instance fields
.field public a:Lf80$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lf80;
    .locals 1

    .line 1
    sget-object v0, Lf80;->b:Lf80;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lf80;

    .line 7
    invoke-direct {v0}, Lf80;-><init>()V

    .line 10
    sput-object v0, Lf80;->b:Lf80;

    .line 12
    :cond_0
    sget-object v0, Lf80;->b:Lf80;

    .line 14
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf80;->a:Lf80$a;

    .line 3
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 5
    invoke-interface {v0, p1}, Lf80$a;->a(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V

    .line 8
    return-void
.end method

.method public b(Lf80$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf80;->a:Lf80$a;

    .line 3
    const/16 p1, 0x13f0

    .line 5
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getFavoriteInfo(II)V

    .line 8
    return-void
.end method

.method public d(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;Lf80$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf80;->a:Lf80$a;

    .line 3
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSearch(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;)V

    .line 6
    return-void
.end method
