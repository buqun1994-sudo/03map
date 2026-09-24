.class public interface abstract annotation Lz70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lz70;
        doubleValues = {}
        intValues = {}
        isLonLat = false
        isMustFill = false
        maxDoubleValue = 0.0
        maxValue = 0x7fffffff
        minDoubleValue = 0.0
        minValue = -0x80000000
        supportVersion = 0x0
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract doubleValues()[D
.end method

.method public abstract intValues()[I
.end method

.method public abstract isLonLat()Z
.end method

.method public abstract isMustFill()Z
.end method

.method public abstract maxDoubleValue()D
.end method

.method public abstract maxValue()I
.end method

.method public abstract minDoubleValue()D
.end method

.method public abstract minValue()I
.end method
