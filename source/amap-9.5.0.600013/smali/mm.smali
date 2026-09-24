.class public Lmm;
.super Lim;
.source "SourceFile"


# instance fields
.field public z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lim;-><init>(Landroid/content/Context;III)V

    .line 4
    iput-object p1, p0, Lmm;->z:Landroid/content/Context;

    .line 6
    iput p4, p0, Lge;->e:I

    .line 8
    return-void
.end method


# virtual methods
.method public t([I[I[I[I[ZIIZ)Z
    .locals 7

    .line 1
    const/4 p6, 0x0

    .line 2
    new-array p7, p6, [Ljava/lang/Object;

    .line 4
    const-string v0, "chz.d"

    .line 6
    const-string v1, "showDriveWayView"

    .line 8
    invoke-static {v0, v1, p7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    move-object v4, p4

    .line 16
    move-object v5, p5

    .line 17
    move v6, p8

    .line 18
    invoke-virtual/range {v0 .. v6}, Lge;->a([I[I[I[I[ZZ)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lge;->r()V

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    return p6
.end method
