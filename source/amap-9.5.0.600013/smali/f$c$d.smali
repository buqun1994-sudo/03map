.class public abstract Lf$c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lf$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lf$c;-><init>(Lf$a;)V

    .line 7
    sput-object v0, Lf$c$d;->a:Lf$c;

    .line 9
    return-void
.end method

.method public static synthetic a()Lf$c;
    .locals 1

    .line 1
    sget-object v0, Lf$c$d;->a:Lf$c;

    .line 3
    return-object v0
.end method
