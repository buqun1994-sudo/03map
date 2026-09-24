.class public abstract Lvk0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbk0;->d:Lbk0;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    sput v0, Lvk0;->a:I

    .line 9
    sget-object v0, Lyj0;->b:Lyj0;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v0

    .line 15
    sput v0, Lvk0;->b:I

    .line 17
    return-void
.end method
