.class public Ljq0$c;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d(ILcq0;)Z
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/16 v0, 0x12

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    invoke-virtual {p2, p1}, Lcq0;->p(I)Z

    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Ljq0$c;->b:Ljava/lang/String;

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Ljq0$c;->a:Ljava/lang/String;

    .line 27
    :goto_0
    return v1
.end method
