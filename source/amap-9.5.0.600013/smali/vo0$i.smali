.class public Lvo0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$i;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDataReport(I[BILjava/lang/String;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 3
    if-lez p3, :cond_0

    .line 5
    iget-object v0, p0, Lvo0$i;->a:Lvo0;

    .line 7
    new-instance v7, Lvo0$i$a;

    .line 9
    move-object v1, v7

    .line 10
    move-object v2, p0

    .line 11
    move v3, p1

    .line 12
    move-object v4, p2

    .line 13
    move v5, p3

    .line 14
    move-object v6, p4

    .line 15
    invoke-direct/range {v1 .. v6}, Lvo0$i$a;-><init>(Lvo0$i;I[BILjava/lang/String;)V

    .line 18
    invoke-static {v0, v7}, Lvo0;->x(Lvo0;Ljava/lang/Runnable;)V

    .line 21
    iget-object p4, p0, Lvo0$i;->a:Lvo0;

    .line 23
    invoke-static {p4}, Lvo0;->Z(Lvo0;)I

    .line 26
    move-result p4

    .line 27
    const/4 v0, 0x1

    .line 28
    if-le p4, v0, :cond_0

    .line 30
    iget-object p4, p0, Lvo0$i;->a:Lvo0;

    .line 32
    invoke-static {p4}, Lvo0;->a0(Lvo0;)Lgw0;

    .line 35
    move-result-object p4

    .line 36
    invoke-virtual {p4, p1, p2, p3}, Lgw0;->b(I[BI)V

    .line 39
    :cond_0
    return-void
.end method
