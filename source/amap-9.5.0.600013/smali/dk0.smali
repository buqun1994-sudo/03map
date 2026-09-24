.class public Ldk0;
.super Lhc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldk0$b;,
        Ldk0$a;,
        Ldk0$c;
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
    sget-object v0, Lek0;->a:[[Lfq;

    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "VehicleModuleFuncGroup"

    return-object v0
.end method
