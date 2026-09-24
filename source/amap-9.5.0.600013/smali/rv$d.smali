.class public abstract Lrv$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lrv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrv;

    .line 3
    invoke-direct {v0}, Lrv;-><init>()V

    .line 6
    sput-object v0, Lrv$d;->a:Lrv;

    .line 8
    return-void
.end method

.method public static synthetic a()Lrv;
    .locals 1

    .line 1
    sget-object v0, Lrv$d;->a:Lrv;

    .line 3
    return-object v0
.end method
