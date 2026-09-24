.class public Lrf;
.super Lak0;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILhl;Ljr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lak0;-><init>(ILhl;Ljr;)V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lak0;->a()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "CommonVedioSurfaceViewPresentation"

    .line 9
    const-string v2, "CommonVedioSurfaceViewPresentation onCreate"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-super {p0}, Lak0;->b()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "CommonVedioSurfaceViewPresentation"

    .line 9
    const-string v2, "CommonVedioSurfaceViewPresentation onDestroy"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method
