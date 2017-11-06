.class public Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
.super Ljava/lang/Object;
.source "FavoriteList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FavoriteList"


# instance fields
.field public albumId:Ljava/lang/String;

.field public albumTitle:Ljava/lang/String;

.field public artistId:Ljava/lang/String;

.field public artistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field public contentId:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public explicit:I

.field public imageUrl:Ljava/lang/String;

.field public latestUpdateDate:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public thunmbnailId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumId:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumTitle:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistList:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "thumbImgUrl"    # Ljava/lang/String;
    .param p5, "explicit"    # I
    .param p6, "latestUpdateDate"    # Ljava/lang/String;
    .param p7, "thunmbnailId"    # J

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    .line 104
    iput p5, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    .line 105
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    .line 106
    iput-wide p7, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "explicit"    # I
    .param p6, "latestUpdateDate"    # Ljava/lang/String;
    .param p7, "thunmbnailId"    # J
    .param p9, "albumId"    # Ljava/lang/String;
    .param p10, "albumTitle"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    .line 91
    iput p5, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    .line 92
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    .line 93
    iput-wide p7, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    .line 94
    iput-object p9, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumId:Ljava/lang/String;

    .line 95
    iput-object p10, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumTitle:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "explicit"    # I
    .param p6, "latestUpdateDate"    # Ljava/lang/String;
    .param p7, "thunmbnailId"    # J
    .param p9, "albumId"    # Ljava/lang/String;
    .param p10, "albumTitle"    # Ljava/lang/String;
    .param p11, "artistId"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    .line 76
    iput p5, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    .line 77
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    .line 78
    iput-wide p7, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    .line 79
    iput-object p9, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumId:Ljava/lang/String;

    .line 80
    iput-object p10, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumTitle:Ljava/lang/String;

    .line 81
    iput-object p11, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "explicit"    # I
    .param p6, "latestUpdateDate"    # Ljava/lang/String;
    .param p7, "thunmbnailId"    # J
    .param p9, "albumId"    # Ljava/lang/String;
    .param p10, "albumTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p11, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    .line 61
    iput p5, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    .line 62
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    .line 63
    iput-wide p7, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    .line 64
    iput-object p9, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumId:Ljava/lang/String;

    .line 65
    iput-object p10, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumTitle:Ljava/lang/String;

    .line 66
    iput-object p11, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public static createFavoriteObjectFromFavoriteDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 124
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    const-string v0, "favorite_id"

    .line 125
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "favorite_title"

    .line 126
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "favorite_subtitle"

    .line 127
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "favorite_thumb_img_url"

    .line 129
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 128
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "favorite_explicit"

    .line 130
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "favorite_latest_update_date"

    .line 132
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 131
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "favorite_thumbnail_id"

    .line 134
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 133
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 136
    .local v1, "favoriteList":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    return-object v1
.end method

.method public static createFavoriteObjectFromFavoriteTrackDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 140
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;

    const-string v0, "favorite_id"

    .line 141
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "favorite_title"

    .line 142
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "favorite_subtitle"

    .line 143
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "favorite_thumb_img_url"

    .line 145
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 144
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "favorite_explicit"

    .line 146
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "favorite_latest_update_date"

    .line 148
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "favorite_thumbnail_id"

    .line 149
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v0, "favorite_track_ablum_id"

    .line 151
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "favorite_track_album_title"

    .line 153
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v1, "favoriteList":Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistId:Ljava/lang/String;

    return-object v0
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
    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArtists()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThunmbnailId()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumId:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->albumTitle:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistId"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistId:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setArtists(Ljava/util/ArrayList;)V
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
    .line 294
    .local p1, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistList:Ljava/util/ArrayList;

    .line 295
    return-void
.end method

.method public setExplicit(I)V
    .locals 0
    .param p1, "explicit"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    .line 214
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setLatestUpdateDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "latestUpdateDate"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setThumbImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbImgUrl"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setThunmbnailId(J)V
    .locals 1
    .param p1, "thunmbnailId"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    .line 230
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public toContentValues(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 6
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "order"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "type":I
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const v0, 0x100004

    .line 245
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "category_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v2, "favorite_name"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "category_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "album_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThunmbnailId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    const-string v2, "cp_attrs"

    const v3, 0x80002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v2, "data1"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "display_order"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    return-object v1

    .line 237
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    const/16 v0, 0x55

    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    const/16 v0, 0x54

    goto :goto_0

    .line 241
    :cond_3
    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/16 v0, 0x56

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnailId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->getThunmbnailId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->latestUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->thunmbnailId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteList;->artistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return-void
.end method
