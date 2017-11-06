.class public Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;
.super Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mAlbumCoverGradation:Landroid/view/View;

.field private final mEnterTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private final mReturnTransitionListener:Landroid/transition/Transition$TransitionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;-><init>()V

    .line 210
    new-instance v0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$2;-><init>(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mEnterTransitionListener:Landroid/transition/Transition$TransitionListener;

    .line 247
    new-instance v0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;-><init>(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mReturnTransitionListener:Landroid/transition/Transition$TransitionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mAlbumCoverGradation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method private setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "listType"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f0401e8

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->onResume()V

    .line 77
    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getMetaData()Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setMetaDataInfo(Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V

    .line 78
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/details/BasePlayerDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mActionBarView:Landroid/view/View;

    .line 45
    const v7, 0x7f1204ff

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mAlbumCoverGradation:Landroid/view/View;

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "isEnableTransition":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 48
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 49
    const-string v7, "is_enable_transition"

    .line 50
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v5

    .line 53
    :cond_0
    :goto_0
    sget-object v8, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEnableTransition : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", recreated : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p2, :cond_5

    move v7, v5

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mActionBarView:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mAlbumCoverGradation:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 56
    if-nez p2, :cond_1

    .line 58
    iget-object v7, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mActionBarView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 60
    :cond_1
    const-string/jumbo v7, "transition_name_details"

    new-array v5, v5, [Landroid/view/View;

    const v8, 0x7f1204fe

    .line 61
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v5, v6

    .line 60
    invoke-static {v7, v5}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setTransitionView(Ljava/lang/String;[Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 63
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 64
    .local v0, "enterTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_2

    .line 65
    iget-object v5, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mEnterTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 67
    :cond_2
    invoke-virtual {v4}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v3

    .line 68
    .local v3, "returnTransition":Landroid/transition/Transition;
    if-eqz v3, :cond_3

    .line 69
    iget-object v5, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->mReturnTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v3, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 72
    .end local v0    # "enterTransition":Landroid/transition/Transition;
    .end local v3    # "returnTransition":Landroid/transition/Transition;
    .end local v4    # "window":Landroid/view/Window;
    :cond_3
    return-void

    :cond_4
    move v2, v6

    .line 51
    goto :goto_0

    :cond_5
    move v7, v6

    .line 53
    goto :goto_1
.end method

.method protected setMetaDataInfo(Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V
    .locals 19
    .param p1, "metaData"    # Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->clearLargeFontTextViews()V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->getView()Landroid/view/View;

    move-result-object v18

    .line 97
    .local v18, "view":Landroid/view/View;
    if-eqz v18, :cond_0

    .line 100
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 103
    .local v12, "context":Landroid/content/Context;
    const v2, 0x7f1204fe

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 104
    .local v10, "albumView":Landroid/widget/ImageView;
    const v2, 0x7f0d0061

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumId:J

    .line 105
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 106
    invoke-virtual {v2, v10, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    .line 109
    const v2, 0x7f1200b8

    const v3, 0x7f0a01ce

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    .line 110
    invoke-static {v12, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 111
    const v2, 0x7f1200b8

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "artist":Ljava/lang/String;
    const v2, 0x7f120129

    const v3, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 116
    const v2, 0x7f120129

    const v3, 0x100003

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artistId:J

    .line 117
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v11}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->album:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "album":Ljava/lang/String;
    const v2, 0x7f120270

    const v3, 0x7f0a0071

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 122
    const v2, 0x7f120270

    const v3, 0x100002

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumId:J

    .line 123
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 122
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v8}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "<unknown>"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    :cond_2
    const v2, 0x7f120277

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 130
    .local v9, "albumArtistView":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .end local v9    # "albumArtistView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->duration:J

    invoke-static {v12, v2, v3}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getTrackLength(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 139
    .local v17, "trackLength":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->duration:J

    const-wide/16 v4, 0x3e8

    div-long v14, v2, v4

    .line 141
    .local v14, "duration":J
    :goto_2
    const v2, 0x7f1204f7

    const v3, 0x7f0a01cf

    long-to-int v4, v14

    .line 142
    invoke-static {v12, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;Ljava/lang/String;)V

    .line 143
    const v2, 0x7f1204f7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, "genre":Ljava/lang/String;
    const v2, 0x7f120272

    const v3, 0x7f0a00c6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 149
    const v2, 0x7f120272

    const v3, 0x100006

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 152
    const v2, 0x7f1204f8

    const v3, 0x7f0a015e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->year:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 153
    const v2, 0x7f1204f8

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 157
    const v2, 0x7f120050

    const v3, 0x7f0a01d0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->track:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 158
    const v2, 0x7f120050

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 161
    const v2, 0x7f1204f9

    const v3, 0x7f0a00c5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 162
    const v2, 0x7f1204f9

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 164
    const v2, 0x7f1204fa

    const v3, 0x7f0a0087

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->bitDepth:I

    .line 165
    invoke-static {v12, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getBitDepth(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 166
    const v2, 0x7f1204fa

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 168
    const v2, 0x7f1204fb

    const v3, 0x7f0a0173

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->samplingRate:I

    .line 169
    invoke-static {v12, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSamplingRate(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 170
    const v2, 0x7f1204fb

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->size:J

    invoke-static {v12, v2, v3}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getFileSize(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, "fileSize":[Ljava/lang/String;
    const v2, 0x7f1204fc

    const v3, 0x7f0a01b1

    const/4 v4, 0x0

    aget-object v4, v13, v4

    const/4 v5, 0x1

    aget-object v5, v13, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;Ljava/lang/String;)V

    .line 175
    const v2, 0x7f1204fc

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    .line 177
    const v3, 0x7f1204fd

    const v4, 0x7f0a0149

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->data:Ljava/lang/String;

    .line 178
    invoke-static {v12, v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->getFolderDirectoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 177
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 179
    const v2, 0x7f1204fd

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v13    # "fileSize":[Ljava/lang/String;
    .end local v14    # "duration":J
    .end local v16    # "genre":Ljava/lang/String;
    .end local v17    # "trackLength":Ljava/lang/String;
    :cond_3
    const v2, 0x7f120277

    const v3, 0x7f0a0072

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->initMediaInfoItem(IILjava/lang/String;)V

    .line 133
    const v2, 0x7f120277

    const v3, 0x100003

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artistId:J

    .line 134
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    .restart local v17    # "trackLength":Ljava/lang/String;
    :cond_4
    const-wide/16 v14, 0x0

    goto/16 :goto_2
.end method

.method public updateMetaUi(Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V
    .locals 0
    .param p1, "metaData"    # Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setMetaDataInfo(Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V

    .line 88
    return-void
.end method
