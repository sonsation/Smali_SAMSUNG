.class public Lcom/samsung/android/app/music/common/model/artist/Artist;
.super Ljava/lang/Object;
.source "Artist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ARTIST_DISPLAY_SEPARATOR:Ljava/lang/String; = ", "

.field public static final ARTIST_ID_DELIMITER:Ljava/lang/String; = "::"

.field public static final ARTIST_NAME_DELIMETER:Ljava/lang/String; = ","

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "Artist"

.field private static final VARIOUS_ARTIST_ID:Ljava/lang/String; = "va"


# instance fields
.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "artistImageUrl",
            "thumbImgUrl",
            "artistImgUrl"
        }
        value = "imageUrl"
    .end annotation
.end field

.field public mArtistId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistId"
    .end annotation
.end field

.field public mArtistName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistName"
    .end annotation
.end field

.field private seedUsable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->imageUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->seedUsable:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistId:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->imageUrl:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "seedUsable"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistId:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->imageUrl:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->seedUsable:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/artist/Artist;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    iput-object p2, v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->imageUrl:Ljava/lang/String;

    .line 93
    return-object v0
.end method

.method public static createArtists(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p0, :cond_0

    .line 131
    const-string v3, "Artist"

    const-string v4, "createArtists json is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-object v2

    .line 134
    :cond_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 136
    .local v1, "jr":Landroid/util/JsonReader;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/common/model/artist/Artist;->parseArtistsJson(Ljava/util/ArrayList;Landroid/util/JsonReader;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 141
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 138
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :try_start_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 141
    :try_start_4
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 144
    :goto_1
    throw v2

    .line 142
    :catch_3
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createArtists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "artistIds"    # Ljava/lang/String;
    .param p1, "artistNames"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, ","

    const-string v1, ","

    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static createArtists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "artistIds"    # Ljava/lang/String;
    .param p1, "idDelimiter"    # Ljava/lang/String;
    .param p2, "artistNames"    # Ljava/lang/String;
    .param p3, "nameDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    if-eqz p0, :cond_0

    if-nez p2, :cond_2

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 205
    .end local v0    # "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_1
    return-object v0

    .line 196
    .restart local v0    # "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_2
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v2, "idsTokens":Ljava/util/StringTokenizer;
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p2, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v4, "namesTokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-direct {v5, v1, v3}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static makeJsonString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 98
    .local v3, "writer":Ljava/io/Writer;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 99
    .local v2, "jw":Landroid/util/JsonWriter;
    const/4 v1, 0x0

    .line 101
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, p0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->toJson(Landroid/util/JsonWriter;Ljava/util/ArrayList;)V

    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 107
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    :goto_1
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :try_start_4
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 112
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 113
    :catch_3
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 108
    :catch_4
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 107
    :try_start_6
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 112
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 115
    :goto_4
    throw v4

    .line 108
    :catch_5
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static parseArtistJson(Landroid/util/JsonReader;)Lcom/samsung/android/app/music/common/model/artist/Artist;
    .locals 4
    .param p0, "jr"    # Landroid/util/JsonReader;

    .prologue
    .line 164
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>()V

    .line 166
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 167
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "name":Ljava/lang/String;
    const-string v3, "artistId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    const/4 v0, 0x0

    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0

    .line 171
    .restart local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v3, "artistName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 177
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static parseArtistsJson(Ljava/util/ArrayList;Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "jr"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    if-nez p0, :cond_0

    .line 152
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .restart local p0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 155
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/artist/Artist;->parseArtistJson(Landroid/util/JsonReader;)Lcom/samsung/android/app/music/common/model/artist/Artist;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 160
    return-object p0
.end method

.method public static toJson(Landroid/util/JsonWriter;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "jw"    # Landroid/util/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    .line 124
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->toJson(Landroid/util/JsonWriter;)V

    goto :goto_0

    .line 126
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 127
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getArtistID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformanceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, ""

    return-object v0
.end method

.method public getTrackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, ""

    return-object v0
.end method

.method public isSeedUsable()Z
    .locals 2

    .prologue
    .line 257
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->seedUsable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVariousArtist()Z
    .locals 2

    .prologue
    .line 209
    const-string/jumbo v0, "va"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->imageUrl:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public toJson(Landroid/util/JsonWriter;)V
    .locals 2
    .param p1, "jw"    # Landroid/util/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 227
    const-string v0, "artistId"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 228
    const-string v0, "artistName"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 229
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/artist/Artist;->seedUsable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return-void
.end method
