.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/GenreCardViewQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "GenreCardViewQueryArgs.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 8
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/GenreCardViewQueryArgs;->uri:Landroid/net/Uri;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dummy"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/GenreCardViewQueryArgs;->projection:[Ljava/lang/String;

    .line 17
    const-string v0, "number_of_tracks DESC"

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/GenreCardViewQueryArgs;->orderBy:Ljava/lang/String;

    .line 18
    return-void
.end method
