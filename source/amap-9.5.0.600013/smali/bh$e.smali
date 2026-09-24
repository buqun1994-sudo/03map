.class public Lbh$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final synthetic f:Lbh;


# direct methods
.method public constructor <init>(Lbh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbh$e;->f:Lbh;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string p1, ""

    .line 8
    iput-object p1, p0, Lbh$e;->a:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lbh$e;->b:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lbh$e;->c:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lbh$e;->d:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lbh$e;->e:Ljava/lang/String;

    .line 18
    return-void
.end method
