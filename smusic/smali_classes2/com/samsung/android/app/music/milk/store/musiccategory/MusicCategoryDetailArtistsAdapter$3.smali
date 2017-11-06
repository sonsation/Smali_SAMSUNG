.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$3;
.super Ljava/lang/Object;
.source "MusicCategoryDetailArtistsAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->playStoreArtistTracks(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 118
    const-string v0, "MusicCategoryDetailArtistsAdapter"

    const-string v1, "playStoreArtistTracks : getArtistTracks api is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 124
    packed-switch p3, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p4

    .line 126
    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;

    .line 128
    .local v0, "artistDetailTrackInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;->getTrackList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;->getTrackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    const-string v1, "MusicCategoryDetailArtistsAdapter"

    const-string v2, "onApiHandled in playStoreArtistTracks : Track list is wrong"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$3;->val$context:Landroid/content/Context;

    const v2, 0x100050

    const/4 v3, 0x0

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;->getTrackList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 136
    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 139
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "990"

    const-string v3, "9893"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
