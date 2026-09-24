.class public Lt1$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1$a;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt1$a;


# direct methods
.method public constructor <init>(Lt1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt1$a$b;->a:Lt1$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt1$a$b;->a:Lt1$a;

    .line 3
    iget-object v0, v0, Lt1$a;->c:Lt1;

    .line 5
    invoke-static {v0}, Lt1;->e(Lt1;)Lp1;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lp1;->m()V

    .line 12
    return-void
.end method
