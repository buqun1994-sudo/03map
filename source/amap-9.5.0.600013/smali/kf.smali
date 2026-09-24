.class public Lkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpr;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "10.255.255.106"

    .line 6
    iput-object v0, p0, Lkf;->a:Ljava/lang/String;

    .line 8
    const/16 v0, 0x2342

    .line 10
    iput v0, p0, Lkf;->b:I

    .line 12
    const/16 v0, 0x404

    .line 14
    iput v0, p0, Lkf;->c:I

    .line 16
    const-string v0, "239.192.0.1"

    .line 18
    iput-object v0, p0, Lkf;->d:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lkf;->c:I

    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lkf;->b:I

    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkf;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method
