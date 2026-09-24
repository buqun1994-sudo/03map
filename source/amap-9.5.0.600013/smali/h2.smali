.class public Lh2;
.super Lp;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp;->a()V

    .line 4
    iget-object v0, p0, Lp;->a:Ljava/util/ArrayList;

    .line 6
    const-string v1, "com.auto.jsonsdk.client"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lp;->a:Ljava/util/ArrayList;

    .line 13
    const-string v1, "com.amapauto.autonavi.jsonsimulate.client"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lp;->a:Ljava/util/ArrayList;

    .line 20
    const-string v1, "pocoservice"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
