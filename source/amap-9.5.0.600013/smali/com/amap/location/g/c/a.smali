.class public Lcom/amap/location/g/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/g/c/a$b;,
        Lcom/amap/location/g/c/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/location/g/c/a$a;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/handler/AmapLooper;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/g/c/a$b;

    .line 6
    invoke-direct {v0, p1, p2}, Lcom/amap/location/g/c/a$b;-><init>(Lcom/amap/location/support/handler/AmapLooper;Ljava/lang/Runnable;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/g/c/a;->a:Lcom/amap/location/g/c/a$a;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/location/g/c/a;->a:Lcom/amap/location/g/c/a$a;

    invoke-virtual {v0}, Lcom/amap/location/g/c/a$a;->a()V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/c/a;->a:Lcom/amap/location/g/c/a$a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/location/g/c/a$a;->a(J)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/c/a;->a:Lcom/amap/location/g/c/a$a;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/g/c/a$a;->b()V

    .line 6
    return-void
.end method
