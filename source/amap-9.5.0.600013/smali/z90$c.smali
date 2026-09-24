.class public Lz90$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz90;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz90;


# direct methods
.method public constructor <init>(Lz90;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz90$c;->a:Lz90;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz90$c;->a:Lz90;

    .line 3
    invoke-virtual {v0}, Lz90;->E()V

    .line 6
    iget-object v0, p0, Lz90$c;->a:Lz90;

    .line 8
    invoke-virtual {v0}, Lz90;->J()V

    .line 11
    iget-object v0, p0, Lz90$c;->a:Lz90;

    .line 13
    invoke-virtual {v0}, Lz90;->H()V

    .line 16
    iget-object v0, p0, Lz90$c;->a:Lz90;

    .line 18
    invoke-virtual {v0}, Lz90;->G()V

    .line 21
    invoke-static {}, Ldx;->c()Ldx;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ldx;->h()V

    .line 28
    iget-object v0, p0, Lz90$c;->a:Lz90;

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Lz90;->b(Lz90;Landroid/content/Context;)Landroid/content/Context;

    .line 34
    return-void
.end method
