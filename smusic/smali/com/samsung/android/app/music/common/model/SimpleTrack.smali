.class public Lcom/samsung/android/app/music/common/model/SimpleTrack;
.super Ljava/lang/Object;
.source "SimpleTrack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ARTIST_SEPARATOR:Ljava/lang/String; = ","

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_ARTIST_ID:Ljava/lang/String; = "0"

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleTrack"


# instance fields
.field albumArtBigUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "largeSizeAlbumArtUrl",
            "largeSizeImageUrl"
        }
        value = "albumArtBigUrl"
    .end annotation
.end field

.field albumArtUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "imageUrl",
            "thumbImgUrl"
        }
        value = "albumArtUrl"
    .end annotation
.end field

.field albumId:Ljava/lang/String;

.field albumTitle:Ljava/lang/String;

.field artistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field artistNames:Ljava/lang/String;

.field audioId:J

.field audioType:Ljava/lang/String;

.field audioUrl:Ljava/lang/String;

.field protected cpAttrs:I

.field private diskNo:I

.field explicit:I

.field private mDrmType:I

.field rankingBadge:Ljava/lang/String;

.field rankingChg:I

.field serviceStat:Ljava/lang/String;

.field titleYn:Ljava/lang/String;

.field trackId:Ljava/lang/String;

.field private trackNo:I

.field trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/samsung/android/app/music/common/model/SimpleTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 85
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 87
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    .line 91
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->mDrmType:I

    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, -0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 85
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 87
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    .line 91
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->mDrmType:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->explicit:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->titleYn:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistNames:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 85
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 87
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    .line 91
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->mDrmType:I

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/common/model/artist/Artist;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackTitle"    # Ljava/lang/String;
    .param p3, "albumArtUrl"    # Ljava/lang/String;
    .param p4, "artist"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 85
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 87
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    .line 91
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->mDrmType:I

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/common/model/artist/Artist;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p4}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackTitle"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "albumTitle"    # Ljava/lang/String;
    .param p5, "audioUrl"    # Ljava/lang/String;
    .param p6, "artistNames"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 85
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 87
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    .line 91
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->mDrmType:I

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistNames:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackTitle"    # Ljava/lang/String;
    .param p3, "albumArtUrl"    # Ljava/lang/String;
    .param p4, "albumId"    # Ljava/lang/String;
    .param p5, "albumTitle"    # Ljava/lang/String;
    .param p6, "audioUrl"    # Ljava/lang/String;
    .param p7, "audioType"    # Ljava/lang/String;
    .param p8, "artistNames"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 85
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 87
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    .line 91
    iput v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->mDrmType:I

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 150
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 151
    iput-object p7, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    .line 152
    iput-object p8, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistNames:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public static convertToAlbum(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 616
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 617
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string v1, "album_id"

    const-string/jumbo v2, "source_album_id"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v1, "album"

    const-string v2, "album"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v1, "album_artist"

    const-string v2, "album"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v1, "album_cp_attrs"

    const-string v2, "cp_attrs"

    .line 621
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 620
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    return-object v0
.end method

.method public static convertToAudioMeta(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 11
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    .line 578
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v4, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "source_id"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "audioSourceId":Ljava/lang/String;
    const-string/jumbo v8, "source_id"

    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v8, "_data"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dummy_data_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string/jumbo v8, "title"

    const-string/jumbo v9, "title"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v8, "cp_attrs"

    const-string v9, "cp_attrs"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v8, "duration"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    const-string v8, "album_id"

    const-string/jumbo v9, "source_album_id"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v8, "album"

    const-string v9, "album"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v8, "album_artist"

    const-string v9, "album"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v8, "album_cp_attrs"

    const-string v9, "cp_attrs"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v8, "artist_id"

    const-string/jumbo v9, "source_artist_id"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v8, "artist"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, "serializedArtistNames":Ljava/lang/String;
    const-string v8, "artist"

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 599
    const-string v8, ", "

    const-string v9, ","

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, "refineArtistNames":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "artistNames":[Ljava/lang/String;
    array-length v8, v1

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 602
    const/4 v3, 0x1

    .line 603
    .local v3, "index":I
    array-length v8, v1

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v1, v7

    .line 604
    .local v0, "artistName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "multiple_artists_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    add-int/lit8 v3, v3, 0x1

    .line 603
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "artistName":Ljava/lang/String;
    .end local v1    # "artistNames":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v5    # "refineArtistNames":Ljava/lang/String;
    :cond_0
    const-string v7, "artist_cp_attrs"

    const-string v8, "cp_attrs"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    return-object v4
.end method

.method public static convertToAudioType(I)Ljava/lang/String;
    .locals 1
    .param p0, "cpAttrs"    # I

    .prologue
    .line 397
    sparse-switch p0, :sswitch_data_0

    .line 406
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 400
    :sswitch_0
    const-string v0, "3"

    goto :goto_0

    .line 402
    :sswitch_1
    const-string v0, "0"

    goto :goto_0

    .line 404
    :sswitch_2
    const-string v0, "4"

    goto :goto_0

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_0
        0x80001 -> :sswitch_2
        0x80002 -> :sswitch_1
        0x80008 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertToSimpleTrack(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 9
    .param p0, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 177
    new-instance v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioUrl()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, "ret":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageBigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistList(Ljava/util/ArrayList;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getExplicit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setExplicit(I)V

    .line 184
    return-object v0
.end method

.method public static convertToThumbnail(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 626
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 627
    .local v2, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "thumbnail_type"

    const/4 v4, 0x0

    .line 628
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 627
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const-string v3, "image_url"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "imageUrl":Ljava/lang/String;
    const-string v3, "image_url_big"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "imageBigUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 632
    const-string v3, "image_url_big"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_url_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 635
    invoke-static {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageSizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-object v2
.end method

.method public static createSimpleTrackFromTrackCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 10
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 709
    new-instance v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 711
    .local v6, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    const-string/jumbo v9, "source_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, "trackId":Ljava/lang/String;
    const-string/jumbo v9, "title"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 713
    .local v8, "trackTitle":Ljava/lang/String;
    const-string v9, "album_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "albumId":Ljava/lang/String;
    const-string v9, "artist"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "artistNames":Ljava/lang/String;
    const-string v9, "image_url_big"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "imageBigUrl":Ljava/lang/String;
    const-string v9, "image_url_middle"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "middleUrl":Ljava/lang/String;
    const-string v9, "image_url_small"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 718
    .local v5, "smallUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 721
    .local v3, "imageUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v6, v8}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackTitle(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v6, v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumId(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v6, v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistNames(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v6, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageUrl(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v6, v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 728
    return-object v6

    .line 718
    .end local v3    # "imageUrl":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    move-object v3, v5

    goto :goto_0
.end method

.method public static from(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 7
    .param p0, "content"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .prologue
    .line 530
    new-instance v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 531
    .local v1, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getTrackInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;->getTrackId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getTrackInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainTrackInfo;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageBigUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    .line 535
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getExplicit()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->explicit:I

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 539
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;

    .line 541
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;
    iget-object v3, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;->getArtistId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainArtistInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getRankingChg()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getRankingBadge()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    .line 545
    return-object v1
.end method

.method public static fromAudio(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 10
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 678
    new-instance v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v5}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 679
    .local v5, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    const/4 v6, 0x0

    .line 680
    .local v6, "trackId":Ljava/lang/String;
    const-string v7, "cp_attrs"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 681
    .local v1, "cpAttrs":I
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 682
    const-string v7, "local_track_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 686
    :goto_0
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAudioId(J)V

    .line 687
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    .line 688
    const-string/jumbo v7, "title"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackTitle(Ljava/lang/String;)V

    .line 689
    const-string/jumbo v7, "source_album_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumId(Ljava/lang/String;)V

    .line 690
    const-string v7, "album"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumTitle(Ljava/lang/String;)V

    .line 691
    invoke-static {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToAudioType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAudioType(Ljava/lang/String;)V

    .line 692
    const-string/jumbo v7, "source_artist_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, "sourceArtistId":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 695
    const-string v4, "dummyArtistId"

    .line 697
    :cond_0
    const-string v7, "artist"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "artistName":Ljava/lang/String;
    const-string v7, ", "

    const-string v8, ","

    .line 699
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "refineArtistName":Ljava/lang/String;
    const-string v7, "::"

    const-string v8, ","

    .line 701
    invoke-static {v4, v7, v3, v8}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 700
    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistList(Ljava/util/ArrayList;)V

    .line 703
    const-string v2, "?"

    .line 705
    .local v2, "imageUrl":Ljava/lang/String;
    return-object v5

    .line 684
    .end local v0    # "artistName":Ljava/lang/String;
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v3    # "refineArtistName":Ljava/lang/String;
    .end local v4    # "sourceArtistId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "source_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getImagePixelSize(Ljava/lang/String;)I
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 650
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 651
    :cond_0
    const-string v4, "SimpleTrack"

    const-string v6, "getImagePixelSize() url is empty"

    invoke-static {v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 674
    :cond_1
    :goto_0
    return v4

    .line 654
    :cond_2
    const-string v6, "http://"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "target":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "targetSplit":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    .line 657
    aget-object v5, v3, v8

    const-string v6, "Small"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 658
    const/16 v4, 0x60

    goto :goto_0

    .line 659
    :cond_3
    aget-object v5, v3, v8

    const-string v6, "Large"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 660
    const/4 v1, 0x0

    .line 662
    .local v1, "size":I
    const/4 v5, 0x2

    :try_start_0
    aget-object v5, v3, v5

    const-string v6, "Large"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 666
    :goto_1
    if-le v1, v4, :cond_1

    .line 670
    .end local v1    # "size":I
    :cond_4
    const/16 v4, 0x258

    goto :goto_0

    .line 663
    .restart local v1    # "size":I
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 672
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "size":I
    :cond_5
    const-string v4, "SimpleTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImageSize wrong url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 674
    goto :goto_0
.end method

.method private static getImageSizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-static {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImagePixelSize(Ljava/lang/String;)I

    move-result v0

    .line 641
    .local v0, "size":I
    const/16 v1, 0x60

    if-gt v0, v1, :cond_0

    .line 642
    const-string/jumbo v1, "small"

    .line 646
    :goto_0
    return-object v1

    .line 643
    :cond_0
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_1

    .line 644
    const-string v1, "middle"

    goto :goto_0

    .line 646
    :cond_1
    const-string v1, "big"

    goto :goto_0
.end method

.method private getSourceArtistId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public convertArtistNameListToArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 295
    const/4 v0, 0x0

    .line 301
    :cond_0
    return-object v0

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 298
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 513
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 519
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 516
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 482
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "artistId":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    .end local v0    # "artistId":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "delimeter"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 326
    iget-object v4, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 327
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const/4 v1, 0x1

    .line 328
    .local v1, "isFirst":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 334
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    .line 335
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 332
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 338
    .end local v1    # "isFirst":Z
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getArtistList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistNameArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArtistNames()Ljava/lang/String;
    .locals 5

    .prologue
    .line 443
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistNames:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 444
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistNames:Ljava/lang/String;

    .line 461
    :goto_0
    return-object v1

    .line 447
    :cond_0
    const/4 v1, 0x0

    .line 448
    .local v1, "artistNames":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 449
    const-string v1, ""

    .line 450
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 452
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    .line 454
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 460
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistNames(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    return-wide v0
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    const-string v0, "0"

    .line 393
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCpAttrs()I
    .locals 2

    .prologue
    const v0, 0x80002

    .line 411
    iget v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 423
    :goto_0
    :pswitch_0
    return v0

    .line 416
    :pswitch_1
    const v0, 0x10001

    goto :goto_0

    .line 418
    :pswitch_2
    const v0, 0x80001

    goto :goto_0

    .line 423
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->cpAttrs:I

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDiscNo()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    return v0
.end method

.method public getDisplayArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    const-string v0, ", "

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertArtistNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getExplicit()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->explicit:I

    return v0
.end method

.method public getImageBigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingChg()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    return v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNo()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    return v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasAvailableAlbum()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvailableArtist()Z
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isVariousArtist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExplicit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
    iget v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->explicit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalTrack()Z
    .locals 2

    .prologue
    .line 260
    const-string v0, "3"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    const-string v1, "@"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    const-string v2, "H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRankVisible()Z
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareable()Z
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitle()Z
    .locals 2

    .prologue
    .line 286
    const-string v0, "Y"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->titleYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVariousArtist()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->isVariousArtist()Z

    move-result v0

    .line 495
    :cond_0
    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setArtistList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 383
    return-void
.end method

.method public setArtistNameArray(Ljava/lang/String;)V
    .locals 6
    .param p1, "names"    # Ljava/lang/String;

    .prologue
    .line 469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 470
    if-nez p1, :cond_1

    .line 471
    const-string v3, "SimpleTrack"

    const-string/jumbo v4, "setArtistNameArray names null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void

    .line 474
    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "eachName":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 476
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    const-string v5, "0"

    invoke-direct {v0, v5, v2}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setArtistNames(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistNames"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistNames:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setAudioId(J)V
    .locals 1
    .param p1, "audioId"    # J

    .prologue
    .line 499
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    .line 500
    return-void
.end method

.method public setAudioType(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioType"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setAudioUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 435
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 438
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 439
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDiscNo(I)V
    .locals 0
    .param p1, "discNo"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    .line 103
    return-void
.end method

.method public setExplicit(I)V
    .locals 0
    .param p1, "explicit"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->explicit:I

    .line 379
    return-void
.end method

.method public setForceAudioUrlNull()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setImageBigUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageBigUrl"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setTrackNo(I)V
    .locals 0
    .param p1, "trackNo"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    .line 107
    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackTitle"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 560
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string/jumbo v2, "source_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string/jumbo v2, "source_artist_id"

    const-string v3, "::"

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v2, "artist"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v2, "source_album_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v2, "album"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v2, "cp_attrs"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getCpAttrs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string v2, "image_url"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageBigUrl()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "bigUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    const-string v2, "image_url_big"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artistList - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artistId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumArtUrl - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumArtBigUrl - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->titleYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 202
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingChg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->diskNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->trackNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleTrack;->artistNames:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    return-void
.end method
