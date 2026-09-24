.class Lcom/amap/location/fusion/a/b/a$1;
.super Lcom/amap/location/support/nl/NetworkLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/b/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/b/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/nl/NetworkLocationListener;-><init>(I)V

    .line 6
    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getLocType()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_3

    .line 8
    const/4 v0, 0x2

    .line 9
    const/16 v1, 0x6b

    .line 11
    if-eq p1, v0, :cond_2

    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p1, 0x186cc

    .line 23
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const p1, 0x186d0

    .line 30
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 33
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const p1, 0x186ca

    .line 40
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 43
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/16 p1, 0x6c

    .line 49
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    const-string v0, "netloc"

    .line 7
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    goto/16 :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 19
    invoke-static {v1}, Lcom/amap/location/fusion/a/b/a;->a(Lcom/amap/location/fusion/a/b/a;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 28
    move-result-wide v1

    .line 29
    iget-object v3, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 31
    invoke-static {v3}, Lcom/amap/location/fusion/a/b/a;->b(Lcom/amap/location/fusion/a/b/a;)Lcom/amap/location/fusion/util/f;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3, p1}, Lcom/amap/location/fusion/util/f;->b(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 38
    move-result-object p1

    .line 39
    iget-object v3, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 41
    invoke-static {v3}, Lcom/amap/location/fusion/a/b/a;->b(Lcom/amap/location/fusion/a/b/a;)Lcom/amap/location/fusion/util/f;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/amap/location/fusion/util/f;->b()I

    .line 48
    move-result v3

    .line 49
    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 54
    move-result-wide v4

    .line 55
    cmp-long v6, v4, v1

    .line 57
    if-eqz v6, :cond_1

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLast(Z)V

    .line 63
    invoke-virtual {p1, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setFilterOther(Z)V

    .line 66
    const v1, 0x18787

    .line 69
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v2, "net loc filter shake:"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 94
    invoke-static {v0}, Lcom/amap/location/fusion/a/b/a;->c(Lcom/amap/location/fusion/a/b/a;)I

    .line 97
    move-result v0

    .line 98
    if-eq v3, v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    const-string v1, "code:"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    const-string v1, "|"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 138
    move-result-object p2

    .line 139
    const v0, 0x1ae21

    .line 142
    invoke-static {v0, p2}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 145
    :cond_1
    iget-object p2, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 147
    invoke-static {p2, v3}, Lcom/amap/location/fusion/a/b/a;->a(Lcom/amap/location/fusion/a/b/a;I)I

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    iget-object p2, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 153
    invoke-static {p2}, Lcom/amap/location/fusion/a/b/a;->b(Lcom/amap/location/fusion/a/b/a;)Lcom/amap/location/fusion/util/f;

    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2, p1}, Lcom/amap/location/fusion/util/f;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    .line 160
    :goto_0
    invoke-static {}, Lcom/amap/location/protocol/a/a;->a()Lcom/amap/location/protocol/a/a;

    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p2, p1}, Lcom/amap/location/protocol/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 167
    const-string p2, "amapnl"

    .line 169
    invoke-virtual {p1, p2}, Lcom/amap/location/type/location/Location;->setSource(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 174
    invoke-virtual {p2, p1}, Lcom/amap/location/support/location/AbstractLocator;->report(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 177
    iget-object p2, p0, Lcom/amap/location/fusion/a/b/a$1;->a:Lcom/amap/location/fusion/a/b/a;

    .line 179
    invoke-static {p2, p1}, Lcom/amap/location/fusion/a/b/a;->a(Lcom/amap/location/fusion/a/b/a;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/a/b/a$1;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    .line 185
    return-void

    .line 186
    :cond_3
    :goto_1
    const/16 p1, 0x70

    .line 188
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v1, "receive wrong net loc:"

    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method
