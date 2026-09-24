.class public abstract Lla$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static a:Lla;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lla;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lla;-><init>(Lla$a;)V

    .line 7
    sput-object v0, Lla$d;->a:Lla;

    .line 9
    return-void
.end method

.method public static synthetic a()Lla;
    .locals 1

    .line 1
    sget-object v0, Lla$d;->a:Lla;

    .line 3
    return-object v0
.end method
