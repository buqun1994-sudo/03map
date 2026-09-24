.class public Lz90$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz90$a;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz90$a;


# direct methods
.method public constructor <init>(Lz90$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz90$a$a;->b:Lz90$a;

    .line 3
    iput p2, p0, Lz90$a$a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-wide/16 v0, 0xbb8

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_0
    const/4 v1, 0x1

    .line 12
    const/16 v2, 0x71

    .line 14
    iget v0, p0, Lz90$a$a;->a:I

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    const-string v4, ""

    .line 22
    const-string v5, ""

    .line 24
    const-string v6, ""

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
