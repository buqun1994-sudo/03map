.class public Lvp0$a;
.super Lvp0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static f:Lvp0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvp0$a;

    .line 3
    invoke-direct {v0}, Lvp0$a;-><init>()V

    .line 6
    sput-object v0, Lvp0$a;->f:Lvp0$a;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvp0;-><init>()V

    .line 4
    return-void
.end method

.method public static h()Lvp0$a;
    .locals 1

    .line 1
    sget-object v0, Lvp0$a;->f:Lvp0$a;

    .line 3
    return-object v0
.end method


# virtual methods
.method public c()Lvq0;
    .locals 1

    .line 1
    sget-object v0, Lvq0;->c:Lvq0;

    .line 3
    return-object v0
.end method

.method public e()Lzq0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
