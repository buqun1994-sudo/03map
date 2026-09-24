.class public Lkw;
.super Lq70;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq70;-><init>(Z)V

    .line 4
    const-string p1, "JsonProtocolAssert"

    .line 6
    iput-object p1, p0, Lq70;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lr;->c()V

    .line 11
    return-void
.end method
