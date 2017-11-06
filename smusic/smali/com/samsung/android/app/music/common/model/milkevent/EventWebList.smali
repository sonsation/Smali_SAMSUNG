.class public Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "EventWebList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;",
            ">;"
        }
    .end annotation
.end field

.field private moreYn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->eventList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->moreYn:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getEventWebList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->eventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMore()Z
    .locals 2

    .prologue
    .line 41
    const-string v0, "Y"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->moreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->eventList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->moreYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    return-void
.end method
