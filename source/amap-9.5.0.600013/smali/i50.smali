.class public abstract Li50;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/Parcelable$Creator;[B)Landroid/os/Parcelable;
    .locals 0

    .line 1
    invoke-static {p1}, Li50;->f([B)Landroid/os/Parcel;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/Parcelable;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 14
    return-object p0
.end method

.method public static b(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-array v0, v0, [B

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 14
    invoke-static {p0, v0}, Li50;->a(Landroid/os/Parcelable$Creator;[B)Landroid/os/Parcelable;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-static {p0, p1, v1, v0}, Li50;->d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/List;I)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static d(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/List;I)Ljava/util/List;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    move-result v1

    .line 8
    new-array v1, v1, [B

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 13
    invoke-static {p0, v1}, Li50;->a(Landroid/os/Parcelable$Creator;[B)Landroid/os/Parcelable;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object p2
.end method

.method public static e(Landroid/os/Parcelable;)[B
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    return-object p0
.end method

.method public static f([B)Landroid/os/Parcel;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 13
    return-object v0
.end method

.method public static final g(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Li50;->e(Landroid/os/Parcelable;)[B

    .line 11
    move-result-object p1

    .line 12
    array-length v0, p1

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 19
    return-void
.end method

.method public static final h(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_1

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/os/Parcelable;

    .line 30
    invoke-static {p0, v1}, Li50;->g(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void

    .line 37
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 38
    new-array v1, v0, [Ljava/lang/Object;

    .line 40
    const-string v2, "ParcelableUtil"

    .line 42
    const-string v3, "parcelableList must not be null"

    .line 44
    invoke-static {v2, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
