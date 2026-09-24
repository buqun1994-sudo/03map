.class public Lf7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lf7;->a:I

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lf7;->d:I

    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lf7;->a:I

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lf7;->b:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lf7;->c:Ljava/lang/String;

    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lf7;->d:I

    .line 13
    return-void
.end method
