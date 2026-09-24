.class public Lcom/amap/location/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/db/IDbHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/d/a/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/amap/location/d/a/b$a;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/d/a/b;->c:Z

    .line 7
    new-instance v0, Lcom/amap/location/d/a/b$a;

    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/amap/location/d/a/b$a;-><init>(Lcom/amap/location/d/a/b;Ljava/lang/String;I)V

    .line 12
    iput-object v0, p0, Lcom/amap/location/d/a/b;->b:Lcom/amap/location/d/a/b$a;

    .line 14
    return-void
.end method

.method private a(Lcom/amap/location/support/db/AmapContentValues;)Landroid/content/ContentValues;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 34
    :try_start_0
    const-class v2, Landroid/content/ContentValues;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/util/HashMap;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 36
    iget-object v4, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    const-string v3, "LocationDbHelper"

    .line 37
    invoke-static {v3, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 38
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 39
    :try_start_2
    iget-object v2, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 40
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "Double"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v7, "Boolean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_2
    const-string v7, "Short"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_3
    const-string v7, "Float"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_4
    const-string v7, "Long"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_5
    const-string v7, "Byte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_6
    const-string v7, "Integer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_7
    const-string v7, "byte[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_8
    const-string v7, "String"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 42
    :pswitch_0
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :pswitch_1
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto/16 :goto_0

    .line 44
    :pswitch_2
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 45
    :pswitch_3
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 46
    :pswitch_4
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 47
    :pswitch_5
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 48
    :pswitch_6
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto/16 :goto_0

    .line 49
    :pswitch_7
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 50
    :pswitch_8
    iget-object v6, p1, Lcom/amap/location/support/db/AmapContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_2
    move-object v2, v4

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v4

    goto :goto_3

    :catch_2
    move-exception p1

    .line 51
    :goto_3
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_8
        -0x51e5b596 -> :sswitch_7
        -0x2811e6e2 -> :sswitch_6
        0x1fd528 -> :sswitch_5
        0x243a9c -> :sswitch_4
        0x40d323c -> :sswitch_3
        0x4c2945c -> :sswitch_2
        0x67140408 -> :sswitch_1
        0x7a5c67f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "insert into "

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {p2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "?,"

    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p1, ") values ("

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "LocationDbHelper"

    .line 32
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Class;)Ljava/util/TreeMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "LocationDbHelper"

    .line 16
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 18
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p1, v3

    .line 19
    const-class v6, Lcom/amap/location/support/db/annotation/Column;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/amap/location/support/db/annotation/Column;

    if-eqz v5, :cond_0

    .line 20
    invoke-interface {v5}, Lcom/amap/location/support/db/annotation/Column;->index()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5}, Lcom/amap/location/support/db/annotation/Column;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    const-string p1, "\u6279\u91cf\u63d2\u5165\u6570\u636e\u9700\u8981\u4f7f\u7528Column\u6ce8\u89e3"

    .line 21
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    const-class v6, Lcom/amap/location/support/db/annotation/Column;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/amap/location/support/db/annotation/Column;

    .line 6
    invoke-interface {v6}, Lcom/amap/location/support/db/annotation/Column;->index()I

    move-result v6

    .line 7
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 8
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "Double"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "Byte[]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "Boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "short"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "float"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xf

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "Short"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_6
    const-string v5, "Float"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v5, "boolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_8
    const-string v5, "long"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x9

    goto :goto_2

    :sswitch_9
    const-string v5, "byte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_a
    const-string v5, "Long"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_b
    const-string v5, "Byte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_c
    const-string v5, "int"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_d
    const-string v5, "Integer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_e
    const-string v5, "double"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xd

    goto :goto_2

    :sswitch_f
    const-string v5, "byte[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_10
    const-string v5, "String"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x10

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 9
    :pswitch_0
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 10
    :pswitch_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p1, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_4

    .line 11
    :pswitch_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_4

    .line 12
    :pswitch_3
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x0

    :goto_3
    invoke-virtual {p1, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_4

    .line 13
    :pswitch_4
    check-cast v7, [B

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string p2, "LocationDbHelper"

    .line 15
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_10
        -0x51e5b596 -> :sswitch_f
        -0x4f08842f -> :sswitch_e
        -0x2811e6e2 -> :sswitch_d
        0x197ef -> :sswitch_c
        0x1fd528 -> :sswitch_b
        0x243a9c -> :sswitch_a
        0x2e6108 -> :sswitch_9
        0x32c67c -> :sswitch_8
        0x3db6c28 -> :sswitch_7
        0x40d323c -> :sswitch_6
        0x4c2945c -> :sswitch_5
        0x5d0225c -> :sswitch_4
        0x685847c -> :sswitch_3
        0x67140408 -> :sswitch_2
        0x777f368a -> :sswitch_1
        0x7a5c67f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    .line 56
    instance-of v0, p1, Landroid/database/sqlite/SQLiteFullException;

    const-string v1, "LocationDbHelper"

    if-eqz v0, :cond_0

    .line 57
    iget-boolean p2, p0, Lcom/amap/location/d/a/b;->c:Z

    if-nez p2, :cond_3

    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/amap/location/d/a/b;->c:Z

    .line 59
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 60
    :cond_0
    instance-of v0, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "no such table"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    new-instance p1, Lcom/amap/location/support/db/TableNotExistException;

    invoke-direct {p1, p2}, Lcom/amap/location/support/db/TableNotExistException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_2
    :goto_0
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "LocationDbHelper"

    if-nez v1, :cond_0

    .line 53
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "database is null"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "database not open"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_1
    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "LocationDbHelper"

    .line 16
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/d/a/b;->b:Lcom/amap/location/d/a/b$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "LocationDbHelper"

    .line 12
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public createTable(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p2

    .line 15
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    :catch_1
    :cond_0
    const/4 p1, -0x1

    .line 19
    return p1
.end method

.method public dropTable(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "DROP TABLE IF EXISTS "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public endTransaction()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "LocationDbHelper"

    .line 16
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 6
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public getTotalCount(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v3, "select count(*) from "

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 38
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 42
    return-wide v1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_0
    const-wide/16 v0, -0x1

    .line 56
    return-wide v0

    .line 57
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_1
    throw p1
.end method

.method public initDb(Lcom/amap/location/support/db/OnInitDbListener;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/d/a/b;->b:Lcom/amap/location/d/a/b$a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/d/a/b$a;->a(Lcom/amap/location/support/db/OnInitDbListener;)V

    .line 6
    iget-object p1, p0, Lcom/amap/location/d/a/b;->b:Lcom/amap/location/d/a/b$a;

    .line 8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "LocationDbHelper"

    .line 18
    const-string v1, "\u6570\u636e\u5e93\u6253\u5f00\u5931\u8d25"

    .line 20
    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    return-void
.end method

.method public insert(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lcom/amap/location/d/a/b;->a(Lcom/amap/location/support/db/AmapContentValues;)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p2

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public insert(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    const-string v0, "LocationDbHelper"

    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Class;)Ljava/util/TreeMap;

    move-result-object v1

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 8
    iget-object v2, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    invoke-direct {p0, v1, v2}, Lcom/amap/location/d/a/b;->a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    .line 13
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 14
    :try_start_2
    invoke-direct {p0, p2, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iget-object p1, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    .line 16
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    .line 18
    :goto_2
    iget-object p2, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_3

    .line 19
    :try_start_4
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 20
    invoke-static {v0, p2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_3
    :goto_3
    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-direct {p0, p3}, Lcom/amap/location/d/a/b;->a(Lcom/amap/location/support/db/AmapContentValues;)Landroid/content/ContentValues;

    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 16
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-wide p1

    .line 18
    :catch_0
    move-exception p2

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 22
    :cond_0
    const-wide/16 p1, -0x1

    .line 24
    return-wide p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v2, v1, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move-object v6, p4

    .line 16
    move-object/from16 v9, p5

    .line 18
    move-object/from16 v10, p6

    .line 20
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Lcom/amap/location/d/a/a;

    .line 26
    invoke-direct {v2, v0}, Lcom/amap/location/d/a/a;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object v2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    move-object v2, p1

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-virtual {v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Lcom/amap/location/d/a/a;

    .line 15
    invoke-direct {p3, p2}, Lcom/amap/location/d/a/a;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p3

    .line 19
    :catch_0
    move-exception p2

    .line 20
    invoke-direct {p0, p2, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "LocationDbHelper"

    .line 16
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public update(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/location/support/db/TableNotExistException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/d/a/b;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    invoke-direct {p0, p2}, Lcom/amap/location/d/a/b;->a(Lcom/amap/location/support/db/AmapContentValues;)Landroid/content/ContentValues;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p2

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/amap/location/d/a/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 22
    :cond_0
    const/4 p1, -0x1

    .line 23
    return p1
.end method
