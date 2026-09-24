.class public interface abstract Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestTransformer"
.end annotation


# static fields
.field public static final IDENTITY:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer$1;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer$1;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;->IDENTITY:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract transformRequest(Lcom/autonavi/common/imageloader/Request;)Lcom/autonavi/common/imageloader/Request;
.end method
