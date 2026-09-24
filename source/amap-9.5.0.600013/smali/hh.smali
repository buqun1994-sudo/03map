.class public Lhh;
.super Lnk;
.source "SourceFile"


# instance fields
.field public z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnk;-><init>(Landroid/content/Context;II)V

    .line 4
    iput-object p1, p0, Lhh;->z:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public t([I[I[I[ZIIZ)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "chz.d"

    .line 6
    const-string v3, "showDriveWayView"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v4, p0

    .line 13
    move-object v5, p1

    .line 14
    move-object v6, p2

    .line 15
    move-object v8, p3

    .line 16
    move-object v9, p4

    .line 17
    move/from16 v10, p7

    .line 19
    invoke-virtual/range {v4 .. v10}, Lge;->a([I[I[I[I[ZZ)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lge;->r()V

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_0
    const-string v1, "showDriveWayView \u5b58\u5728\u7a7a\u8f66\u9053\u7ebf"

    .line 32
    new-array v3, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v0
.end method
