.class public Li80$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li80;->b()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li80;


# direct methods
.method public constructor <init>(Li80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li80$a;->a:Li80;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/iflytek/bean/Poi;Lcom/autonavi/iflytek/bean/Poi;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->v()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Lcom/autonavi/iflytek/bean/Poi;->v()I

    .line 8
    move-result p2

    .line 9
    sub-int/2addr p1, p2

    .line 10
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/iflytek/bean/Poi;

    .line 3
    check-cast p2, Lcom/autonavi/iflytek/bean/Poi;

    .line 5
    invoke-virtual {p0, p1, p2}, Li80$a;->a(Lcom/autonavi/iflytek/bean/Poi;Lcom/autonavi/iflytek/bean/Poi;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
