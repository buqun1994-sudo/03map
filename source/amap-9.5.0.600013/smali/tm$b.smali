.class public Ltm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltm;->d(Landroid/content/Context;Lsm;ILjava/util/concurrent/Executor;Lwd;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwd;


# direct methods
.method public constructor <init>(Lwd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltm$b;->a:Lwd;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ltm$e;

    .line 3
    invoke-virtual {p0, p1}, Ltm$b;->b(Ltm$e;)V

    .line 6
    return-void
.end method

.method public b(Ltm$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltm$b;->a:Lwd;

    .line 3
    invoke-virtual {v0, p1}, Lwd;->b(Ltm$e;)V

    .line 6
    return-void
.end method
