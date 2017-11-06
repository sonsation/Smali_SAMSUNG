.class public Lcom/samsung/android/app/music/common/model/AlbumDiscSection;
.super Lcom/samsung/android/app/music/common/model/AlbumTrack;
.source "AlbumDiscSection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumDiscSection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private section:I

.field private sectionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AlbumDiscSection$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "section"    # I
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/AlbumTrack;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->sectionName:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->section:I

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/AlbumTrack;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->sectionName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->section:I

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getSection()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->section:I

    return v0
.end method

.method public getSectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->sectionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->sectionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirstSection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v1, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->section:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "section - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->sectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->sectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/samsung/android/app/music/common/model/AlbumDiscSection;->section:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    return-void
.end method
