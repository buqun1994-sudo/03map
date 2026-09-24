.class public abstract Luq0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0xffff

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Luq0;->a:Ljava/lang/Integer;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Luq0;->b:Ljava/lang/Integer;

    .line 17
    sput-object v0, Luq0;->c:Ljava/lang/Integer;

    .line 19
    sput-object v1, Luq0;->d:Ljava/lang/Integer;

    .line 21
    return-void
.end method
