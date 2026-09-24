.class public Lcom/autonavi/iflytek/bean/ProviderPoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/iflytek/bean/ProviderPoi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/iflytek/bean/ProviderPoi$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/iflytek/bean/ProviderPoi$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null"

    .line 2
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    const-string v0, "0"

    .line 5
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    const-string v1, "100"

    .line 8
    iput-object v1, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->g:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->h:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->i:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->j:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null"

    .line 14
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    const-string v0, "0"

    .line 17
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->d:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    const-string v1, ""

    .line 19
    iput-object v1, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    const-string v1, "100"

    .line 20
    iput-object v1, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->g:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->h:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->i:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->j:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->k:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->g:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->h:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->i:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->j:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->g:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->h:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->i:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->j:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/autonavi/iflytek/bean/ProviderPoi;->k:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
