.class public Lfo0$b;
.super Lhl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic i:Lfo0;


# direct methods
.method public constructor <init>(Lfo0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfo0$b;->i:Lfo0;

    .line 3
    invoke-direct {p0, p2}, Lhl;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()Ld20;
    .locals 1

    .line 1
    sget-object v0, Ld20;->b:Ld20;

    .line 3
    return-object v0
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 0

    .line 1
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public u()V
    .locals 0

    .line 1
    return-void
.end method
