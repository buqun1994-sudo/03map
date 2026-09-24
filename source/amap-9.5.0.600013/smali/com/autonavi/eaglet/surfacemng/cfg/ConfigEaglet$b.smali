.class public Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;
.super Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final d:Z

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput p2, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->e:I

    .line 5
    iput-boolean p3, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->d:Z

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->h()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public g(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->e:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "set same value:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_0
    iput p1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->e:I

    .line 38
    invoke-virtual {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->h()V

    .line 41
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setEaglet "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->e:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 35
    iget v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigEaglet$b;->e:I

    .line 37
    invoke-static {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->setEagletVariable(Ljava/lang/String;I)V

    .line 40
    return-void
.end method
