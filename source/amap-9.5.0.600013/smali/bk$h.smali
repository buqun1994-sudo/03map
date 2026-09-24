.class public abstract Lbk$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static a:Lbk;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbk;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lbk;-><init>(Lbk$a;)V

    .line 7
    sput-object v0, Lbk$h;->a:Lbk;

    .line 9
    return-void
.end method

.method public static synthetic a()Lbk;
    .locals 1

    .line 1
    sget-object v0, Lbk$h;->a:Lbk;

    .line 3
    return-object v0
.end method
