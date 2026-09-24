.class public Lxb0$d;
.super Lxb0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxb0$f;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getSatellitePrnForShow(I)I
    .locals 1

    .line 1
    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/16 v0, 0xed

    if-gt p1, v0, :cond_0

    add-int/lit16 p1, p1, -0xc8

    :cond_0
    return p1
.end method
