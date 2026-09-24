.class public Ls7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Ls7;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lsd0;

.field public c:Ljava/text/SimpleDateFormat;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z

.field public final g:Ljava/lang/String;

.field public h:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "AutoIssttsManager"

    .line 6
    iput-object v0, p0, Ls7;->a:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ls7;->b:Lsd0;

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 13
    const-string v1, "yy/MM/dd-HH:mm:ss"

    .line 15
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object v0, p0, Ls7;->c:Ljava/text/SimpleDateFormat;

    .line 20
    const-string v0, ""

    .line 22
    iput-object v0, p0, Ls7;->d:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Ls7;->e:I

    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Ls7;->f:Z

    .line 30
    const-string v0, "isstts"

    .line 32
    iput-object v0, p0, Ls7;->g:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object v0, p0, Ls7;->h:Ljava/util/List;

    .line 41
    new-instance v0, Lsd0;

    .line 43
    const-string v1, "cloud_status_tts"

    .line 45
    invoke-direct {v0, v1}, Lsd0;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object v0, p0, Ls7;->b:Lsd0;

    .line 50
    return-void
.end method

.method public static synthetic a(Ls7;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7;->c:Ljava/text/SimpleDateFormat;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Ls7;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls7;->f(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Ls7;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls7;->e(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static k()Ls7;
    .locals 1

    .line 1
    sget-object v0, Ls7;->i:Ls7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ls7;

    .line 7
    invoke-direct {v0}, Ls7;-><init>()V

    .line 10
    sput-object v0, Ls7;->i:Ls7;

    .line 12
    :cond_0
    sget-object v0, Ls7;->i:Ls7;

    .line 14
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/io/File;ZZ)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v4, v8

    const-string v6, "AutoIssttsManager"

    const-string v9, "timestamp:{?};file:{?};isLastSupplement:{?}"

    invoke-static {v6, v9, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v10, "isstts"

    if-eqz v4, :cond_13

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 6
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v12, v1, Ls7;->h:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, ""

    const/16 v15, 0x64

    if-gtz v12, :cond_a

    if-nez p3, :cond_5

    .line 8
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 9
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v9, 0x0

    .line 10
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v9, v8, :cond_2

    .line 11
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 12
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object v8, v14

    .line 13
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const-string v2, "timeStampAccurate:{?}"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v8, v9, v5

    .line 14
    invoke-static {v6, v2, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 16
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 17
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 18
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 19
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ls7;->d:Ljava/lang/String;

    .line 20
    iput v2, v1, Ls7;->e:I

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    .line 22
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Ls7;->d:Ljava/lang/String;

    .line 23
    iput v2, v1, Ls7;->e:I

    const-string v8, "LastSupplement cut last index:{?}"

    new-array v9, v7, [Ljava/lang/Object;

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v5

    invoke-static {v6, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    if-lez v2, :cond_9

    .line 25
    invoke-virtual/range {p0 .. p0}, Ls7;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    if-lt v2, v15, :cond_6

    add-int/lit8 v8, v2, -0x64

    add-int/2addr v8, v7

    .line 26
    iput-boolean v5, v1, Ls7;->f:Z

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    if-eqz p4, :cond_8

    .line 27
    invoke-virtual/range {p0 .. p0}, Ls7;->m()I

    move-result v8

    .line 28
    invoke-virtual/range {p0 .. p0}, Ls7;->m()I

    goto :goto_5

    .line 29
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ls7;->j()I

    move-result v8

    .line 30
    invoke-virtual/range {p0 .. p0}, Ls7;->j()I

    .line 31
    :goto_5
    iput-boolean v5, v1, Ls7;->f:Z

    goto :goto_6

    :cond_9
    const/4 v8, -0x1

    goto :goto_6

    .line 32
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    .line 33
    iget-object v8, v1, Ls7;->h:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v15, v8

    sub-int v8, v2, v15

    add-int/2addr v8, v7

    if-eqz p4, :cond_b

    .line 34
    invoke-virtual/range {p0 .. p0}, Ls7;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Ls7;->m()I

    move-result v9

    if-le v9, v8, :cond_c

    .line 35
    invoke-virtual/range {p0 .. p0}, Ls7;->m()I

    move-result v8

    .line 36
    iget-object v9, v1, Ls7;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 37
    iput-boolean v5, v1, Ls7;->f:Z

    goto :goto_6

    .line 38
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ls7;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Ls7;->j()I

    move-result v9

    if-le v9, v8, :cond_c

    .line 39
    invoke-virtual/range {p0 .. p0}, Ls7;->j()I

    move-result v8

    .line 40
    iget-object v9, v1, Ls7;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 41
    iput-boolean v5, v1, Ls7;->f:Z

    .line 42
    :cond_c
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "size:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\uff1bindex:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v6, v9, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz v8, :cond_10

    if-le v2, v8, :cond_10

    :goto_7
    if-lt v2, v8, :cond_d

    if-ltz v2, :cond_d

    .line 43
    iget-object v9, v1, Ls7;->h:Ljava/util/List;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 44
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTtsLogList.size() ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ls7;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-boolean v2, v1, Ls7;->f:Z

    if-nez v2, :cond_11

    const-string v2, "tts Logger cut success start\u3002size:{?};mSaveFileName:{?};mSaveNumber:{?}"

    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    iget-object v4, v1, Ls7;->h:Ljava/util/List;

    .line 47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, v1, Ls7;->d:Ljava/lang/String;

    aput-object v4, v3, v7

    iget v4, v1, Ls7;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v3, v8

    const/4 v4, 0x0

    .line 48
    invoke-static {v10, v6, v2, v4, v3}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 49
    iget-object v2, v1, Ls7;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 50
    iget-object v2, v1, Ls7;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 51
    invoke-static {v10, v6, v3, v8, v4}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 52
    :cond_e
    iget-object v2, v1, Ls7;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ls7;->o(Ljava/lang/String;)V

    if-eqz p4, :cond_f

    .line 53
    iget v2, v1, Ls7;->e:I

    invoke-virtual {v1, v2}, Ls7;->q(I)V

    goto :goto_9

    .line 54
    :cond_f
    iget v2, v1, Ls7;->e:I

    invoke-virtual {v1, v2}, Ls7;->p(I)V

    .line 55
    :goto_9
    iput-object v14, v1, Ls7;->d:Ljava/lang/String;

    .line 56
    iput v5, v1, Ls7;->e:I

    const-string v2, "tts Logger cut success end"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 57
    invoke-static {v10, v6, v2, v4, v3}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return v7

    .line 59
    :cond_10
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v6, v2, v4, v3}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    :cond_11
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v9, v11

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v9, v11

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v9, v11

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v9, v11

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v9, v11

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    :goto_a
    :try_start_6
    const-string v3, "Exception:"

    new-array v4, v5, [Ljava/lang/Object;

    .line 61
    invoke-static {v10, v6, v3, v2, v4}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v9, :cond_14

    .line 62
    :goto_b
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_10

    :catch_6
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    :goto_c
    :try_start_8
    const-string v3, "IndexOutOfBoundsException:"

    new-array v4, v5, [Ljava/lang/Object;

    .line 63
    invoke-static {v10, v6, v3, v2, v4}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz v9, :cond_14

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    :goto_d
    const-string v3, "IOException:"

    new-array v4, v5, [Ljava/lang/Object;

    .line 64
    invoke-static {v10, v6, v3, v2, v4}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz v9, :cond_14

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    :goto_e
    const-string v3, "FileNotFoundException:"

    new-array v4, v5, [Ljava/lang/Object;

    .line 65
    invoke-static {v10, v6, v3, v2, v4}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_14

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_f
    if-eqz v9, :cond_12

    .line 66
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 67
    :catch_9
    :cond_12
    throw v2

    :cond_13
    move-object/from16 v13, p2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts Logger no exist,file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v6, v2, v4, v3}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :catch_a
    :cond_14
    :goto_10
    return v5
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoIssttsManager"

    .line 6
    const-string v3, "executeMitProcess"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/io/File;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {p0}, Ls7;->l()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ls7;->i()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p0, p1, v1, v0, v2}, Ls7;->d(Ljava/lang/String;Ljava/io/File;ZZ)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 52
    return v2

    .line 53
    :cond_0
    const-string p1, ""

    .line 55
    invoke-virtual {p0, p1, v1, v2, v2}, Ls7;->d(Ljava/lang/String;Ljava/io/File;ZZ)Z

    .line 58
    :cond_1
    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 12

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Ls7;->l()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result v1

    .line 14
    const-string v2, "no exist,path:"

    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "isstts"

    .line 19
    const-string v5, "AutoIssttsManager"

    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_8

    .line 30
    array-length v1, v0

    .line 31
    if-lez v1, :cond_8

    .line 33
    new-instance v1, Ls7$c;

    .line 35
    invoke-direct {v1, p0}, Ls7$c;-><init>(Ls7;)V

    .line 38
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 41
    aget-object v1, v0, v6

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v7, "latestFileName:"

    .line 54
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    new-array v2, v6, [Ljava/lang/Object;

    .line 66
    invoke-static {v4, v5, v1, v3, v2}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Ls7;->h:Ljava/util/List;

    .line 71
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    array-length v1, v0

    .line 75
    const/4 v2, 0x0

    .line 76
    :goto_0
    const-string v7, ".pcm"

    .line 78
    const/4 v8, 0x1

    .line 79
    if-ge v2, v1, :cond_4

    .line 81
    aget-object v9, v0, v2

    .line 83
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {p0}, Ls7;->i()Ljava/lang/String;

    .line 90
    move-result-object v11

    .line 91
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_2

    .line 97
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 100
    move-result-object v10

    .line 101
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v10

    .line 105
    if-eqz v10, :cond_0

    .line 107
    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {p0, p1, v9, v6, v6}, Ls7;->d(Ljava/lang/String;Ljava/io/File;ZZ)Z

    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_1

    .line 114
    return v8

    .line 115
    :cond_1
    iget-boolean v9, p0, Ls7;->f:Z

    .line 117
    if-nez v9, :cond_3

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    :goto_1
    const-string v7, " xunfei tts log exclude mit file"

    .line 122
    new-array v8, v6, [Ljava/lang/Object;

    .line 124
    invoke-static {v5, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    :goto_2
    iget-object p1, p0, Ls7;->h:Ljava/util/List;

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 135
    move-result p1

    .line 136
    if-gtz p1, :cond_7

    .line 138
    const-string p1, "last cut log"

    .line 140
    new-array v1, v6, [Ljava/lang/Object;

    .line 142
    invoke-static {v5, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    aget-object p1, v0, v6

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p0}, Ls7;->i()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_5

    .line 161
    invoke-virtual {p0}, Ls7;->h()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    aget-object p1, v0, v6

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    :goto_3
    if-eqz p1, :cond_6

    .line 174
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 180
    const-string p1, "xunfei tts log exclude pcm file\u3002tts Logger cut fail\u3002"

    .line 182
    new-array v0, v6, [Ljava/lang/Object;

    .line 184
    invoke-static {v5, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return v6

    .line 188
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-virtual {p0}, Ls7;->l()Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    const-string p1, ""

    .line 214
    invoke-virtual {p0, p1, v0, v8, v6}, Ls7;->d(Ljava/lang/String;Ljava/io/File;ZZ)Z

    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_7

    .line 220
    return v8

    .line 221
    :cond_7
    const-string p1, "tts Logger cut fail!"

    .line 223
    new-array v0, v6, [Ljava/lang/Object;

    .line 225
    invoke-static {v4, v5, p1, v3, v0}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 228
    goto :goto_4

    .line 229
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Ls7;->l()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 248
    new-array v0, v6, [Ljava/lang/Object;

    .line 250
    invoke-static {v5, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    goto :goto_4

    .line 254
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 256
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Ls7;->l()Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object p1

    .line 273
    new-array v0, v6, [Ljava/lang/Object;

    .line 275
    invoke-static {v4, v5, p1, v3, v0}, Lcz;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 278
    :goto_4
    return v6
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v2, "tts_status"

    .line 8
    invoke-virtual {v0, v2, v1}, Lsd0;->c(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    return v1
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    const-string v1, ""

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string v2, "tts_file_name"

    .line 9
    invoke-virtual {v0, v2, v1}, Lsd0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "debug.log"

    return-object v0
.end method

.method public j()I
    .locals 3

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v2, "tts_number"

    .line 8
    invoke-virtual {v0, v2, v1}, Lsd0;->e(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    return v1
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "/TTS/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    const-string v2, "AutoIssttsManager"

    .line 29
    const-string v3, "Exception"

    .line 31
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    const-string v0, ""

    .line 36
    :goto_0
    return-object v0
.end method

.method public m()I
    .locals 3

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v2, "mit_tts_number"

    .line 8
    invoke-virtual {v0, v2, v1}, Lsd0;->e(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    return v1
.end method

.method public n(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "tts_status"

    .line 7
    invoke-virtual {v0, v1, p1}, Lsd0;->i(Ljava/lang/String;Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "tts_file_name"

    .line 7
    invoke-virtual {v0, v1, p1}, Lsd0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "tts_number"

    .line 7
    invoke-virtual {v0, v1, p1}, Lsd0;->j(Ljava/lang/String;I)V

    .line 10
    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls7;->b:Lsd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "mit_tts_number"

    .line 7
    invoke-virtual {v0, v1, p1}, Lsd0;->j(Ljava/lang/String;I)V

    .line 10
    :cond_0
    return-void
.end method

.method public declared-synchronized r(Z)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AutoIssttsManager"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "[trigger]isNeedDelay:"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Ls7;->g()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ls7$a;

    .line 35
    invoke-direct {v0, p0, p1}, Ls7$a;-><init>(Ls7;Z)V

    .line 38
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_0
    :try_start_1
    const-string p1, "AutoIssttsManager"

    .line 46
    const-string v0, "cloud switch close,no need to cut ttslog"

    .line 48
    new-array v1, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    .line 54
    return v2

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
.end method

.method public declared-synchronized s(Z)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AutoIssttsManager"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "[triggerMit]isNeedDelay:"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Ls7;->g()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ls7$b;

    .line 35
    invoke-direct {v0, p0, p1}, Ls7$b;-><init>(Ls7;Z)V

    .line 38
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_0
    :try_start_1
    const-string p1, "AutoIssttsManager"

    .line 46
    const-string v0, "cloud switch close,no need to cut ttslog"

    .line 48
    new-array v1, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    .line 54
    return v2

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
.end method
