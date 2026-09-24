.class public Lp3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lp3;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lp3;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lp3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3;-><init>()V

    return-void
.end method

.method public static b()Lp3;
    .locals 1

    .line 1
    invoke-static {}, Lp3$b;->a()Lp3;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "ApkNameExaminer=1"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",app_version="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lp3;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ",app_name="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lp3;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const/4 v1, 0x1

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const/4 v2, 0x0

    .line 35
    aput-object v0, v1, v2

    .line 37
    const-string v2, "ApkNameExaminer"

    .line 39
    const-string v3, "collectionResult, remark:{?}"

    .line 41
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Ll1;->c(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "ApkNameExaminer"

    .line 6
    const-string v3, "load()"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lp3;->b:Ljava/lang/String;

    .line 21
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lrv;->v()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lp3;->a:Ljava/lang/String;

    .line 31
    const-string v1, "com.autonavi.amapauto"

    .line 33
    iget-object v3, p0, Lp3;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 41
    const-string v1, "com.autonavi.amapautolite"

    .line 43
    iget-object v3, p0, Lp3;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object v1, p0, Lp3;->a:Ljava/lang/String;

    .line 54
    if-nez v1, :cond_1

    .line 56
    const-string v1, "Can\'t get apk version!"

    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void

    .line 64
    :cond_1
    new-instance v1, Lsd0;

    .line 66
    invoke-direct {v1, v2}, Lsd0;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v3, "key_is_upload_apk_name"

    .line 71
    invoke-virtual {v1, v3, v0}, Lsd0;->c(Ljava/lang/String;Z)Z

    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_2

    .line 77
    invoke-virtual {p0}, Lp3;->a()V

    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-virtual {v1, v3, v0}, Lsd0;->i(Ljava/lang/String;Z)V

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "Don\'t upload"

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 93
    :cond_3
    :goto_1
    const-string v1, "It\'s base channel pkg name"

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method
