.class public Ljf0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljf0;


# direct methods
.method public constructor <init>(Ljf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljf0$g;->a:Ljf0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0$g;->a:Ljf0;

    .line 3
    invoke-static {v0}, Ljf0;->f(Ljf0;)Loq;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Ljf0$g;->a:Ljf0;

    .line 11
    invoke-static {v0}, Ljf0;->f(Ljf0;)Loq;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Loq;->onStateChange(I)V

    .line 18
    :cond_0
    return-void
.end method
