.class public abstract Ln70$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:Ln70;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln70;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ln70;-><init>(Ln70$a;)V

    .line 7
    sput-object v0, Ln70$c;->a:Ln70;

    .line 9
    return-void
.end method

.method public static synthetic a()Ln70;
    .locals 1

    .line 1
    sget-object v0, Ln70$c;->a:Ln70;

    .line 3
    return-object v0
.end method
