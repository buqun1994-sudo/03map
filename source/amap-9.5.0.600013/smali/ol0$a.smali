.class public Lol0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public getWavPlayer()Lzt;
    .locals 1

    .line 1
    new-instance v0, Ljb;

    .line 3
    invoke-direct {v0}, Ljb;-><init>()V

    .line 6
    return-object v0
.end method
