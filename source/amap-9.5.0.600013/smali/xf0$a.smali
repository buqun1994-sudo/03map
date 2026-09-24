.class public Lxf0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxf0;->n()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxf0$a;->a:Ljava/util/Map;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "excCallables before threadMaps.putAll"

    .line 3
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lxf0$a;->a:Ljava/util/Map;

    .line 8
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    const-string v0, "excCallables after threadMaps.putAll"

    .line 17
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method
