.class public Lcom/autonavi/amapauto/jni/RequestDisplayMoveFront;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MULTI_SCREEN_CLUSTER:I = 0x3e9

.field public static final MULTI_SCREEN_CODRIVER:I = 0x3ea

.field private static final MULTI_SCREEN_CODRIVER_DISPLAY_ID:I = 0x2

.field public static final MULTI_SCREEN_MAIN:I = 0x3e8

.field private static final MULTI_SCREEN_MAIN_DISPLAY_ID:I = 0x0

.field public static final MULTI_SCREEN_SDS:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "RequestDisplayMoveFront"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static notifyDisplayMoveFront(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    sget-object v1, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;

    .line 13
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/RequestDisplayMoveFront;->notifyDisplayMoveFrontImpl(Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;)Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 20
    if-nez v1, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0, v0}, Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-object p0
.end method

.method public static notifyDisplayMoveFrontImpl(Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;)Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, "RequestDisplayMoveFront"

    .line 9
    const-string v4, "notifyDisplayMoveFrontImpl requestMoveFrontParams:{?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v1, Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;

    .line 16
    invoke-direct {v1}, Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;-><init>()V

    .line 19
    if-nez p0, :cond_0

    .line 21
    return-object v1

    .line 22
    :cond_0
    iget v4, p0, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;->a:I

    .line 24
    iput v4, v1, Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;->a:I

    .line 26
    iget v4, p0, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;->b:I

    .line 28
    packed-switch v4, :pswitch_data_0

    .line 31
    const/4 v4, 0x0

    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    const-string v4, "com.autonavi.amapauto.business.factory.preassemble.activityview.SDSActivity"

    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    const-string v4, "com.autonavi.amapauto.business.factory.preassemble.activityview.CodriverActivity"

    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    const-string v4, "com.autonavi.amapauto.business.factory.preassemble.activityview.ClusterActivity"

    .line 41
    goto :goto_0

    .line 42
    :pswitch_3
    const-string v4, "com.autonavi.amapauto.MainMapActivity"

    .line 44
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_4

    .line 50
    new-instance v5, Landroid/content/Intent;

    .line 52
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 55
    new-instance v6, Landroid/content/ComponentName;

    .line 57
    invoke-static {}, Lrv;->H()Lrv;

    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7}, Lrv;->z()Landroid/content/Context;

    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 68
    move-result-object v7

    .line 69
    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    const/high16 v4, 0x10000000

    .line 77
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    const/16 v6, 0x1a

    .line 84
    if-lt v4, v6, :cond_2

    .line 86
    iget v7, p0, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;->b:I

    .line 88
    const/16 v8, 0x3ea

    .line 90
    if-ne v7, v8, :cond_2

    .line 92
    invoke-static {}, Lha0;->a()Landroid/app/ActivityOptions;

    .line 95
    move-result-object v4

    .line 96
    iget p0, p0, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;->c:I

    .line 98
    if-lez p0, :cond_1

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/4 p0, 0x2

    .line 102
    :goto_1
    invoke-static {v4, p0}, Lia0;->a(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {}, Lrv;->H()Lrv;

    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v4, v5, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    if-lt v4, v6, :cond_3

    .line 124
    iget p0, p0, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;->b:I

    .line 126
    const/16 v4, 0x3e8

    .line 128
    if-ne p0, v4, :cond_3

    .line 130
    invoke-static {}, Lha0;->a()Landroid/app/ActivityOptions;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0, v2}, Lia0;->a(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {}, Lrv;->H()Lrv;

    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {v4, v5, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 153
    goto :goto_2

    .line 154
    :cond_3
    invoke-static {}, Lrv;->H()Lrv;

    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    :goto_2
    iput-boolean v0, v1, Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;->b:Z

    .line 167
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const-string v0, "notifyDisplayMoveBackImpl requestId:"

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v0, v1, Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;->a:I

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v0, ",success="

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-boolean v0, v1, Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;->b:Z

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    new-array v0, v2, [Ljava/lang/Object;

    .line 198
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-object v1

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
