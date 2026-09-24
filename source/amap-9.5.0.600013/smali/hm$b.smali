.class public abstract Lhm$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lhm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhm;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhm;-><init>(Lhm$a;)V

    .line 7
    sput-object v0, Lhm$b;->a:Lhm;

    .line 9
    return-void
.end method

.method public static synthetic a()Lhm;
    .locals 1

    .line 1
    sget-object v0, Lhm$b;->a:Lhm;

    .line 3
    return-object v0
.end method
