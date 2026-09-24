.class public final Lfloatapp/trafficlight/CruiseTrafficLightVoice$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    check-cast p2, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;

    iget v0, p1, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionValue:I

    iget v1, p2, Lfloatapp/trafficlight/CruiseTrafficLightVoice$DirectionInfo;->directionValue:I

    sget-object v2, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->DIRECTION_PRIORITY:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int p1, p0, v3

    return p1
.end method
