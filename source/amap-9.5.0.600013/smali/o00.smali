.class public final Lo00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll00;


# instance fields
.field public final a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1, p2, p3}, Ln00;->a(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lo00;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lo00;

    .line 7
    if-nez v0, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lo00;

    .line 13
    iget-object v0, p0, Lo00;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 15
    iget-object p1, p1, Lo00;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 17
    invoke-static {v0, p1}, Lm00;->a(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lo00;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 7
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lt40;->b([Ljava/lang/Object;)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method
