.class public Lcz$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz$c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcz$c;


# direct methods
.method public constructor <init>(Lcz$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcz$c$a;->a:Lcz$c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p1, p2, p3}, Lcz;->f(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
