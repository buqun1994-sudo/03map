.class public Lc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lc$b;->a:Lc;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AIMMediaManager"

    .line 6
    const-string v3, "onPreparedListener "

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lc$b;->a:Lc;

    .line 13
    invoke-static {v1}, Lc;->a(Lc;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 23
    return-void
.end method
