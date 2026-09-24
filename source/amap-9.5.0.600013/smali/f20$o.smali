.class public final Lf20$o;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field public final a:Lf20$n$d;


# direct methods
.method public constructor <init>(Lf20$n$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lf20$o;->a:Lf20$n$d;

    return-void
.end method

.method public constructor <init>(Lf20$n$d;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lf20$o;->a:Lf20$n$d;

    return-void
.end method


# virtual methods
.method public a()Lf20$n$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf20$o;->a:Lf20$n$d;

    .line 3
    return-object v0
.end method
