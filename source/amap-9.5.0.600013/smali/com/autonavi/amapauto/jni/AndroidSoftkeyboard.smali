.class public Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidSoftkeyboard"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeClickDelKeyOnEmpty()V
.end method

.method public static native onEditorAction()Z
.end method

.method public static selectAll()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "selectAll "

    .line 1
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$a;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$a;-><init>()V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static selectAll(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "selectAll displayId={?}"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$b;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$b;-><init>(I)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native sendSoftInputContent(Ljava/lang/String;I)V
.end method

.method public static setEditTextSelection(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setEditTextSelection :{?}"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$h;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$h;-><init>(I)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setEditTextSelection(II)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setEditTextSelection "

    .line 3
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$c;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$c;-><init>(II)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setEditTextSelectionByDisplayId(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AndroidSoftkeyboard"

    .line 20
    const-string v2, "setEditTextSelectionByDisplayId :{?},displayId={?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$i;

    .line 27
    invoke-direct {v0, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$i;-><init>(II)V

    .line 30
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method public static setEditTextSelectionStartEndByDisplayId(III)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidSoftkeyboard"

    .line 13
    const-string v2, "setEditTextSelectionStartEndByDisplayId displayId={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$d;

    .line 20
    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$d;-><init>(III)V

    .line 23
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method public static setInputContent(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setInputContent :{?}"

    .line 1
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$f;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setInputContent(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setInputContent :content={?},displayId={?}"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$g;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$g;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setKeyboardType(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setKeyboardType :{?}"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$j;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$j;-><init>(I)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setKeyboardType(II)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setKeyboardType :{?},displayId={?}"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$k;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$k;-><init>(II)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMaxTextLenght(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setMaxTextLenght :{?}"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$l;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$l;-><init>(I)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMaxTextLenght(II)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v2, "setMaxTextLenght :{?},displayId={?}"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$m;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$m;-><init>(II)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native setMultiScreenInputStatus(ZI)V
.end method

.method public static setSoftInputVisiable(IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->setSoftInputVisiable(IZI)I

    move-result p0

    return p0
.end method

.method public static setSoftInputVisiable(IZI)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "AndroidSoftkeyboard"

    const-string v3, "setSoftInputVisiable imeOptions:{?} isVisiable:{?} displayId:{?}"

    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    const v1, 0xea61

    invoke-virtual {v0, v1}, Lse;->getOptionalValue(I)Leq$a;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;

    invoke-direct {v1, v0, p2, p1, p0}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard$e;-><init>(Leq$a;IZI)V

    invoke-static {v1}, Lbg0;->b(Ljava/lang/Runnable;)V

    return v2
.end method

.method public static native setSystemInputStatus(Z)V
.end method
