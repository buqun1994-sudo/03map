.class public abstract La20$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:La20;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La20;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, La20;-><init>(La20$a;)V

    .line 7
    sput-object v0, La20$c;->a:La20;

    .line 9
    return-void
.end method

.method public static synthetic a()La20;
    .locals 1

    .line 1
    sget-object v0, La20$c;->a:La20;

    .line 3
    return-object v0
.end method
