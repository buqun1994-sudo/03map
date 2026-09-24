.class public Lnm$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm;->m(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnm;


# direct methods
.method public constructor <init>(Lnm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnm$d;->a:Lnm;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnm$d;->a:Lnm;

    .line 3
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lfc;->e()V

    .line 10
    return-void
.end method
