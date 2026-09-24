.class public Lr70$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lr70$a;->a:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lr70$a;->b:Z

    .line 10
    iput-boolean v0, p0, Lr70$a;->d:Z

    .line 12
    return-void
.end method

.method public static synthetic a(Lr70$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr70$a;->b()V

    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    invoke-static {}, Lr70;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lr70$a;->a:Ljava/lang/String;

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v0, v2, v3

    .line 13
    const-string v0, "ProtocolAssertDebugUtils"

    .line 15
    const-string v4, "[ALSimulate] checkProtocolLogFile filePath = {?}"

    .line 17
    invoke-static {v0, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v2, Ljava/io/File;

    .line 22
    iget-object v4, p0, Lr70$a;->a:Ljava/lang/String;

    .line 24
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 33
    const-string v4, "[ALSimulate] checkProtocolLogFile tempFile.exists()"

    .line 35
    new-array v5, v3, [Ljava/lang/Object;

    .line 37
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 46
    const-string v4, "[ALSimulate] checkProtocolLogFile !tempFile.isDirectory()"

    .line 48
    new-array v5, v3, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 56
    :cond_0
    iput-boolean v1, p0, Lr70$a;->b:Z

    .line 58
    invoke-static {}, Lr70;->a()Landroid/content/Context;

    .line 61
    move-result-object v2

    .line 62
    const-string v4, "SharedPreferences"

    .line 64
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 67
    move-result-object v2

    .line 68
    const-string v4, "isWriteProtocolLog"

    .line 70
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    move-result v2

    .line 74
    iput-boolean v2, p0, Lr70$a;->c:Z

    .line 76
    if-nez v2, :cond_1

    .line 78
    const-string v1, "[ALSimulate] checkProtocolLogFile !isWriteLog"

    .line 80
    new-array v2, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void

    .line 86
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 88
    iget-object v4, p0, Lr70$a;->a:Ljava/lang/String;

    .line 90
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_2

    .line 105
    const-string v2, "[ALSimulate] checkProtocolLogFile filepath.exists() && filepath.isDirectory()"

    .line 107
    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iput-boolean v1, p0, Lr70$a;->d:Z

    .line 114
    :cond_2
    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lr70$a;->b:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-boolean v1, p0, Lr70$a;->c:Z

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v1, v0, v3

    .line 22
    iget-boolean v1, p0, Lr70$a;->d:Z

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v1

    .line 28
    const/4 v4, 0x2

    .line 29
    aput-object v1, v0, v4

    .line 31
    const-string v1, "ProtocolAssertDebugUtils"

    .line 33
    const-string v4, "[ALSimulate] isProtocolLogFile isCheckedLogDir = {?},isWriteLog = {?},isLogFileExist = {?}"

    .line 35
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-boolean v0, p0, Lr70$a;->b:Z

    .line 40
    if-nez v0, :cond_0

    .line 42
    const-string v0, "[ALSimulate] isProtocolLogFile !isCheckedLogDir"

    .line 44
    new-array v4, v2, [Ljava/lang/Object;

    .line 46
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lr70$a;->b()V

    .line 52
    :cond_0
    iget-boolean v0, p0, Lr70$a;->b:Z

    .line 54
    if-eqz v0, :cond_1

    .line 56
    iget-boolean v0, p0, Lr70$a;->c:Z

    .line 58
    if-eqz v0, :cond_1

    .line 60
    iget-boolean v0, p0, Lr70$a;->d:Z

    .line 62
    if-eqz v0, :cond_1

    .line 64
    const-string v0, "[ALSimulate] isProtocolLogFile isCheckedLogDir && isWriteLog && isLogFileExist"

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return v3

    .line 72
    :cond_1
    const-string v0, "[ALSimulate] isProtocolLogFile false"

    .line 74
    new-array v3, v2, [Ljava/lang/Object;

    .line 76
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return v2
.end method
