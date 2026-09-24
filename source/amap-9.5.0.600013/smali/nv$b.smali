.class public abstract Lnv$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lnv;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnv;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnv;-><init>(Lnv$a;)V

    .line 7
    sput-object v0, Lnv$b;->a:Lnv;

    .line 9
    return-void
.end method

.method public static synthetic a()Lnv;
    .locals 1

    .line 1
    sget-object v0, Lnv$b;->a:Lnv;

    .line 3
    return-object v0
.end method
