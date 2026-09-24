.class public Lpj0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static x:Lpj0;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lpj0;->a:Z

    .line 7
    iput-boolean v0, p0, Lpj0;->b:Z

    .line 9
    iput-boolean v0, p0, Lpj0;->c:Z

    .line 11
    iput-boolean v0, p0, Lpj0;->d:Z

    .line 13
    iput-boolean v0, p0, Lpj0;->e:Z

    .line 15
    iput-boolean v0, p0, Lpj0;->f:Z

    .line 17
    iput-boolean v0, p0, Lpj0;->g:Z

    .line 19
    iput-boolean v0, p0, Lpj0;->h:Z

    .line 21
    iput-boolean v0, p0, Lpj0;->i:Z

    .line 23
    iput-boolean v0, p0, Lpj0;->j:Z

    .line 25
    iput-boolean v0, p0, Lpj0;->k:Z

    .line 27
    iput-boolean v0, p0, Lpj0;->l:Z

    .line 29
    iput-boolean v0, p0, Lpj0;->m:Z

    .line 31
    iput-boolean v0, p0, Lpj0;->n:Z

    .line 33
    iput-boolean v0, p0, Lpj0;->o:Z

    .line 35
    iput-boolean v0, p0, Lpj0;->p:Z

    .line 37
    iput-boolean v0, p0, Lpj0;->q:Z

    .line 39
    iput-boolean v0, p0, Lpj0;->r:Z

    .line 41
    iput-boolean v0, p0, Lpj0;->s:Z

    .line 43
    iput-boolean v0, p0, Lpj0;->t:Z

    .line 45
    iput-boolean v0, p0, Lpj0;->u:Z

    .line 47
    iput-boolean v0, p0, Lpj0;->v:Z

    .line 49
    iput-boolean v0, p0, Lpj0;->w:Z

    .line 51
    return-void
.end method

.method public static a()Lpj0;
    .locals 1

    .line 1
    sget-object v0, Lpj0;->x:Lpj0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lpj0;

    .line 7
    invoke-direct {v0}, Lpj0;-><init>()V

    .line 10
    sput-object v0, Lpj0;->x:Lpj0;

    .line 12
    :cond_0
    sget-object v0, Lpj0;->x:Lpj0;

    .line 14
    return-object v0
.end method
