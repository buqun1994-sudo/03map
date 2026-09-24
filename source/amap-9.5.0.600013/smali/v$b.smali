.class public Lv$b;
.super Lv$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lv$f;-><init>(Lv$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public g()Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.ACTION_ACC_STATE"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const-string p1, "com.hsae.auto.EXTRA_ACC_STATE"

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result p1

    .line 8
    invoke-static {}, Lv;->a()Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v2, v0

    .line 21
    const-string v3, "mReceiver isAccOn={?}"

    .line 23
    invoke-static {p2, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 29
    return v1
.end method
