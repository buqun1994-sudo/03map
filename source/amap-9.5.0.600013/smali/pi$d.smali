.class public abstract Lpi$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lpi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpi;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lpi;-><init>(Lpi$a;)V

    .line 7
    sput-object v0, Lpi$d;->a:Lpi;

    .line 9
    return-void
.end method

.method public static synthetic a()Lpi;
    .locals 1

    .line 1
    sget-object v0, Lpi$d;->a:Lpi;

    .line 3
    return-object v0
.end method
