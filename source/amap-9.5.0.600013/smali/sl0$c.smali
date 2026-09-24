.class public abstract Lsl0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lsl0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsl0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lsl0;-><init>(Lsl0$a;)V

    .line 7
    sput-object v0, Lsl0$c;->a:Lsl0;

    .line 9
    return-void
.end method

.method public static synthetic a()Lsl0;
    .locals 1

    .line 1
    sget-object v0, Lsl0$c;->a:Lsl0;

    .line 3
    return-object v0
.end method
