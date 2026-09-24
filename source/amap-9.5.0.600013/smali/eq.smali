.class public interface abstract Leq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxr;
.implements Lnt;
.implements Lk6$d;
.implements Lkq;
.implements Lyq;
.implements Lsr;
.implements Lvq;
.implements Lks;
.implements Lis;
.implements Luq;
.implements Lfs;
.implements Lfr;
.implements Lvt;
.implements Ljq;
.implements Lpt;
.implements Lat;
.implements Lwt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leq$a;
    }
.end annotation


# virtual methods
.method public abstract abandonAppFocus(I)V
.end method

.method public abstract addAppFocusChange(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V
.end method

.method public abstract cancelSliceNotification(I)V
.end method

.method public abstract cleanup()Z
.end method

.method public abstract clearSliceNotification()V
.end method

.method public abstract getBooleanValue(I)Z
.end method

.method public abstract getCustomActivityOptions()Landroid/app/ActivityOptions;
.end method

.method public abstract getFloatValue(I)F
.end method

.method public abstract getIntValue(I)I
.end method

.method public abstract getOptionalValue(I)Leq$a;
.end method

.method public abstract getSpecPermissions()Ljava/util/Map;
.end method

.method public abstract getStringValue(I)Ljava/lang/String;
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onWindowFocusChanged(Landroid/app/Activity;Z)V
.end method

.method public abstract removeAppFocusChange(Lcom/autonavi/amapauto/jni/AutoCarAppFocusManager$c;)V
.end method

.method public abstract requestAppFocus(ILcom/autonavi/amapauto/jni/AutoCarAppFocusManager$d;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendSliceNotification(I)V
.end method

.method public abstract setOptionalValue(ILeq$a;)V
.end method

.method public abstract startup()Z
.end method
