.class public interface abstract Lcom/autonavi/common/imageloader/DrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract createDrawable(Landroid/graphics/Movie;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLoadingDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSize(Landroid/graphics/Bitmap;)I
.end method

.method public abstract getSize(Landroid/graphics/Movie;)I
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract parseResource(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract parseResource(Landroid/graphics/Movie;)Landroid/graphics/Movie;
.end method
