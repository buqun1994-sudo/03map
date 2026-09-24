.class public Lm2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lm2$b;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lm2$b;->b:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lm2$b;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lm2$b;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lm2$b;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lm2$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lm2$b;-><init>()V

    return-void
.end method
