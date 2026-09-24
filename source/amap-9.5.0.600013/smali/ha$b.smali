.class public abstract Lha$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lha;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lha;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lha;-><init>(Lha$a;)V

    .line 7
    sput-object v0, Lha$b;->a:Lha;

    .line 9
    return-void
.end method

.method public static synthetic a()Lha;
    .locals 1

    .line 1
    sget-object v0, Lha$b;->a:Lha;

    .line 3
    return-object v0
.end method
