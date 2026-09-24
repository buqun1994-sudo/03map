.class public Lcom/autonavi/extscreen/ExtScreenNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final MAP_SURFACE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExtScreenNative"

.field public static final UI_SURFACE_TYPE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native accquirePresentationConfig(Lcom/autonavi/extscreen/dto/PresentationConfig;)Z
.end method

.method public static changeScreenMode(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "ExtScreenNative"

    .line 13
    const-string v2, "changeScreenMode mode={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lse;->c()Lse;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lse;->changeScreenMode(I)V

    .line 25
    return-void
.end method

.method public static controlSurfaceVisibility(IIZ)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const-string v1, "ExtScreenNative"

    .line 27
    const-string v2, "controlSurfaceVisivility windowId={?},surfaceType={?},show={?}"

    .line 29
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, La20;->l()La20;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0, p1, p2}, La20;->h(IIZ)V

    .line 39
    return-void
.end method

.method public static createExternalScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/extscreen/dto/PresentationConfig;->toString()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "ExtScreenNative"

    .line 13
    const-string v2, "createExternalScreen presentationConfig:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, La20;->l()La20;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, La20;->i(Lcom/autonavi/extscreen/dto/PresentationConfig;)V

    .line 25
    return-void
.end method

.method public static destoryExternalScreen(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "ExtScreenNative"

    .line 13
    const-string v2, "destoryExternalScreen id={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, La20;->l()La20;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, La20;->v(I)V

    .line 25
    return-void
.end method

.method public static native notifyProjectionSizeChange(I)V
.end method

.method public static native notifyUIstyleChange(I)V
.end method
