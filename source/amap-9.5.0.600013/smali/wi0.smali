.class public final Lwi0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B[Ljava/io/File;Lbr;)Lqc;
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-interface {p3}, Lbr;->K()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lab0;

    .line 13
    invoke-direct {v0, p1, p2, p3}, Lab0;-><init>([B[Ljava/io/File;Lbr;)V

    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Lw2;

    .line 19
    invoke-direct {v0, p1, p2, p3}, Lw2;-><init>([B[Ljava/io/File;Lbr;)V

    .line 22
    return-object v0
.end method
