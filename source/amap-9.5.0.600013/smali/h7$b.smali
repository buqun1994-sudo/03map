.class public abstract Lh7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lh7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh7;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lh7;-><init>(Lh7$a;)V

    .line 7
    sput-object v0, Lh7$b;->a:Lh7;

    .line 9
    return-void
.end method

.method public static synthetic a()Lh7;
    .locals 1

    .line 1
    sget-object v0, Lh7$b;->a:Lh7;

    .line 3
    return-object v0
.end method
