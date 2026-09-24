.class public Lcom/autonavi/amapauto/MapApplication$c;
.super Lcs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/MapApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/MapApplication;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/MapApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/MapApplication$c;->a:Lcom/autonavi/amapauto/MapApplication;

    .line 3
    invoke-direct {p0}, Lcs;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    invoke-static {}, Lk6;->g()Lk6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lk6;->i()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v1, v2

    .line 20
    const-string v2, "MapApplication"

    .line 22
    const-string v3, "IMqttALObserver.isRunningBackground isBackground:{?}"

    .line 24
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return v0
.end method
