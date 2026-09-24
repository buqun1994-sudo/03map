.class public abstract Lxa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lxa;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxa;

    .line 3
    invoke-direct {v0}, Lxa;-><init>()V

    .line 6
    sput-object v0, Lxa$a;->a:Lxa;

    .line 8
    return-void
.end method

.method public static synthetic a()Lxa;
    .locals 1

    .line 1
    sget-object v0, Lxa$a;->a:Lxa;

    .line 3
    return-object v0
.end method
