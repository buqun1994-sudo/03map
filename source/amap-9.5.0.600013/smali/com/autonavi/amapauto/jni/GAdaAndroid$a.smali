.class public Lcom/autonavi/amapauto/jni/GAdaAndroid$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/GAdaAndroid;->doUpdateFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$a;->a:Z

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$a;->a:Z

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->saveScreenFlag(Z)V

    .line 6
    return-void
.end method
