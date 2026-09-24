.class public Lcy;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcy$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcy;->a:Z

    .line 6
    iput p2, p0, Lcy;->b:I

    .line 8
    iput-object p3, p0, Lcy;->c:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcy;->c:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 12
    iget-object v1, p0, Lcy;->c:Ljava/lang/String;

    .line 14
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Lcy$a;

    .line 32
    invoke-direct {v1, p0}, Lcy$a;-><init>(Lcy;)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_7

    .line 41
    array-length v1, v0

    .line 42
    if-nez v1, :cond_2

    .line 44
    goto :goto_5

    .line 45
    :cond_2
    const-wide/16 v1, 0x4e20

    .line 47
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    array-length v1, v0

    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_0
    if-ge v3, v1, :cond_4

    .line 55
    aget-object v4, v0, v3

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    const-string v5, "jiami"

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 69
    const/4 v1, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v1, 0x0

    .line 75
    :goto_1
    iget-boolean v3, p0, Lcy;->a:Z

    .line 77
    if-eqz v3, :cond_6

    .line 79
    if-eqz v1, :cond_5

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    array-length v1, v0

    .line 83
    iget v3, p0, Lcy;->b:I

    .line 85
    if-le v1, v3, :cond_7

    .line 87
    new-instance v1, Lcy$b;

    .line 89
    invoke-direct {v1}, Lcy$b;-><init>()V

    .line 92
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 95
    array-length v1, v0

    .line 96
    iget v3, p0, Lcy;->b:I

    .line 98
    sub-int/2addr v1, v3

    .line 99
    :goto_2
    if-ge v2, v1, :cond_7

    .line 101
    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    :goto_3
    array-length v1, v0

    .line 110
    :goto_4
    if-ge v2, v1, :cond_7

    .line 112
    aget-object v3, v0, v2

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 119
    goto :goto_4

    .line 120
    :catchall_0
    :cond_7
    :goto_5
    return-void
.end method
