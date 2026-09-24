.class public Loz;
.super Lhc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loz$d;,
        Loz$b;,
        Loz$a;,
        Loz$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhc;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(I)Lfq;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lhc;->a(I)Lfq;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d()[[Lfq;
    .locals 1

    .line 1
    sget-object v0, Lpz;->a:[[Lfq;

    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MainModuleFuncGroup"

    return-object v0
.end method
