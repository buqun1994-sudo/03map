.class public Lcom/autonavi/amapauto/framework/LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIBRARY_STATE_ERROR:I = 0x2

.field public static final LIBRARY_STATE_LOAD:I = 0x1

.field public static final LIBRARY_STATE_UNLOAD:I = 0x0

.field public static final LIBRARY_TYPE_JAVA:I = 0x1

.field public static final LIBRARY_TYPE_NATIVE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadSoByAuto(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    :goto_0
    return-void
.end method

.method private static native nativeAddLibraryPath(Ljava/lang/String;I)V
.end method

.method private static native nativeBlockLibrary(Ljava/lang/String;)V
.end method

.method private static native nativeEnableHook(Z)V
.end method

.method private static native nativeIsEnableHook()Z
.end method

.method private static native nativeLoadLibrary(Ljava/lang/String;)I
.end method

.method private static native nativeLoadedLibrary(Ljava/lang/String;)V
.end method

.method private static native nativeRegisterLibrary(Ljava/lang/String;I[Ljava/lang/String;)V
.end method

.method private static native nativeRun()V
.end method

.method private static native nativeSetOrder([Ljava/lang/String;)V
.end method

.method private static native nativeUnblockLibrary(Ljava/lang/String;)V
.end method

.method private static native nativeUnloadLibrary(Ljava/lang/String;)I
.end method


# virtual methods
.method public addLibraryPath(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeAddLibraryPath(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public blockLibrary(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeBlockLibrary(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public enableHook(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeEnableHook(Z)V

    .line 4
    return-void
.end method

.method public isEnableHook()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeIsEnableHook()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public loadLibrary(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeLoadLibrary(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public loadedLibrary(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeLoadedLibrary(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public registerLibrary(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeRegisterLibrary(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeRun()V

    .line 4
    return-void
.end method

.method public setOrder([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeSetOrder([Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public unblockLibrary(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeUnblockLibrary(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public unloadLibrary(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/LibraryLoader;->nativeUnloadLibrary(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method
