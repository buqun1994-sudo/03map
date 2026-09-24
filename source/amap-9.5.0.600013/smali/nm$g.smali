.class public abstract Lnm$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final a:Lnm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnm;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnm;-><init>(Lnm$a;)V

    .line 7
    sput-object v0, Lnm$g;->a:Lnm;

    .line 9
    return-void
.end method

.method public static synthetic a()Lnm;
    .locals 1

    .line 1
    sget-object v0, Lnm$g;->a:Lnm;

    .line 3
    return-object v0
.end method
