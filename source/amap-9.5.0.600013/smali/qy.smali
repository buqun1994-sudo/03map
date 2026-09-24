.class public Lqy;
.super Lhc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqy$a;,
        Lqy$b;,
        Lqy$c;,
        Lqy$d;,
        Lqy$e;,
        Lqy$f;
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
.method public d()[[Lfq;
    .locals 1

    .line 1
    sget-object v0, Lry;->a:[[Lfq;

    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x6

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "LocationModuleFuncGroup"

    return-object v0
.end method
