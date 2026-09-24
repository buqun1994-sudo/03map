.class public Lyi0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyi0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi0;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyi0;


# direct methods
.method public constructor <init>(Lyi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyi0$a;->a:Lyi0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyi0$a;->a:Lyi0;

    .line 3
    invoke-static {v0}, Lyi0;->a(Lyi0;)Lbr;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lbr;->s()V

    .line 10
    iget-object v0, p0, Lyi0$a;->a:Lyi0;

    .line 12
    invoke-static {v0}, Lyi0;->b(Lyi0;)Z

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lyi0$a;->a:Lyi0;

    .line 18
    invoke-static {v1}, Lyi0;->a(Lyi0;)Lbr;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, v0}, Lbr;->p(Z)V

    .line 25
    return-void
.end method
