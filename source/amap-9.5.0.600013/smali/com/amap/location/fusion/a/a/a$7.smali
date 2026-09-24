.class Lcom/amap/location/fusion/a/a/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$7;->a:Lcom/amap/location/fusion/a/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const v0, 0x1ae17

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$7;->a:Lcom/amap/location/fusion/a/a/a;

    .line 10
    invoke-static {v0}, Lcom/amap/location/fusion/a/a/a;->i(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/util/c;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/amap/location/fusion/util/c;->a()V

    .line 17
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$7;->a:Lcom/amap/location/fusion/a/a/a;

    .line 19
    invoke-static {v0}, Lcom/amap/location/fusion/a/a/a;->j(Lcom/amap/location/fusion/a/a/a;)V

    .line 22
    return-void
.end method
