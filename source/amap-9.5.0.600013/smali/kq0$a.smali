.class public abstract Lkq0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lkq0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkq0;

    .line 3
    invoke-direct {v0}, Lkq0;-><init>()V

    .line 6
    sput-object v0, Lkq0$a;->a:Lkq0;

    .line 8
    return-void
.end method

.method public static synthetic a()Lkq0;
    .locals 1

    .line 1
    sget-object v0, Lkq0$a;->a:Lkq0;

    .line 3
    return-object v0
.end method
