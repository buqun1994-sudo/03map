.class public Lxm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lxm;


# direct methods
.method public constructor <init>(Lxm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxm$b;->a:Lxm;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxm$b;->a:Lxm;

    .line 3
    invoke-virtual {v0}, Lxm;->e()V

    .line 6
    return-void
.end method
