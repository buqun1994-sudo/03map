.class public abstract La7$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:La7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, La7;-><init>(La7$a;)V

    .line 7
    sput-object v0, La7$d;->a:La7;

    .line 9
    return-void
.end method

.method public static synthetic a()La7;
    .locals 1

    .line 1
    sget-object v0, La7$d;->a:La7;

    .line 3
    return-object v0
.end method
