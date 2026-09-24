.class public abstract Lrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lrg;->a:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v3, Lrg;->a:[Ljava/lang/String;

    .line 4
    const-string v4, "name=?"

    .line 6
    filled-new-array {p2}, [Ljava/lang/String;

    .line 9
    move-result-object v5

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p0, :cond_2

    .line 19
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 22
    move-result p1

    .line 23
    if-gtz p1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    const-string p1, "value"

    .line 31
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 34
    move-result p1

    .line 35
    if-ltz p1, :cond_1

    .line 37
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 44
    return-object v0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 49
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    :cond_3
    if-eqz p0, :cond_4

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_4
    return-object v0

    .line 58
    :catchall_0
    nop

    .line 59
    move-object p0, v0

    .line 60
    goto :goto_2

    .line 61
    :catch_1
    move-exception p1

    .line 62
    move-object p0, v0

    .line 63
    :goto_1
    :try_start_3
    const-string p2, "ContentProviderUtil"

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x0

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-static {p2, v1, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    if-eqz p0, :cond_5

    .line 77
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_5
    return-object v0

    .line 81
    :catchall_1
    nop

    .line 82
    :goto_2
    if-eqz p0, :cond_6

    .line 84
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_6
    return-object v0
.end method
