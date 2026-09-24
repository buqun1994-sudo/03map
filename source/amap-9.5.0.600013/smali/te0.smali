.class public abstract Lte0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static volatile b:I = 0x1

.field public static volatile c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Lte0;->b:I

    .line 3
    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lte0;->a:Z

    .line 3
    return v0
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lte0;->c:Z

    .line 3
    return v0
.end method

.method public static d(I)V
    .locals 0

    .line 1
    sput p0, Lte0;->b:I

    .line 3
    return-void
.end method

.method public static e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lte0;->a:Z

    .line 3
    return-void
.end method

.method public static f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lte0;->c:Z

    .line 3
    return-void
.end method
