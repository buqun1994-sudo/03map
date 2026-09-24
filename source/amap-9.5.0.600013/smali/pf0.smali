.class public Lpf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpf0;->b:[B

    .line 3
    return-object v0
.end method

.method public b([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpf0;->b:[B

    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpf0;->a:Ljava/lang/String;

    .line 3
    return-void
.end method
