.class public Lq1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq1$a;


# direct methods
.method public constructor <init>(Lq1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1$a$a;->a:Lq1$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lt1;->m()Lt1;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lq1$a$a;->a:Lq1$a;

    .line 17
    iget-object v1, v1, Lq1$a;->c:Lq1;

    .line 19
    invoke-static {v1}, Lq1;->e(Lq1;)Lp1;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lt1;->o(Lp1;)V

    .line 26
    :cond_0
    return-void
.end method
