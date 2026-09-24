.class public Lcom/autonavi/amapauto/jni/GAdaAndroid$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/GAdaAndroid;->naviOperationNotify(I)V
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
    .locals 2

    .line 1
    invoke-static {}, Lzx;->h()Lzx;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lzx;->k(Lzx$d;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->access$002(Z)Z

    .line 13
    return-void
.end method
