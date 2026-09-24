.class public abstract Lnk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnk0$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "DexTrace.VersionStateManger"

.field public static b:Lnk0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lnk0;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, " exec notifyDownloaded version dir "

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v1, v3}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lnk0;->b:Lnk0$a;

    .line 31
    if-nez v0, :cond_0

    .line 33
    sget-object p0, Lnk0;->a:Ljava/lang/String;

    .line 35
    const-string p1, "member sOnDownloadStateListener is not be null"

    .line 37
    new-array v0, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {p0, p1, v0}, Lzy;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return v2

    .line 43
    :cond_0
    invoke-interface {v0, p0, p1}, Lnk0$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public static b(Lnk0$a;)V
    .locals 0

    .line 1
    sput-object p0, Lnk0;->b:Lnk0$a;

    .line 3
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
