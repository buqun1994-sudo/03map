.class public Lob$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lob;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lob;->c()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "AutoWidgetUtils"

    .line 12
    const-string v2, "onLaneInfoClose"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lco;->g:[I

    .line 20
    sput-object v0, Lco;->h:[I

    .line 22
    sput-object v0, Lco;->i:[I

    .line 24
    sput-object v0, Lco;->j:[Z

    .line 26
    invoke-static {}, Lco;->e()V

    .line 29
    :cond_0
    return-void
.end method
