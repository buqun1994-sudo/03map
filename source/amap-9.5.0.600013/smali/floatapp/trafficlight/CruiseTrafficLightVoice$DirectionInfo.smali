.class public final Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;
.super Ljava/lang/Object;


# instance fields
.field public final countdown:I

.field public final currentState:I

.field public final directionName:Ljava/lang/String;

.field public final directionValue:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionValue:I

    iput-object p2, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionName:Ljava/lang/String;

    iput p3, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->countdown:I

    iput p4, p0, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->currentState:I

    return-void
.end method
