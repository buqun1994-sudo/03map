.class public Lnb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnb;->C(Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lnb;


# direct methods
.method public constructor <init>(Lnb;Ljava/util/List;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnb$b;->d:Lnb;

    .line 3
    iput-object p2, p0, Lnb$b;->a:Ljava/util/List;

    .line 5
    iput p3, p0, Lnb$b;->b:I

    .line 7
    iput p4, p0, Lnb$b;->c:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetManager"

    .line 6
    const-string v3, "onTmcUpdate "

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lob;->c()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    const-string v1, "onTmcUpdate checkIsScreenShotEnable"

    .line 19
    new-array v3, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lnb$b;->a:Ljava/util/List;

    .line 26
    sput-object v1, Lco;->a:Ljava/util/List;

    .line 28
    iget v1, p0, Lnb$b;->b:I

    .line 30
    sput v1, Lco;->b:I

    .line 32
    iget v1, p0, Lnb$b;->c:I

    .line 34
    sput v1, Lco;->c:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    move-result-wide v3

    .line 40
    sput-wide v3, Lco;->d:J

    .line 42
    iget-object v1, p0, Lnb$b;->a:Ljava/util/List;

    .line 44
    if-nez v1, :cond_0

    .line 46
    const-string v1, "onTmcUpdate items==null"

    .line 48
    new-array v3, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lnb$b;->d:Lnb;

    .line 55
    invoke-static {v1, v0}, Lnb;->c(Lnb;I)I

    .line 58
    invoke-static {}, Lco;->c()V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lnb$b;->d:Lnb;

    .line 64
    invoke-static {v1}, Lnb;->d(Lnb;)I

    .line 67
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v3, "onTmcUpdate tmcIndex="

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v3, p0, Lnb$b;->d:Lnb;

    .line 79
    invoke-static {v3}, Lnb;->b(Lnb;)I

    .line 82
    move-result v3

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    new-array v3, v0, [Ljava/lang/Object;

    .line 92
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lnb$b;->d:Lnb;

    .line 97
    invoke-static {v1}, Lnb;->b(Lnb;)I

    .line 100
    move-result v1

    .line 101
    const/4 v3, 0x1

    .line 102
    if-ne v1, v3, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v3, "onTmcUpdate tmcIndex == 1 getIsNaviAppOnBackGround = "

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lhm0;->h()Z

    .line 121
    move-result v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    new-array v3, v0, [Ljava/lang/Object;

    .line 131
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const-string v1, "onTmcUpdate getIsNaviAppOnBackGround tmcBarItems!=null"

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    .line 138
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lnb$b;->d:Lnb;

    .line 143
    invoke-static {v0}, Lnb;->e(Lnb;)V

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    const-string v1, "onTmcUpdate tmcIndex != 1"

    .line 149
    new-array v3, v0, [Ljava/lang/Object;

    .line 151
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lnb$b;->d:Lnb;

    .line 156
    invoke-static {v1}, Lnb;->b(Lnb;)I

    .line 159
    move-result v1

    .line 160
    const/16 v3, 0xa

    .line 162
    if-lt v1, v3, :cond_2

    .line 164
    const-string v1, "onTmcUpdate tmcIndex >= TMC_STEP"

    .line 166
    new-array v3, v0, [Ljava/lang/Object;

    .line 168
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lnb$b;->d:Lnb;

    .line 173
    invoke-static {v1, v0}, Lnb;->c(Lnb;I)I

    .line 176
    :cond_2
    :goto_1
    return-void
.end method
