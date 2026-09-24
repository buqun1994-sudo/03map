.class public Lcom/amap/location/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/b/a;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/amap/location/b/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/location/b/a$a;->a:Lcom/amap/location/b/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    .line 8
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/amap/location/b/a$a;->b:Lorg/json/JSONObject;

    .line 13
    return-void
.end method
