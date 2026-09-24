.class public abstract Lo6$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final a:Lo6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo6;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo6;-><init>(Lo6$a;)V

    .line 7
    sput-object v0, Lo6$f;->a:Lo6;

    .line 9
    return-void
.end method

.method public static synthetic a()Lo6;
    .locals 1

    .line 1
    sget-object v0, Lo6$f;->a:Lo6;

    .line 3
    return-object v0
.end method
