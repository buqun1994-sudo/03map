.class public Lv20;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lv20;


# instance fields
.field public a:Li20;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lv20;
    .locals 1

    .line 1
    sget-object v0, Lv20;->b:Lv20;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lv20;

    .line 7
    invoke-direct {v0}, Lv20;-><init>()V

    .line 10
    sput-object v0, Lv20;->b:Lv20;

    .line 12
    :cond_0
    sget-object v0, Lv20;->b:Lv20;

    .line 14
    return-object v0
.end method


# virtual methods
.method public b()Li20;
    .locals 1

    .line 1
    iget-object v0, p0, Lv20;->a:Li20;

    .line 3
    return-object v0
.end method

.method public c(Li20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv20;->a:Li20;

    .line 3
    return-void
.end method
