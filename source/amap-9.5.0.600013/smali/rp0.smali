.class public Lrp0;
.super Lwq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrp0$b;,
        Lrp0$a;
    }
.end annotation


# instance fields
.field public c:Lrp0$a;

.field public d:Lrp0$b;

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lwq0;-><init>()V

    .line 4
    new-instance v0, Lrp0$a;

    .line 6
    invoke-direct {v0}, Lrp0$a;-><init>()V

    .line 9
    iput-object v0, p0, Lrp0;->c:Lrp0$a;

    .line 11
    new-instance v0, Lrp0$b;

    .line 13
    invoke-direct {v0}, Lrp0$b;-><init>()V

    .line 16
    iput-object v0, p0, Lrp0;->d:Lrp0$b;

    .line 18
    return-void
.end method


# virtual methods
.method public c(Lrp0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrp0;->c:Lrp0$a;

    .line 3
    return-void
.end method

.method public d(Lrp0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrp0;->d:Lrp0$b;

    .line 3
    return-void
.end method

.method public e([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrp0;->e:[B

    .line 3
    return-void
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lrp0;->e:[B

    .line 3
    return-object v0
.end method
