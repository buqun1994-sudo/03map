.class public Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterSurveyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contact:Ljava/lang/String;

.field public listAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/deviceadapter/DevAdapterAnswer;",
            ">;"
        }
    .end annotation
.end field

.field public resultType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
