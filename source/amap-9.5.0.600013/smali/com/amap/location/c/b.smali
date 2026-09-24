.class public Lcom/amap/location/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/c/b$c;,
        Lcom/amap/location/c/b$b;,
        Lcom/amap/location/c/b$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = true


# instance fields
.field private c:Z

.field private final d:Lcom/amap/location/c/b$a;

.field private final e:Lcom/amap/location/c/b$b;

.field private final f:Lcom/amap/location/c/b$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/c/b;->c:Z

    .line 7
    new-instance v0, Lcom/amap/location/c/b$a;

    .line 9
    invoke-direct {v0}, Lcom/amap/location/c/b$a;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/amap/location/c/b;->d:Lcom/amap/location/c/b$a;

    .line 14
    new-instance v0, Lcom/amap/location/c/b$b;

    .line 16
    invoke-direct {v0}, Lcom/amap/location/c/b$b;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/amap/location/c/b;->e:Lcom/amap/location/c/b$b;

    .line 21
    new-instance v0, Lcom/amap/location/c/b$c;

    .line 23
    invoke-direct {v0}, Lcom/amap/location/c/b$c;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/amap/location/c/b;->f:Lcom/amap/location/c/b$c;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/amap/location/c/b;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/c/b;->c:Z

    return v0
.end method

.method public b()Lcom/amap/location/c/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/c/b;->d:Lcom/amap/location/c/b$a;

    .line 3
    return-object v0
.end method

.method public c()Lcom/amap/location/c/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/c/b;->e:Lcom/amap/location/c/b$b;

    .line 3
    return-object v0
.end method

.method public d()Lcom/amap/location/c/b$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/c/b;->f:Lcom/amap/location/c/b$c;

    .line 3
    return-object v0
.end method
