.class public Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;
.super Ljava/lang/Object;
.source "MusicVideoContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field private contentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentId"
    .end annotation
.end field

.field private contentOrder:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentOrder"
    .end annotation
.end field

.field private contentTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentTitle"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentType"
    .end annotation
.end field

.field private explicit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "explicit"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private length:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mvInfo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentType:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentTitle:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentOrder:Ljava/lang/Integer;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->imageUrl:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->explicit:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->length:Ljava/lang/Integer;

    .line 58
    const-class v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->artistList:Ljava/util/List;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentTitle"    # Ljava/lang/String;
    .param p4, "contentOrder"    # Ljava/lang/Integer;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "explicit"    # I
    .param p7, "length"    # Ljava/lang/Integer;
    .param p8, "mvInfo"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p9, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentType:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentId:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentTitle:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentOrder:Ljava/lang/Integer;

    .line 69
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->imageUrl:Ljava/lang/String;

    .line 70
    iput p6, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->explicit:I

    .line 71
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->length:Ljava/lang/Integer;

    .line 72
    iput-object p8, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    .line 73
    iput-object p9, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->artistList:Ljava/util/List;

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentOrder()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->explicit:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->length:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMvInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 113
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

    .line 158
    iget v1, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->explicit:I

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
    .line 118
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->contentOrder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->length:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->mvInfo:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;->artistList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 92
    return-void
.end method
