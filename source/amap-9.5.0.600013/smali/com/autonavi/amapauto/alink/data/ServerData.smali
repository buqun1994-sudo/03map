.class public Lcom/autonavi/amapauto/alink/data/ServerData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public MAC:Ljava/lang/String;

.field private id:I

.field private mode:Ljava/lang/String;

.field private txt:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->id:I

    .line 3
    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->mode:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->txt:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->type:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->id:I

    .line 3
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->mode:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTxt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->txt:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/data/ServerData;->type:Ljava/lang/String;

    .line 3
    return-void
.end method
