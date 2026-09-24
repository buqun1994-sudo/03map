.class public Lcom/autonavi/amapauto/jni/protocol/data/PathConfigData;
.super Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;
.source "SourceFile"


# instance fields
.field public vecPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PathInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 4
    return-void
.end method
