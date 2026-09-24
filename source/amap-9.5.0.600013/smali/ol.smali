.class public Lol;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    iput p2, p0, Lol;->k:I

    .line 4
    iput-boolean p1, p0, Lol;->l:Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lol;->k:I

    .line 3
    iget-boolean v1, p0, Lol;->l:Z

    .line 5
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setExternalScreenDynamicLevelLock(IZ)V

    .line 8
    return-void
.end method
