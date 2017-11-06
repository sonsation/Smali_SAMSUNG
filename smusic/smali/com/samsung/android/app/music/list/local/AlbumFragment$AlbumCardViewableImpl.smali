.class Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;
.super Ljava/lang/Object;
.source "AlbumFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCardViewableImpl"
.end annotation


# instance fields
.field private final mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;)V
    .locals 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;-><init>(Landroid/app/Fragment;)V

    const v1, 0x7f0a0159

    .line 376
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setTitleResCol(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "album"

    .line 377
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setMainTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "artist"

    .line 378
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setSubTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "album_id"

    .line 379
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setThumbnailKeyCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->build()Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    .line 380
    return-void
.end method


# virtual methods
.method public getCardViewItemCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->getCardViewItemCount()I

    move-result v0

    return v0
.end method

.method public onCreateCardViewHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->onCreateCardViewHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    .locals 1
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader()Landroid/content/Loader;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/AlbumCardViewQueryArgs;

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->getCardViewItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/AlbumCardViewQueryArgs;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    return-object v0
.end method

.method public onPlayIconClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 421
    if-eqz p2, :cond_0

    .line 422
    const-string v2, "album_id"

    .line 423
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "albumId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    .line 425
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/player/util/AlbumPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    .line 426
    .local v1, "list":[J
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(ILjava/lang/String;[JI)V

    .line 428
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    .line 429
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2052"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v0    # "albumId":Ljava/lang/String;
    .end local v1    # "list":[J
    :cond_0
    return-void
.end method

.method public onThumbnailClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 407
    if-eqz p2, :cond_0

    .line 408
    const-string v2, "album_id"

    .line 409
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "albumId":Ljava/lang/String;
    const-string v2, "album"

    .line 411
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->access$200(Lcom/samsung/android/app/music/list/local/AlbumFragment;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    .line 415
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2051"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .end local v0    # "albumId":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V

    .line 397
    return-void
.end method

.method public updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
