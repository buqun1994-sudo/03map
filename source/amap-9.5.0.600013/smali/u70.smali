.class public abstract Lu70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x186a0


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Lzs;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()I
    .locals 2

    .line 1
    sget v0, Lu70;->a:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    sput v1, Lu70;->a:I

    .line 7
    return v0
.end method
