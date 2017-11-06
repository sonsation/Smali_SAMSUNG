.class Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;
.super Ljava/lang/Object;
.source "AllTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AllTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllTrackCardViewableImpl"
.end annotation


# instance fields
.field private final mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;)V
    .locals 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;-><init>(Landroid/app/Fragment;)V

    const v1, 0x7f0a015c

    .line 302
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setTitleResCol(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string/jumbo v1, "title"

    .line 303
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setMainTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "artist"

    .line 304
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setSubTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "album_id"

    .line 305
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setThumbnailKeyCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->build()Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    .line 306
    return-void
.end method


# virtual methods
.method public getCardViewItemCount()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

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
    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

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
    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader()Landroid/content/Loader;
    .locals 8
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
    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 355
    .local v1, "context":Landroid/content/Context;
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    const-wide/16 v2, -0xe

    .line 356
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "local"

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->getCardViewItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {v7, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    .line 359
    .local v7, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-object v7
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
    .line 341
    if-eqz p2, :cond_0

    .line 342
    const-wide/16 v2, -0xe

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "keyword":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    .line 344
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    .line 345
    .local v1, "list":[J
    const/4 v2, -0x1

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(ILjava/lang/String;[JI)V

    .line 346
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    .line 347
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2002"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v0    # "keyword":Ljava/lang/String;
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
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x100004

    const-wide/16 v2, -0xe

    .line 334
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    const v4, 0x7f0a0158

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    .line 336
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2001"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
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
    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V

    .line 323
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
    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
