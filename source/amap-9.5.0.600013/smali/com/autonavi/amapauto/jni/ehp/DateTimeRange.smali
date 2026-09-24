.class public Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private daysOfMonth:I

.field private daysOfWeek:I

.field private endCalendarWeek:I

.field private endHourDaily:I

.field private endHourSingle:I

.field private endMinute:I

.field private endMonth:I

.field private endWeekdayInMonth:I

.field private endYear:I

.field private end_dayOfMonth:I

.field private end_dayOfWeek:I

.field private end_weekInMonth:I

.field private mLogEnable:I

.field private monthsOfYear:I

.field private specialTimes:I

.field private startCalendarWeek:I

.field private startDayOfMonth:I

.field private startDayOfWeek:I

.field private startHourDaily:I

.field private startHourSingle:I

.field private startMinute:I

.field private startMonth:I

.field private startWeekInMonth:I

.field private startWeekdayInMonth:I

.field private startYear:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->mLogEnable:I

    .line 7
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->isLogEnable()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "create trace  "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/Throwable;

    .line 25
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 28
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    const-string v2, "DateTimeRange"

    .line 44
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method private isLogEnable()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->mLogEnable:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    invoke-static {}, Lrv;->H()Lrv;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "test_DateTimeRange"

    .line 13
    invoke-virtual {v0, v1, v2}, Lrv;->E(Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->mLogEnable:I

    .line 19
    :cond_0
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->mLogEnable:I

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 24
    const/4 v2, 0x1

    .line 25
    :cond_1
    return v2
.end method


# virtual methods
.method public getDaysOfMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->daysOfMonth:I

    .line 3
    return v0
.end method

.method public getDaysOfWeek()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->daysOfWeek:I

    .line 3
    return v0
.end method

.method public getEndCalendarWeek()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endCalendarWeek:I

    .line 3
    return v0
.end method

.method public getEndHourDaily()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endHourDaily:I

    .line 3
    return v0
.end method

.method public getEndHourSingle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endHourSingle:I

    .line 3
    return v0
.end method

.method public getEndMinute()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endMinute:I

    .line 3
    return v0
.end method

.method public getEndMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endMonth:I

    .line 3
    return v0
.end method

.method public getEndWeekdayInMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endWeekdayInMonth:I

    .line 3
    return v0
.end method

.method public getEndYear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endYear:I

    .line 3
    return v0
.end method

.method public getEnd_dayOfMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->end_dayOfMonth:I

    .line 3
    return v0
.end method

.method public getEnd_dayOfWeek()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->end_dayOfWeek:I

    .line 3
    return v0
.end method

.method public getEnd_weekInMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->end_weekInMonth:I

    .line 3
    return v0
.end method

.method public getMonthsOfYear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->monthsOfYear:I

    .line 3
    return v0
.end method

.method public getSpecialTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->specialTimes:I

    .line 3
    return v0
.end method

.method public getStartCalendarWeek()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startCalendarWeek:I

    .line 3
    return v0
.end method

.method public getStartDayOfMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startDayOfMonth:I

    .line 3
    return v0
.end method

.method public getStartDayOfWeek()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startDayOfWeek:I

    .line 3
    return v0
.end method

.method public getStartHourDaily()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startHourDaily:I

    .line 3
    return v0
.end method

.method public getStartHourSingle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startHourSingle:I

    .line 3
    return v0
.end method

.method public getStartMinute()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startMinute:I

    .line 3
    return v0
.end method

.method public getStartMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startMonth:I

    .line 3
    return v0
.end method

.method public getStartWeekInMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startWeekInMonth:I

    .line 3
    return v0
.end method

.method public getStartWeekdayInMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startWeekdayInMonth:I

    .line 3
    return v0
.end method

.method public getStartYear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startYear:I

    .line 3
    return v0
.end method

.method public setDaysOfMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->daysOfMonth:I

    .line 3
    return-void
.end method

.method public setDaysOfWeek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->daysOfWeek:I

    .line 3
    return-void
.end method

.method public setEndCalendarWeek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endCalendarWeek:I

    .line 3
    return-void
.end method

.method public setEndHourDaily(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endHourDaily:I

    .line 3
    return-void
.end method

.method public setEndHourSingle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endHourSingle:I

    .line 3
    return-void
.end method

.method public setEndMinute(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endMinute:I

    .line 3
    return-void
.end method

.method public setEndMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endMonth:I

    .line 3
    return-void
.end method

.method public setEndWeekdayInMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endWeekdayInMonth:I

    .line 3
    return-void
.end method

.method public setEndYear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->endYear:I

    .line 3
    return-void
.end method

.method public setEnd_dayOfMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->end_dayOfMonth:I

    .line 3
    return-void
.end method

.method public setEnd_dayOfWeek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->end_dayOfWeek:I

    .line 3
    return-void
.end method

.method public setEnd_weekInMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->end_weekInMonth:I

    .line 3
    return-void
.end method

.method public setMonthsOfYear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->monthsOfYear:I

    .line 3
    return-void
.end method

.method public setSpecialTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->specialTimes:I

    .line 3
    return-void
.end method

.method public setStartCalendarWeek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startCalendarWeek:I

    .line 3
    return-void
.end method

.method public setStartDayOfMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startDayOfMonth:I

    .line 3
    return-void
.end method

.method public setStartDayOfWeek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startDayOfWeek:I

    .line 3
    return-void
.end method

.method public setStartHourDaily(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startHourDaily:I

    .line 3
    return-void
.end method

.method public setStartHourSingle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startHourSingle:I

    .line 3
    return-void
.end method

.method public setStartMinute(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startMinute:I

    .line 3
    return-void
.end method

.method public setStartMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startMonth:I

    .line 3
    return-void
.end method

.method public setStartWeekInMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startWeekInMonth:I

    .line 3
    return-void
.end method

.method public setStartWeekdayInMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startWeekdayInMonth:I

    .line 3
    return-void
.end method

.method public setStartYear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;->startYear:I

    .line 3
    return-void
.end method
