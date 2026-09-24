.class Lcom/amap/location/c/g/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/db/OnInitDbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/c/g/a/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/g/a/d;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/g/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 3
    invoke-static {v0}, Lcom/amap/location/c/g/a/d;->a(Lcom/amap/location/c/g/a/d;)V

    .line 6
    return-void
.end method

.method public onDowngrade(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 3
    invoke-static {p1}, Lcom/amap/location/c/g/a/d;->b(Lcom/amap/location/c/g/a/d;)Lcom/amap/location/support/db/IDbHelper;

    .line 6
    move-result-object p1

    .line 7
    const-string p2, "base"

    .line 9
    invoke-interface {p1, p2}, Lcom/amap/location/support/db/IDbHelper;->dropTable(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 14
    invoke-static {p1}, Lcom/amap/location/c/g/a/d;->a(Lcom/amap/location/c/g/a/d;)V

    .line 17
    return-void
.end method

.method public onUpgrade(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 3
    invoke-static {p1}, Lcom/amap/location/c/g/a/d;->b(Lcom/amap/location/c/g/a/d;)Lcom/amap/location/support/db/IDbHelper;

    .line 6
    move-result-object p1

    .line 7
    const-string p2, "base"

    .line 9
    invoke-interface {p1, p2}, Lcom/amap/location/support/db/IDbHelper;->dropTable(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 14
    invoke-static {p1}, Lcom/amap/location/c/g/a/d;->b(Lcom/amap/location/c/g/a/d;)Lcom/amap/location/support/db/IDbHelper;

    .line 17
    move-result-object p1

    .line 18
    const-string p2, "byte_base"

    .line 20
    invoke-interface {p1, p2}, Lcom/amap/location/support/db/IDbHelper;->dropTable(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 25
    invoke-static {p1}, Lcom/amap/location/c/g/a/d;->b(Lcom/amap/location/c/g/a/d;)Lcom/amap/location/support/db/IDbHelper;

    .line 28
    move-result-object p1

    .line 29
    const-string p2, "extend"

    .line 31
    invoke-interface {p1, p2}, Lcom/amap/location/support/db/IDbHelper;->dropTable(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/amap/location/c/g/a/d$1;->a:Lcom/amap/location/c/g/a/d;

    .line 36
    invoke-static {p1}, Lcom/amap/location/c/g/a/d;->a(Lcom/amap/location/c/g/a/d;)V

    .line 39
    return-void
.end method
