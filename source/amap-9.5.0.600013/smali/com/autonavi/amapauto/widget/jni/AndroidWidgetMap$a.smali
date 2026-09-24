.class public Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->onScreenShotFinishedWithByteArray([BI)V
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
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnb;->m()Lmm0;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->bitmap:Landroid/graphics/Bitmap;

    .line 12
    invoke-virtual {v0, v1, v2}, Lmm0;->a(ILandroid/graphics/Bitmap;)V

    .line 15
    return-void
.end method
