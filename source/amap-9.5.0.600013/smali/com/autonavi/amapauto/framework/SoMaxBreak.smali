.class public Lcom/autonavi/amapauto/framework/SoMaxBreak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/autonavi/amapauto/framework/SoMaxBreak;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/framework/SoMaxBreak;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/framework/SoMaxBreak;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/framework/SoMaxBreak;->b:Lcom/autonavi/amapauto/framework/SoMaxBreak;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/framework/SoMaxBreak;->a:I

    .line 7
    return-void
.end method

.method public static native checkFreelist()I
.end method

.method public static native collectInstructions()I
.end method

.method public static native extendSoSpace()I
.end method

.method public static native getCollectionDataResult()I
.end method

.method public static native getExtendSoCount()I
.end method

.method public static native getSoCount()I
.end method
