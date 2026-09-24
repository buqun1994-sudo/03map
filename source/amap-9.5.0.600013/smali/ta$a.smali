.class public abstract Lta$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lta;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lta;

    .line 3
    invoke-direct {v0}, Lta;-><init>()V

    .line 6
    sput-object v0, Lta$a;->a:Lta;

    .line 8
    return-void
.end method

.method public static synthetic a()Lta;
    .locals 1

    .line 1
    sget-object v0, Lta$a;->a:Lta;

    .line 3
    return-object v0
.end method
