.class public abstract Lh6$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lh6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh6;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lh6;-><init>(Lh6$a;)V

    .line 7
    sput-object v0, Lh6$c;->a:Lh6;

    .line 9
    return-void
.end method

.method public static synthetic a()Lh6;
    .locals 1

    .line 1
    sget-object v0, Lh6$c;->a:Lh6;

    .line 3
    return-object v0
.end method
