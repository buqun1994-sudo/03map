.class public Lud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lp60;

.field public b:Lp60;

.field public c:Lp60;

.field public d:[Lle0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lq60;

    .line 6
    const/16 v1, 0x100

    .line 8
    invoke-direct {v0, v1}, Lq60;-><init>(I)V

    .line 11
    iput-object v0, p0, Lud;->a:Lp60;

    .line 13
    new-instance v0, Lq60;

    .line 15
    invoke-direct {v0, v1}, Lq60;-><init>(I)V

    .line 18
    iput-object v0, p0, Lud;->b:Lp60;

    .line 20
    new-instance v0, Lq60;

    .line 22
    invoke-direct {v0, v1}, Lq60;-><init>(I)V

    .line 25
    iput-object v0, p0, Lud;->c:Lp60;

    .line 27
    const/16 v0, 0x20

    .line 29
    new-array v0, v0, [Lle0;

    .line 31
    iput-object v0, p0, Lud;->d:[Lle0;

    .line 33
    return-void
.end method
