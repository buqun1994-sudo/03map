.class public Lrp0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static p:Ljava/util/HashMap;


# instance fields
.field public a:Lsu0;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/Map;

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrp0$a$a;

    .line 3
    invoke-direct {v0}, Lrp0$a$a;-><init>()V

    .line 6
    sput-object v0, Lrp0$a;->p:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lsu0;

    .line 6
    invoke-direct {v0}, Lsu0;-><init>()V

    .line 9
    iput-object v0, p0, Lrp0$a;->a:Lsu0;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lrp0$a;->b:Z

    .line 14
    iput-boolean v0, p0, Lrp0$a;->c:Z

    .line 16
    iput-boolean v0, p0, Lrp0$a;->d:Z

    .line 18
    iput-boolean v0, p0, Lrp0$a;->e:Z

    .line 20
    iput-boolean v0, p0, Lrp0$a;->f:Z

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lrp0$a;->g:Ljava/lang/String;

    .line 25
    iput-boolean v0, p0, Lrp0$a;->h:Z

    .line 27
    iput-object v1, p0, Lrp0$a;->i:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lrp0$a;->j:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lrp0$a;->k:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lrp0$a;->l:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lrp0$a;->m:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    .line 39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 44
    const/16 v0, 0x63

    .line 46
    iput v0, p0, Lrp0$a;->o:I

    .line 48
    return-void
.end method


# virtual methods
.method public a(Z)Lrp0$a;
    .locals 3

    .line 1
    iput-boolean p1, p0, Lrp0$a;->c:Z

    .line 3
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 5
    const-string v1, "et"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 15
    const-string v2, "100"

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 25
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 34
    move-result-object p1

    .line 35
    const/16 v2, 0x31

    .line 37
    aput-char v2, p1, v0

    .line 39
    const/4 v0, 0x0

    .line 40
    aput-char v2, p1, v0

    .line 42
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 44
    new-instance v2, Ljava/lang/String;

    .line 46
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 55
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 64
    move-result-object p1

    .line 65
    const/16 v2, 0x30

    .line 67
    aput-char v2, p1, v0

    .line 69
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 71
    new-instance v2, Ljava/lang/String;

    .line 73
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_0
    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrp0$a;->e:Z

    .line 3
    return v0
.end method

.method public c(Z)Lrp0$a;
    .locals 3

    .line 1
    iput-boolean p1, p0, Lrp0$a;->d:Z

    .line 3
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 5
    const-string v1, "et"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 15
    const-string v2, "100"

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 25
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 34
    move-result-object p1

    .line 35
    const/16 v2, 0x31

    .line 37
    aput-char v2, p1, v0

    .line 39
    const/4 v0, 0x0

    .line 40
    aput-char v2, p1, v0

    .line 42
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 44
    new-instance v2, Ljava/lang/String;

    .line 46
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 55
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 64
    move-result-object p1

    .line 65
    const/16 v2, 0x30

    .line 67
    aput-char v2, p1, v0

    .line 69
    iget-object v0, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 71
    new-instance v2, Ljava/lang/String;

    .line 73
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_0
    return-object p0
.end method

.method public d(Z)Lrp0$a;
    .locals 2

    .line 1
    iput-boolean p1, p0, Lrp0$a;->e:Z

    .line 3
    const-string v0, "gzipped"

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 9
    const-string v1, "1"

    .line 11
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_0
    return-object p0
.end method

.method public e(Z)Lrp0$a;
    .locals 2

    .line 1
    iput-boolean p1, p0, Lrp0$a;->f:Z

    .line 3
    const-string v0, "accept-encoding"

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 9
    const-string v1, "gzip"

    .line 11
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Header{responseCtrl="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lrp0$a;->a:Lsu0;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", responseEncrypted="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lrp0$a;->b:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", responseXxteaEncrypted="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-boolean v1, p0, Lrp0$a;->c:Z

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", requestXxteaEncrypted="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v1, p0, Lrp0$a;->d:Z

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", requestGzipped="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean v1, p0, Lrp0$a;->e:Z

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", responseGzipped="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-boolean v1, p0, Lrp0$a;->f:Z

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", appIP=\'"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lrp0$a;->g:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v1, 0x27

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, ", isSupporToMac="

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-boolean v2, p0, Lrp0$a;->h:Z

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    const-string v2, ", osInfo=\'"

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p0, Lrp0$a;->i:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, ", host=\'"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v2, p0, Lrp0$a;->j:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", paramsMap="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lrp0$a;->n:Ljava/util/Map;

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", currAppipPriority="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Lrp0$a;->o:I

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const/16 v1, 0x7d

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    return-object v0
.end method
