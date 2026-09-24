.class public abstract Lug$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lug;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lug;

    .line 3
    invoke-direct {v0}, Lug;-><init>()V

    .line 6
    sput-object v0, Lug$a;->a:Lug;

    .line 8
    return-void
.end method

.method public static synthetic a()Lug;
    .locals 1

    .line 1
    sget-object v0, Lug$a;->a:Lug;

    .line 3
    return-object v0
.end method
