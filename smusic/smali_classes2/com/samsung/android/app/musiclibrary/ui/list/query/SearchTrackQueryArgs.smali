.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SearchTrackQueryArgs.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;-><init>(Ljava/lang/String;Z)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "musicOnly"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 17
    if-eqz p2, :cond_0

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->getMusicOnlyFilteredSearchUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 20
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;->selection:Ljava/lang/String;

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 27
    const-string v0, "album COLLATE LOCALIZED , album_id, track"

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 29
    return-void
.end method
