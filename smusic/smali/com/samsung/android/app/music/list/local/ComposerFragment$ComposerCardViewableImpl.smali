.class Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;
.super Ljava/lang/Object;
.source "ComposerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ComposerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerCardViewableImpl"
.end annotation


# instance fields
.field private final mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;)V
    .locals 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;-><init>(Landroid/app/Fragment;)V

    const v1, 0x7f0a0109

    .line 278
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setTitleResCol(I)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "composer"

    .line 279
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setMainTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    const-string v1, "album_id"

    .line 280
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->setThumbnailKeyCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl$Builder;->build()Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    .line 281
    return-void
.end method


# virtual methods
.method public getCardViewItemCount()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

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
    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

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
    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

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
    .line 334
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ComposerCardViewQueryArgs;

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->getCardViewItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ComposerCardViewQueryArgs;-><init>(Ljava/lang/String;)V

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
    .line 319
    if-eqz p2, :cond_0

    .line 320
    const-string v2, "composer"

    .line 321
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 320
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "composer":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    .line 323
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/player/util/ComposerPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    .line 324
    .local v1, "list":[J
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(ILjava/lang/String;[JI)V

    .line 326
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    .line 327
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2502"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v0    # "composer":Ljava/lang/String;
    .end local v1    # "list":[J
    :cond_0
    return-void
.end method

.method public onThumbnailClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 308
    const-string v1, "composer"

    .line 309
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "composer":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    .line 311
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x100008

    invoke-static {v1, v2, v0, v0}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    .line 314
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2501"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V

    .line 298
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
    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;->mBaseImpl:Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultCardViewableImpl;->updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
