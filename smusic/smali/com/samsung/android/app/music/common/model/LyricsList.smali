.class public Lcom/samsung/android/app/music/common/model/LyricsList;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "LyricsList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/LyricsList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lyrics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/LyricsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/app/music/common/model/LyricsList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/LyricsList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/LyricsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 13
    sget-object v0, Lcom/samsung/android/app/music/common/model/LyricsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricsList;->lyrics:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public getLyrics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/LyricsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricsList;->lyrics:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricsList;->lyrics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 24
    return-void
.end method
