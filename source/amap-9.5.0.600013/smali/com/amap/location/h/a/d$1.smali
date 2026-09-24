.class Lcom/amap/location/h/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/db/OnInitDbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/h/a/d;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/h/a/d;


# direct methods
.method public constructor <init>(Lcom/amap/location/h/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/h/a/d$1;->a:Lcom/amap/location/h/a/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/h/a/d$1;->a:Lcom/amap/location/h/a/d;

    .line 3
    invoke-static {v0}, Lcom/amap/location/h/a/d;->a(Lcom/amap/location/h/a/d;)V

    .line 6
    return-void
.end method

.method public onDowngrade(II)V
    .locals 0

    return-void
.end method

.method public onUpgrade(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/location/h/a/d$1;->a:Lcom/amap/location/h/a/d;

    .line 3
    invoke-static {p1}, Lcom/amap/location/h/a/d;->b(Lcom/amap/location/h/a/d;)Lcom/amap/location/support/db/IDbHelper;

    .line 6
    move-result-object p1

    .line 7
    const-string p2, "cache"

    .line 9
    invoke-interface {p1, p2}, Lcom/amap/location/support/db/IDbHelper;->dropTable(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/amap/location/h/a/d$1;->a:Lcom/amap/location/h/a/d;

    .line 14
    invoke-static {p1}, Lcom/amap/location/h/a/d;->a(Lcom/amap/location/h/a/d;)V

    .line 17
    return-void
.end method
