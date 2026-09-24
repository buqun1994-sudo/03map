.class public abstract Lri$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lri;

    .line 3
    invoke-direct {v0}, Lri;-><init>()V

    .line 6
    sput-object v0, Lri$a;->a:Lri;

    .line 8
    return-void
.end method

.method public static synthetic a()Lri;
    .locals 1

    .line 1
    sget-object v0, Lri$a;->a:Lri;

    .line 3
    return-object v0
.end method
