.class public abstract Ljl$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Ljl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljl;

    .line 3
    invoke-direct {v0}, Ljl;-><init>()V

    .line 6
    sput-object v0, Ljl$c;->a:Ljl;

    .line 8
    return-void
.end method

.method public static synthetic a()Ljl;
    .locals 1

    .line 1
    sget-object v0, Ljl$c;->a:Ljl;

    .line 3
    return-object v0
.end method
