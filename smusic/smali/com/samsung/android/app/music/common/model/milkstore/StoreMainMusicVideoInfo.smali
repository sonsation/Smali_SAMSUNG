.class public Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;
.super Ljava/lang/Object;
.source "StoreMainMusicVideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mvId:Ljava/lang/String;

.field mvTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvTitle:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getMvTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setMvId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mvId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMvTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mvTitle"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvTitle:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->mvTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return-void
.end method
