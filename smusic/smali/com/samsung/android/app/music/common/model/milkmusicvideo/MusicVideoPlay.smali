.class public Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
.super Ljava/lang/Object;
.source "MusicVideoPlay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;",
            ">;"
        }
    .end annotation
.end field

.field private expiredTime:Ljava/lang/String;

.field private explicit:I

.field private length:Ljava/lang/String;

.field private mvId:Ljava/lang/String;

.field private mvTitle:Ljava/lang/String;

.field private mvUrl:Ljava/lang/String;

.field private settlementExt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvTitle:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "mvId"    # Ljava/lang/String;
    .param p2, "mvTitle"    # Ljava/lang/String;
    .param p3, "length"    # Ljava/lang/String;
    .param p4, "mvUrl"    # Ljava/lang/String;
    .param p5, "expiredTime"    # Ljava/lang/String;
    .param p6, "explicit"    # I
    .param p7, "settlementExt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p8, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvTitle:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvUrl:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    .line 54
    iput p6, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    .line 55
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getExpiredTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    return v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicVideoArtist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getMvTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMvUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSettlementExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isExplicit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 136
    iget v1, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->length:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->mvUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->expiredTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->settlementExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 74
    return-void
.end method
