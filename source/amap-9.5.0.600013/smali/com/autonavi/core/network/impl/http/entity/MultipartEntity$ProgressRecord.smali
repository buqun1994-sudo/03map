.class Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressRecord"
.end annotation


# instance fields
.field nowLength:J

.field totalLength:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;-><init>()V

    return-void
.end method
