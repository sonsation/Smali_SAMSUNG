.class public Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;
.super Ljava/lang/Object;
.source "RecommendRadioBox.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private radioBoxId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioBoxId"
    .end annotation
.end field

.field private radioBoxTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioBoxTitle"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->radioBoxId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->radioBoxTitle:Ljava/lang/String;

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

.method public getRadioBoxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->radioBoxId:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioBoxTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->radioBoxTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->radioBoxId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->radioBoxTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return-void
.end method
