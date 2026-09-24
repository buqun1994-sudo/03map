.class public Lvm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lvm;->a:I

    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lvm;->a:I

    .line 3
    shr-int/lit8 v0, v0, 0x18

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 7
    return v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lvm;->a:I

    .line 3
    const v1, 0xffff

    .line 6
    and-int/2addr v0, v1

    .line 7
    return v0
.end method
