.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.super Ljava/lang/Object;
.source "MediaContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$StreamingCachesColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Years;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$HeartColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistsColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistsMetaColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$YearsColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$GenreColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$ComposerColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$FolderColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$BaseArtistColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtistColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$ArtistColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$BaseAlbumColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$BaseTrackColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AudioColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Picker;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$CpAttrsColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SelectionGroup;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$ProviderType;
    }
.end annotation


# static fields
.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "content://com.sec.android.app.music"

.field public static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.sec.android.app.music/"

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final DISABLE:Ljava/lang/String; = "disable"

.field private static final INTERNAL_MEDIA:Ljava/lang/String;

.field public static final LEXICOGRAPHICAL_ORDER:Ljava/lang/String; = " COLLATE LOCALIZED "

.field public static final MEDIA_PROVIDER_CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/external/"

.field private static final MEDIA_PROVIDER_RAW_SQL_URI:Landroid/net/Uri;

.field public static final MUSIC_PROVIDER_CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.sec.android.app.music/"

.field private static final MUSIC_PROVIDER_RAW_SQL_URI:Landroid/net/Uri;

.field public static final PARAM_CP_ATTRS:Ljava/lang/String; = "param_cp_attrs"

.field public static final PARAM_DELETE_BEFORE_INSERT:Ljava/lang/String; = "delete_before_insert"

.field public static final PARAM_DELETE_WHERE:Ljava/lang/String; = "delete_where"

.field public static final PARAM_GROUP_BY:Ljava/lang/String; = "groupBy"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_NOTIFY_CHANGE:Ljava/lang/String; = "notifyChange"

.field public static final PLAYED_LIST_LIMIT:I = 0x64

.field public static final SYNC_FLOW_KEY:Ljava/lang/String; = "syncFlow"

.field public static final SYNC_FLOW_NO_ACTION:Ljava/lang/String; = "no_action"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x18ed7

    if-ge v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_1

    :cond_0
    const-string v0, "audio/media/raw_sql/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->MEDIA_PROVIDER_RAW_SQL_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.sec.android.app.music/audio/media/raw_sql/"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->MUSIC_PROVIDER_RAW_SQL_URI:Landroid/net/Uri;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->INTERNAL_MEDIA:Ljava/lang/String;

    return-void

    .line 30
    :cond_1
    const-string v0, "raw_sql/main/"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCpAttrSelection(I)Ljava/lang/String;
    .locals 2
    .param p0, "targetAttr"    # I

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(cp_attrs & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpAttrsFromUri(Landroid/net/Uri;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 109
    const-string v0, "param_cp_attrs"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs getDefaultSelection([I)Ljava/lang/String;
    .locals 6
    .param p0, "cpAttrs"    # [I

    .prologue
    const/4 v5, 0x1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v1, "selectionBuilder":Ljava/lang/StringBuilder;
    array-length v2, p0

    .line 182
    .local v2, "size":I
    if-le v2, v5, :cond_0

    .line 183
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 186
    const-string v3, "cp_attrs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1

    .line 188
    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_2
    if-le v2, v5, :cond_3

    .line 192
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDeleteBeforeInsertUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getDeleteBeforeInsertUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDeleteBeforeInsertUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 138
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "delete_before_insert"

    const-string v2, "delete"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v1, "delete_where"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getGroupByAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "groupBy"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 105
    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "groupBy"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public static getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 98
    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public static getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncFlow"

    const-string v2, "no_action"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "notifyChange"

    const-string v2, "disable"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getRawQueryAppendedUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "providerType"    # I
    .param p1, "rawQuery"    # Ljava/lang/String;

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_0

    .line 58
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->MUSIC_PROVIDER_RAW_SQL_URI:Landroid/net/Uri;

    .line 60
    .local v0, "rawQueryUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 55
    .end local v0    # "rawQueryUri":Landroid/net/Uri;
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->MEDIA_PROVIDER_RAW_SQL_URI:Landroid/net/Uri;

    .line 56
    .restart local v0    # "rawQueryUri":Landroid/net/Uri;
    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getRawQueryAppendedUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "rawQuery"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getRawQueryAppendedUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static hasLimitParam(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 146
    const-string v0, "limit"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInternalPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->INTERNAL_MEDIA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
