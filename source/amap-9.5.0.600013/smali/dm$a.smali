.class public Ldm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ldm$a;->a:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ldm$a;->c:Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Ldm$a;->b:J

    .line 16
    return-void
.end method

.method public static synthetic a(Ldm$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ldm$a;->a:I

    .line 3
    return p0
.end method

.method public static synthetic b(Ldm$a;I)I
    .locals 0

    .line 1
    iput p1, p0, Ldm$a;->a:I

    .line 3
    return p1
.end method

.method public static synthetic c(Ldm$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ldm$a;->b:J

    .line 3
    return-wide v0
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldm$a;->c:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Ldm$a;->a:I

    .line 3
    return v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldm$a;->c:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ldm$a;->b:J

    .line 3
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Ldm$a;->a:I

    .line 3
    return-void
.end method
