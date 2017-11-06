.class public Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "VerifiedTrackInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACK_DOWNLOAD_VERIFICATION_MANDATORY_PARAMETER_EMPTY:I = 0x44e

.field public static final TRACK_DOWNLOAD_VERIFICATION_ORDER_ERROR:I = 0x2198


# instance fields
.field private drmSubscription:Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    .line 35
    sget-object v0, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    .line 37
    const-class v0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->drmSubscription:Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDrmSubscription()Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->drmSubscription:Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;

    return-object v0
.end method

.method public getSubscriptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVerifiedTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTrackDownloadVerificationList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 98
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 99
    .local v2, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 100
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;

    .line 101
    .local v1, "track":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    goto :goto_0

    .line 104
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;
    :cond_0
    return-object v2
.end method

.method public toContentValuesOrderArray(Ljava/lang/String;)[Landroid/content/ContentValues;
    .locals 7
    .param p1, "serializedIds"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "ids":[Ljava/lang/String;
    array-length v5, v0

    iget-object v6, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 110
    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Landroid/content/ContentValues;

    .line 111
    .local v4, "values":[Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 112
    .local v1, "idsValue":Landroid/content/ContentValues;
    const-string/jumbo v5, "serializedIds"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 114
    const/4 v2, 0x1

    .line 115
    .local v2, "index":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;

    .line 116
    .local v3, "track":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    aput-object v6, v4, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    goto :goto_0

    .line 121
    .end local v1    # "idsValue":Landroid/content/ContentValues;
    .end local v2    # "index":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;
    .end local v4    # "values":[Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
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
    .line 47
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->subscriptionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->drmSubscription:Lcom/samsung/android/app/music/common/model/purchase/DrmSubscription;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    return-void
.end method
