.class public abstract Lzx$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static a:Lzx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzx;

    .line 3
    invoke-direct {v0}, Lzx;-><init>()V

    .line 6
    sput-object v0, Lzx$e;->a:Lzx;

    .line 8
    return-void
.end method

.method public static synthetic a()Lzx;
    .locals 1

    .line 1
    sget-object v0, Lzx$e;->a:Lzx;

    .line 3
    return-object v0
.end method
