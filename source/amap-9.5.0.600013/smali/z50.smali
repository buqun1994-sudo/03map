.class public Lz50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lz50;

.field public b:Lz50;

.field public c:Lz50;

.field public d:I

.field public e:J

.field public f:I

.field public g:Lmb0;


# direct methods
.method public constructor <init>(Lmb0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lz50;->a:Lz50;

    .line 7
    iput-object v0, p0, Lz50;->b:Lz50;

    .line 9
    iput-object v0, p0, Lz50;->c:Lz50;

    .line 11
    iput-object p1, p0, Lz50;->g:Lmb0;

    .line 13
    invoke-virtual {p1}, Lmb0;->k()J

    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lz50;->e:J

    .line 19
    invoke-virtual {p1}, Lmb0;->i()I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lz50;->f:I

    .line 25
    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lz50;->d:I

    .line 28
    return-void
.end method
