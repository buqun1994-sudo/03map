.class public Lky$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 0

    .line 1
    invoke-static {p1}, Lvy;->a(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
