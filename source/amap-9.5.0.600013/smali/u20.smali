.class public Lu20;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lu20;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lu20;
    .locals 1

    .line 1
    sget-object v0, Lu20;->a:Lu20;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lu20;

    .line 7
    invoke-direct {v0}, Lu20;-><init>()V

    .line 10
    sput-object v0, Lu20;->a:Lu20;

    .line 12
    :cond_0
    sget-object v0, Lu20;->a:Lu20;

    .line 14
    return-object v0
.end method
