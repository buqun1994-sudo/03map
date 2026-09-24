.class public Ljl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljl;


# direct methods
.method public constructor <init>(Ljl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljl$b;->a:Ljl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AidlConsole connected "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ExternalConsole"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Ljl$b;->a:Ljl;

    .line 27
    new-instance v0, Lhi;

    .line 29
    invoke-direct {v0}, Lhi;-><init>()V

    .line 32
    invoke-static {p1, v0}, Ljl;->d(Ljl;Lzq;)Lzq;

    .line 35
    :cond_0
    return-void
.end method
