.class Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;
.super Ljava/lang/Object;
.source "ArtistDetailActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final NUMBER_OF_ALBUMS_COL:I = 0x1

.field private static final NUMBER_OF_TRACKS_COL:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$200(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 367
    new-instance v7, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$AlbumArtistPagerTitleQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$300(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$AlbumArtistPagerTitleQueryArgs;-><init>(Ljava/lang/String;)V

    .line 371
    .local v7, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 369
    .end local v7    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :cond_0
    new-instance v7, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$300(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;-><init>(Ljava/lang/String;)V

    .restart local v7    # "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 11
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 378
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 381
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 382
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 384
    .local v3, "trackNumber":I
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 389
    .local v0, "albumNumber":I
    :goto_0
    const-string v5, "%s (%d)"

    new-array v6, v10, [Ljava/lang/Object;

    const v7, 0x7f0c0002

    .line 390
    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 391
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 389
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "trackPagerTitle":Ljava/lang/String;
    const-string v5, "%s (%d)"

    new-array v6, v10, [Ljava/lang/Object;

    const v7, 0x7f0c0001

    .line 393
    invoke-virtual {v2, v7, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 392
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "albumPagerTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$000(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTitle(Ljava/lang/CharSequence;I)V

    .line 396
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$000(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTitle(Ljava/lang/CharSequence;I)V

    .line 397
    return-void

    .line 386
    .end local v0    # "albumNumber":I
    .end local v1    # "albumPagerTitle":Ljava/lang/String;
    .end local v3    # "trackNumber":I
    .end local v4    # "trackPagerTitle":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 387
    .restart local v3    # "trackNumber":I
    const/4 v0, 0x0

    .restart local v0    # "albumNumber":I
    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 357
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
