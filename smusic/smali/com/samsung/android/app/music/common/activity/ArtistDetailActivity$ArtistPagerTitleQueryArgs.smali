.class Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "ArtistDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistPagerTitleQueryArgs"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 320
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->uri:Landroid/net/Uri;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v1, "number_of_albums"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v1, "number_of_tracks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->projection:[Ljava/lang/String;

    .line 326
    const-string v1, "_id =?"

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->selection:Ljava/lang/String;

    .line 327
    if-nez p1, :cond_0

    .line 328
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_0
.end method
