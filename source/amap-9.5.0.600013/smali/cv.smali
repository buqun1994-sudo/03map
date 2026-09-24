.class public Lcv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcv$c;,
        Lcv$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcv;->a:Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcv$c;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcv$c;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcv;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcv$c;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcv;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, v0, Lcv$c;->a:Ljava/lang/String;

    iget-object v2, v0, Lcv$c;->b:Ljava/lang/String;

    iget-object v0, v0, Lcv$c;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/ArrayList;Lcv$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcv;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p2, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p3, v0, v1

    .line 10
    const/4 v2, 0x2

    .line 11
    aput-object p4, v0, v2

    .line 13
    const-string v2, "[ALSimulate] IntentCreator"

    .line 15
    const-string v3, "addKeyValue standardProtocolKey = {?}, standardProtocolValue = {?}, customStandardProtocolKeyType = {?}"

    .line 17
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :try_start_0
    invoke-virtual {p0, p4}, Lcv;->c(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, p2, p3, p4}, Lcv;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/reflect/Field;

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-nez p1, :cond_2

    .line 43
    const-class p1, Lcom/autonavi/amapauto/protocol/constant/StandardProtocolKey;

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    move-result-object p1

    .line 49
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 52
    const-class p4, Luc;

    .line 54
    invoke-virtual {p1, p4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Luc;

    .line 60
    invoke-interface {p1}, Luc;->baseType()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p2, p3, p1}, Lcv;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :goto_1
    iget-object p1, p0, Lcv;->a:Landroid/content/Intent;

    .line 80
    return-object p1
.end method

.method public b()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcv;->a:Landroid/content/Intent;

    .line 3
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, ""

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput-object p2, v1, v3

    .line 10
    const/4 v4, 0x2

    .line 11
    aput-object p3, v1, v4

    .line 13
    const-string v5, "[ALSimulate] IntentCreator"

    .line 15
    const-string v6, "putIntentKeyValue standardProtocolKey = {?}, standardProtocolValue = {?}, baseType = {?}"

    .line 17
    invoke-static {v5, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const-string v1, "String"

    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object p3, p0, Lcv;->a:Landroid/content/Intent;

    .line 30
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_0
    const-string v1, "int"

    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    move-result p2

    .line 47
    iget-object p3, p0, Lcv;->a:Landroid/content/Intent;

    .line 49
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    goto/16 :goto_1

    .line 54
    :cond_1
    const-string v1, "double"

    .line 56
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 62
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 65
    move-result-wide p2

    .line 66
    iget-object v0, p0, Lcv;->a:Landroid/content/Intent;

    .line 68
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 71
    goto/16 :goto_1

    .line 73
    :cond_2
    const-string v1, "float"

    .line 75
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 81
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 84
    move-result p2

    .line 85
    iget-object p3, p0, Lcv;->a:Landroid/content/Intent;

    .line 87
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 90
    goto/16 :goto_1

    .line 92
    :cond_3
    const-string v1, "long"

    .line 94
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_4

    .line 100
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 103
    move-result-wide p2

    .line 104
    iget-object v0, p0, Lcv;->a:Landroid/content/Intent;

    .line 106
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    goto/16 :goto_1

    .line 111
    :cond_4
    const-string v1, "byte"

    .line 113
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_5

    .line 119
    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 122
    move-result p2

    .line 123
    int-to-long p2, p2

    .line 124
    iget-object v0, p0, Lcv;->a:Landroid/content/Intent;

    .line 126
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 129
    goto/16 :goto_1

    .line 131
    :cond_5
    const-string v1, "short"

    .line 133
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_6

    .line 139
    invoke-static {p2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 142
    move-result p2

    .line 143
    int-to-long p2, p2

    .line 144
    iget-object v0, p0, Lcv;->a:Landroid/content/Intent;

    .line 146
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    goto/16 :goto_1

    .line 151
    :cond_6
    const-string v1, "boolean"

    .line 153
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_7

    .line 159
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 162
    move-result p2

    .line 163
    iget-object p3, p0, Lcv;->a:Landroid/content/Intent;

    .line 165
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    goto :goto_1

    .line 169
    :cond_7
    const-string v1, "doubleArray"

    .line 171
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result p3

    .line 175
    if-eqz p3, :cond_b

    .line 177
    :try_start_0
    const-string p3, "#"

    .line 179
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 182
    move-result-object p3

    .line 183
    array-length v1, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    if-lez v1, :cond_b

    .line 186
    const-string v6, "null"

    .line 188
    const-string v7, ""

    .line 190
    if-ne v1, v3, :cond_8

    .line 192
    if-ne v1, v3, :cond_b

    .line 194
    :try_start_1
    aget-object v8, p3, v2

    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v8

    .line 200
    if-nez v8, :cond_b

    .line 202
    aget-object v8, p3, v2

    .line 204
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v8

    .line 208
    if-nez v8, :cond_b

    .line 210
    :cond_8
    new-array v8, v1, [D

    .line 212
    const/4 v9, 0x0

    .line 213
    :goto_0
    if-ge v9, v1, :cond_a

    .line 215
    aget-object v10, p3, v9

    .line 217
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    move-result v10

    .line 221
    if-nez v10, :cond_9

    .line 223
    aget-object v10, p3, v9

    .line 225
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v10

    .line 229
    if-nez v10, :cond_9

    .line 231
    aget-object v10, p3, v2

    .line 233
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result v10

    .line 237
    if-nez v10, :cond_9

    .line 239
    aget-object v10, p3, v9

    .line 241
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 244
    move-result-object v10

    .line 245
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 248
    move-result-wide v10

    .line 249
    aput-wide v10, v8, v9

    .line 251
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 253
    goto :goto_0

    .line 254
    :cond_a
    iget-object p3, p0, Lcv;->a:Landroid/content/Intent;

    .line 256
    invoke-virtual {p3, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    goto :goto_1

    .line 260
    :catch_0
    move-exception p3

    .line 261
    new-array v0, v0, [Ljava/lang/Object;

    .line 263
    aput-object p1, v0, v2

    .line 265
    aput-object p2, v0, v3

    .line 267
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 270
    move-result-object p1

    .line 271
    aput-object p1, v0, v4

    .line 273
    const-string p1, "BaseType.DOUBLE_ARRAY standardProtocolKey = {?},standardProtocolValue = {?} ex = {?}"

    .line 275
    invoke-static {v5, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_b
    :goto_1
    iget-object p1, p0, Lcv;->a:Landroid/content/Intent;

    .line 280
    return-object p1
.end method
