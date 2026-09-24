.class public abstract Lcz$c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final a:Lcz$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcz$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcz$c;-><init>(Lcz$a;)V

    .line 7
    sput-object v0, Lcz$c$f;->a:Lcz$c;

    .line 9
    return-void
.end method

.method public static synthetic a()Lcz$c;
    .locals 1

    .line 1
    sget-object v0, Lcz$c$f;->a:Lcz$c;

    .line 3
    return-object v0
.end method
