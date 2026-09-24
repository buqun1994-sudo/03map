.class public Lnm$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnm$e;


# direct methods
.method public constructor <init>(Lnm$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnm$e$a;->a:Lnm$e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnm$e$a;->a:Lnm$e;

    .line 3
    iget-object v0, v0, Lnm$e;->b:Lnm;

    .line 5
    invoke-virtual {v0}, Lnm;->t()V

    .line 8
    return-void
.end method
