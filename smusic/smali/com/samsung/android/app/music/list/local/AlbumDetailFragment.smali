.class public Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "AlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ENTER_ANIMATION_ENABLED:Ljava/lang/String; = "key_enter_animation_enabled"


# instance fields
.field private mAlbumInfoViewUpdater:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

.field private mEnterAnimationEnabled:Z

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 259
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method private static buildAlbumInfoViewUpdater(Landroid/app/Activity;Landroid/view/View;JZ)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "albumId"    # J
    .param p4, "enterAnimationEnabled"    # Z

    .prologue
    .line 301
    new-instance v0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    sget-object v1, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    .line 302
    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->setThumbnailId(JLandroid/net/Uri;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    move-result-object v0

    const-string v1, "album"

    .line 303
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->setMainTextCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    move-result-object v0

    const-string v1, "artist"

    .line 304
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->setSubText1Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    move-result-object v0

    const-string/jumbo v1, "year_name"

    .line 305
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->setSubText2Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    const/4 v2, 0x1

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->setDefaultThumbnailId(IZ)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p4}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->setEnterAnimationEnabled(Z)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater$Builder;->build()Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    move-result-object v0

    return-object v0
.end method

.method private initParallaxView()V
    .locals 6

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 294
    .local v0, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    const/4 v3, -0x1

    new-instance v4, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;

    const v5, 0x7f0d01be

    .line 295
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setListSpaceTop(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/view/View;)V

    .line 294
    invoke-interface {v2, v3, v0, v4}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;->setParallaxHolder(ILcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    const v5, 0x7f1201ff

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;->addMovableView([Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public static newInstance(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
    .locals 2
    .param p0, "albumId"    # J
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->newInstance(JLjava/lang/String;Z)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Z)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
    .locals 4
    .param p0, "albumId"    # J
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enterAnimationEnabled"    # Z

    .prologue
    .line 85
    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;-><init>()V

    .line 86
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_album_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    const-string v2, "key_title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "key_enter_animation_enabled"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v1
.end method

.method private updateAlbumInfoView(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 231
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 233
    .local v1, "context":Landroid/content/Context;
    const-string v7, "album"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "albumIndex":I
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 236
    const/16 v7, 0x66

    .line 237
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v6, :cond_2

    .line 238
    .local v6, "isSingleArtist":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    invoke-virtual {v7, v6}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->setSingleArtist(Z)V

    .line 240
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mAlbumInfoViewUpdater:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    invoke-virtual {v7, p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->updateUi(Landroid/database/Cursor;)V

    .line 241
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mAlbumInfoViewUpdater:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->getSubTextView(I)Landroid/widget/TextView;

    move-result-object v5

    .line 242
    .local v5, "durationTextView":Landroid/widget/TextView;
    const/16 v7, 0x65

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 243
    .local v2, "duration":J
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "durationText":Ljava/lang/String;
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    long-to-int v7, v2

    .line 247
    invoke-static {v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 252
    .end local v2    # "duration":J
    .end local v4    # "durationText":Ljava/lang/String;
    .end local v5    # "durationTextView":Landroid/widget/TextView;
    .end local v6    # "isSingleArtist":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    invoke-static {v7}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->access$100(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 253
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mAlbumInfoViewUpdater:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    const v9, 0x7f0a021f

    .line 254
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;->updateSubTextView(ILjava/lang/String;)V

    .line 257
    .end local v0    # "albumIndex":I
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    return-void

    .restart local v0    # "albumIndex":I
    .restart local v1    # "context":Landroid/content/Context;
    :cond_2
    move v6, v8

    .line 237
    goto :goto_0

    .line 250
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_album_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 182
    const v0, 0x100002

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const v1, 0x7f1204ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_album_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mEnterAnimationEnabled:Z

    .line 154
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->buildAlbumInfoViewUpdater(Landroid/app/Activity;Landroid/view/View;JZ)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mAlbumInfoViewUpdater:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    .line 157
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    .line 98
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_enter_animation_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mEnterAnimationEnabled:Z

    .line 100
    const-string v0, "205"

    const-string v1, "206"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;
    .locals 3

    .prologue
    .line 161
    new-instance v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "title"

    .line 162
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    const-string v2, "artist"

    .line 163
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    const-string v2, "duration"

    .line 164
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    const-string v2, "_id"

    .line 165
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    const-string/jumbo v2, "track"

    .line 166
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setTrackNumberCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;

    .line 167
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 277
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130008

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 280
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
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
    .line 193
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v8

    .line 194
    .local v8, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$1;

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 207
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 271
    new-instance v0, Lcom/samsung/android/app/music/common/menu/HeartMenu;

    const v1, 0x7f130019

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/HeartMenu;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 272
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 273
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 177
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_album_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0401c7

    .line 109
    .local v1, "layoutId":I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 107
    .end local v1    # "layoutId":I
    :cond_0
    const v1, 0x7f0401f5

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 212
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 215
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 216
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/util/ListUtils;->checkFinishActivityForNoItem(Landroid/app/Activity;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 218
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mAlbumInfoViewUpdater:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    if-eqz v2, :cond_0

    .line 226
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->updateAlbumInfoView(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->initParallaxView()V

    .line 119
    const-string/jumbo v2, "transition_name_album_details"

    new-array v3, v8, [Landroid/view/View;

    const v4, 0x7f12013f

    .line 120
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f120260

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 119
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setTransitionView(Ljava/lang/String;[Landroid/view/View;)V

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 129
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a018c

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 130
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setChoiceMode(I)V

    .line 131
    new-instance v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$ActionModeOptionsMenu;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$1;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 133
    new-instance v2, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v3, 0x7f0c0011

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 134
    new-instance v2, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 135
    new-instance v2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 137
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 138
    .local v1, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    invoke-virtual {v1, v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 139
    invoke-virtual {v1, v7}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;

    const/4 v3, -0x5

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 142
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v3, 0x7f0a013a

    const v4, 0x7f0a0132

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 145
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->setListShown(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->initListLoader(I)V

    .line 147
    return-void

    .line 122
    .end local v1    # "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "key_album_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mEnterAnimationEnabled:Z

    .line 122
    invoke-static {v2, p1, v4, v5, v3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->buildAlbumInfoViewUpdater(Landroid/app/Activity;Landroid/view/View;JZ)Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->mAlbumInfoViewUpdater:Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;

    goto/16 :goto_0
.end method
