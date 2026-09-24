.class public Lq2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq2;


# direct methods
.method public constructor <init>(Lq2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq2$c;->a:Lq2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2$c;->a:Lq2;

    .line 3
    invoke-static {v0}, Lq2;->v(Lq2;)Lfo0;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lq2$c;->a:Lq2;

    .line 11
    invoke-static {v0}, Lq2;->v(Lq2;)Lfo0;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lfo0;->g()V

    .line 18
    :cond_0
    return-void
.end method
