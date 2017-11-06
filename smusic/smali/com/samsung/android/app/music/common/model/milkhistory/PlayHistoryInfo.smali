.class public Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PlayHistoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endTime:Ljava/lang/String;

.field playHistories:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playeventList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->startTime:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->endTime:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->playHistories:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public static createRadioHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "dateStamp"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->createPlayEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayHistories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->playHistories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->playHistories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 58
    .local v2, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 59
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->playHistories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .line 60
    .local v1, "track":Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    goto :goto_0

    .line 63
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    :cond_0
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->playHistories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 33
    return-void
.end method
