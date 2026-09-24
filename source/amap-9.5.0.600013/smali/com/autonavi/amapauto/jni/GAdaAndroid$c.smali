.class public Lcom/autonavi/amapauto/jni/GAdaAndroid$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/jni/GAdaAndroid;->exitApp(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$c;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$c;->b:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$c;->a:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "GAdaAndroid"

    .line 15
    const-string v2, "exitApp FullScreen isRestart:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lk6;->g()Lk6;

    .line 23
    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$c;->a:Z

    .line 26
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/GAdaAndroid$c;->b:Z

    .line 28
    invoke-virtual {v0, v1, v2}, Lk6;->e(ZZ)V

    .line 31
    return-void
.end method
