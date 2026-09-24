.class public Lpi$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/jni/deviceadapter/DeviceAdapterNative$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpi;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpi;


# direct methods
.method public constructor <init>(Lpi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpi$b;->a:Lpi;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lpi$b;->a:Lpi;

    .line 6
    invoke-static {v2}, Lpi;->g(Lpi;)Z

    .line 9
    move-result v2

    .line 10
    xor-int/2addr v2, v0

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 18
    const-string v2, "DeviceAdapterManager"

    .line 20
    const-string v3, "isAdaptiveDevice:{?}"

    .line 22
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lpi$b;->a:Lpi;

    .line 27
    invoke-static {v1}, Lpi;->g(Lpi;)Z

    .line 30
    move-result v1

    .line 31
    xor-int/2addr v0, v1

    .line 32
    return v0
.end method
