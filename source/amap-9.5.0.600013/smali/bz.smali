.class public abstract Lbz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0}, Lbz;->b(ILjava/lang/String;)V

    .line 5
    return-void
.end method

.method public static b(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "DumpCrash"

    .line 3
    invoke-static {p0, v0, p1}, Lbz;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lbz;->a:I

    .line 10
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 19
    const-string p1, "DumpCrash"

    .line 21
    :cond_2
    sget v0, Lbz;->a:I

    .line 23
    and-int/2addr p0, v0

    .line 24
    if-lez p0, :cond_3

    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_3
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0x8000

    .line 4
    invoke-static {v0, p0}, Lbz;->b(ILjava/lang/String;)V

    .line 7
    return-void
.end method

.method public static e(I)V
    .locals 1

    .line 1
    sget v0, Lbz;->a:I

    .line 3
    or-int/2addr p0, v0

    .line 4
    sput p0, Lbz;->a:I

    .line 6
    return-void
.end method
