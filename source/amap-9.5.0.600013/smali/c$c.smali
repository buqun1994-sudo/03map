.class public Lc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc;


# direct methods
.method public constructor <init>(Lc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc$c;->a:Lc;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p2

    .line 8
    const/4 p3, 0x0

    .line 9
    aput-object p2, p1, p3

    .line 11
    const-string p2, "AIMMediaManager"

    .line 13
    const-string v0, "onPlayerErrorListener onError what:{?}"

    .line 15
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lc$c;->a:Lc;

    .line 20
    invoke-static {p1}, Lc;->b(Lc;)V

    .line 23
    iget-object p1, p0, Lc$c;->a:Lc;

    .line 25
    invoke-static {p1}, Lc;->a(Lc;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x5

    .line 30
    invoke-static {p2, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 33
    return p3
.end method
