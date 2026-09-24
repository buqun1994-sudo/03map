.class Lcom/amap/location/i/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/i/a/a;->a(Lcom/amap/location/support/bean/AmapFps;IZ)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/i/a/a/a;

.field final synthetic b:Lcom/amap/location/i/a/a/c;

.field final synthetic c:Lcom/amap/location/i/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/i/a/a;Lcom/amap/location/i/a/a/a;Lcom/amap/location/i/a/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/i/a/a$2;->c:Lcom/amap/location/i/a/a;

    .line 3
    iput-object p2, p0, Lcom/amap/location/i/a/a$2;->a:Lcom/amap/location/i/a/a/a;

    .line 5
    iput-object p3, p0, Lcom/amap/location/i/a/a$2;->b:Lcom/amap/location/i/a/a/c;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/i/a/a$2;->c:Lcom/amap/location/i/a/a;

    .line 3
    iget-object v1, p0, Lcom/amap/location/i/a/a$2;->a:Lcom/amap/location/i/a/a/a;

    .line 5
    iget-object v2, p0, Lcom/amap/location/i/a/a$2;->b:Lcom/amap/location/i/a/a/c;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/amap/location/i/a/a;->a(Lcom/amap/location/i/a/a;Lcom/amap/location/i/a/a/a;Lcom/amap/location/i/a/a/c;)V

    .line 10
    return-void
.end method
