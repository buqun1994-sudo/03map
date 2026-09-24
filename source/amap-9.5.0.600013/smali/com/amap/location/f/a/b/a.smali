.class public Lcom/amap/location/f/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/amap/location/support/db/IDbHelper;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS LCL ( id LONG PRIMARY KEY, main INTEGER, lat INTEGER, lng INTEGER, acc INTEGER, conf INTEGER, nb VARCHAR, timestamp LONG, frequency INTEGER DEFAULT 0);"

    .line 3
    invoke-interface {p0, v0}, Lcom/amap/location/support/db/IDbHelper;->createTable(Ljava/lang/String;)V

    .line 6
    return-void
.end method
