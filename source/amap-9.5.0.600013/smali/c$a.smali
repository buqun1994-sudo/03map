.class public Lc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lc$a;->a:Lc;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "AIMMediaManager"

    .line 6
    const-string v1, "onCompletion "

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lc$a;->a:Lc;

    .line 13
    invoke-static {p1}, Lc;->a(Lc;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x9

    .line 19
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 22
    invoke-static {}, Lo6;->j()Lo6;

    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-virtual {p1, v0}, Lo6;->a(I)Z

    .line 30
    return-void
.end method
