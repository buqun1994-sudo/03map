.class public Lrv$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrv$c;->onActivityLifecycleChanged(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrv$c;


# direct methods
.method public constructor <init>(Lrv$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv$c$a;->b:Lrv$c;

    .line 3
    iput p2, p0, Lrv$c$a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lrv$c$a;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeOnActivityLifecycleChanged(II)V

    .line 7
    return-void
.end method
