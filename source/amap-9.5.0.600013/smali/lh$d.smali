.class public Llh$d;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    .line 4
    iput-object p1, p0, Llh$d;->a:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 1

    .line 1
    iget-object v0, p0, Llh$d;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
