.class public Lpd0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd0;->z(Leg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpd0;


# direct methods
.method public constructor <init>(Lpd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpd0$a;->a:Lpd0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpd0$a;->a:Lpd0;

    .line 3
    invoke-static {v0, p1}, Lpd0;->b(Lpd0;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object p1, p0, Lpd0$a;->a:Lpd0;

    .line 8
    invoke-static {p1}, Lpd0;->c(Lpd0;)Landroid/os/Handler;

    .line 11
    move-result-object p1

    .line 12
    const/16 v0, 0xc9

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 21
    return-void
.end method
