.class Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$4;
.super Ljava/lang/Object;
.source "AlbumBaseAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->playStoreAlbums(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$4;->this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 159
    const-string v0, "AlbumBaseAdapter"

    const-string v1, "playStoreAlbums : getAlbumTracks api is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 165
    const-string v1, "AlbumBaseAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playStoreAlbums : getAlbumTracks api handled. rspType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    packed-switch p3, :pswitch_data_0

    .line 181
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "simpleTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;->getSimpleTrackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$4;->this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x100050

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 176
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "983"

    const-string v3, "9835"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
