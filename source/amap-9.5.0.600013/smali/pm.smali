.class public Lpm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/autonavi/amapauto/textfont/FontMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lpm;->a:I

    .line 7
    iput v0, p0, Lpm;->b:I

    .line 9
    const-string v0, ""

    .line 11
    iput-object v0, p0, Lpm;->c:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lpm;->d:Lcom/autonavi/amapauto/textfont/FontMetrics;

    .line 16
    return-void
.end method
