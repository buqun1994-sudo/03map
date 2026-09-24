.class Lcom/amap/location/g/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/g;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/g$3;->a:Lcom/amap/location/g/g;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/g$3;->a:Lcom/amap/location/g/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/amap/location/g/g;->a(Lcom/amap/location/g/g;Z)Z

    .line 7
    iget-object v0, p0, Lcom/amap/location/g/g$3;->a:Lcom/amap/location/g/g;

    .line 9
    invoke-static {v0}, Lcom/amap/location/g/g;->e(Lcom/amap/location/g/g;)V

    .line 12
    const-string v0, "nlcontext"

    .line 14
    const-string v1, "cell scan timeout"

    .line 16
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
