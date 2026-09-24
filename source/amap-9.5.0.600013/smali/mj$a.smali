.class public abstract Lmj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lmj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmj;

    .line 3
    invoke-direct {v0}, Lmj;-><init>()V

    .line 6
    sput-object v0, Lmj$a;->a:Lmj;

    .line 8
    return-void
.end method

.method public static synthetic a()Lmj;
    .locals 1

    .line 1
    sget-object v0, Lmj$a;->a:Lmj;

    .line 3
    return-object v0
.end method
