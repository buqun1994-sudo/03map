.class public Lcn$a;
.super Lnr$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn;


# direct methods
.method public constructor <init>(Lcn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn$a;->a:Lcn;

    .line 3
    invoke-direct {p0}, Lnr$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public G0(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "CameraClientsManager onError() code = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p1, "   message = "

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    new-array p2, p2, [Ljava/lang/Object;

    .line 29
    const-string v0, "GDCamera"

    .line 31
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public V(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p2, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "GDCamera"

    .line 6
    const-string v1, "onClosed()"

    .line 8
    invoke-static {v0, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcn$a;->a:Lcn;

    .line 13
    invoke-static {p2, p1}, Lcn;->o(Lcn;Z)Z

    .line 16
    return-void
.end method

.method public d0(Landroid/os/ParcelFileDescriptor;Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->toString()Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v3, "null"

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    aput-object v3, v1, v4

    .line 19
    const/4 v3, 0x2

    .line 20
    aput-object p3, v1, v3

    .line 22
    const-string p3, "GDCamera"

    .line 24
    const-string v3, "GDCamera onOpened = {?}, arCameraOpenResultParam = {?}, memoryfileName = {?}"

    .line 26
    invoke-static {p3, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lcn$a;->a:Lcn;

    .line 31
    invoke-static {v1, v4}, Lcn;->o(Lcn;Z)Z

    .line 34
    if-eqz p2, :cond_1

    .line 36
    iget v1, p2, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->a:I

    .line 38
    invoke-static {v1}, Lcn;->p(I)I

    .line 41
    move-result v1

    .line 42
    iget-object v3, p0, Lcn$a;->a:Lcn;

    .line 44
    iget v4, p2, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->d:I

    .line 46
    iget v5, p2, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->e:I

    .line 48
    iget p2, p2, Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;->g:I

    .line 50
    invoke-static {v3, v4, v5, p2, v1}, Lcn;->q(Lcn;IIII)V

    .line 53
    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v1, "parcelFileDescriptor: "

    .line 60
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    new-array v1, v2, [Ljava/lang/Object;

    .line 72
    invoke-static {p3, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-eqz p1, :cond_2

    .line 77
    iget-object p2, p0, Lcn$a;->a:Lcn;

    .line 79
    invoke-static {p2}, Lcn;->s(Lcn;)I

    .line 82
    move-result v1

    .line 83
    invoke-static {p1, v1, v0}, Ls00;->a(Landroid/os/ParcelFileDescriptor;II)Landroid/os/MemoryFile;

    .line 86
    move-result-object p1

    .line 87
    invoke-static {p2, p1}, Lcn;->r(Lcn;Landroid/os/MemoryFile;)Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    new-array p2, v2, [Ljava/lang/Object;

    .line 98
    invoke-static {p3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_2
    :goto_1
    return-void
.end method

.method public g0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GDCamera"

    .line 6
    const-string v3, "onDisconnected"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcn$a;->a:Lcn;

    .line 13
    invoke-static {v1, v0}, Lcn;->n(Lcn;Z)Z

    .line 16
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GDCamera"

    .line 6
    const-string v2, "onConnected"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcn$a;->a:Lcn;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Lcn;->n(Lcn;Z)Z

    .line 17
    return-void
.end method
