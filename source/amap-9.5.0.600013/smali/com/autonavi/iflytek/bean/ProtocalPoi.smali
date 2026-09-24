.class public Lcom/autonavi/iflytek/bean/ProtocalPoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/iflytek/bean/ProtocalPoi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:D

.field public k:D

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/iflytek/bean/ProtocalPoi$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/iflytek/bean/ProtocalPoi$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->h:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->d:D

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->e:D

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->f:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->g:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->h:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->i:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 64
    move-result-wide v0

    .line 65
    iput-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->j:D

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 70
    move-result-wide v0

    .line 71
    iput-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->k:D

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->l:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->m:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->n:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->d:D

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 21
    iget-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->e:D

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 26
    iget p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->f:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->g:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->h:I

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->i:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->j:D

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 51
    iget-wide v0, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->k:D

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->l:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->m:I

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProtocalPoi;->n:Ljava/lang/String;

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
