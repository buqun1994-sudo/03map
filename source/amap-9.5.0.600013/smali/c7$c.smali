.class public abstract Lc7$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:Lc7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc7;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lc7;-><init>(Lc7$a;)V

    .line 7
    sput-object v0, Lc7$c;->a:Lc7;

    .line 9
    return-void
.end method

.method public static synthetic a()Lc7;
    .locals 1

    .line 1
    sget-object v0, Lc7$c;->a:Lc7;

    .line 3
    return-object v0
.end method
