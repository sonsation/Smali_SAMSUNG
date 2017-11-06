.class public Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "MediaInfoActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;
    }
.end annotation


# static fields
.field private static final MENU_SEARCH_ONLINE:I = 0x7f1205cd

.field public static final REQUEST_CODE_MEDIA_INFO:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityTransitionEnabled:Z

.field private mAlbumId:J

.field private mBaseUri:Ljava/lang/String;

.field private mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

.field private final mMetaDataObserver:Landroid/database/ContentObserver;

.field private mMetaUiUpdatable:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;

.field private mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mAlbumId:J

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;)Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaUiUpdatable:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;

    return-object v0
.end method

.method private adjustTopMargins()V
    .locals 4

    .prologue
    .line 247
    const v3, 0x7f1204f6

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "detailContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v3

    neg-int v2, v3

    .line 249
    .local v2, "topMargin":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isShowingStatusBar(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    return-void
.end method


# virtual methods
.method public finishAfterTransition()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    iget-wide v0, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumId:J

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mAlbumId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    const v3, 0x7f1204fe

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->removeTransitionView(Landroid/view/Window;[Landroid/view/View;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->finish()V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->isActivityTranslucent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->finishActivityAfterConvertToTranslucent()V

    goto :goto_0

    .line 212
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->finishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 61
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->VI_FULL_PLAYER_TO_DETAILS:Z

    if-eqz v2, :cond_0

    .line 62
    if-eqz p1, :cond_6

    .line 63
    const-string/jumbo v2, "saved_instance_state_activiy_transition_enabled"

    .line 64
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mActivityTransitionEnabled:Z

    .line 69
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mActivityTransitionEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setDetailsTransition(Landroid/view/Window;)V

    .line 71
    new-instance v2, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    .line 72
    if-nez p1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->convertToTranslucent()V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v2, 0x7f0401e6

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->adjustTopMargins()V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 84
    const-string v2, "extra_uri_string"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mBaseUri:Ljava/lang/String;

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mBaseUri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mBaseUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getMetaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    if-eqz v2, :cond_7

    .line 91
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    iget-wide v2, v2, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumId:J

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->setStaticThumbnailId(J)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mBaseUri:Ljava/lang/String;

    .line 93
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 101
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_3

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;-><init>()V

    .line 103
    .restart local v0    # "fg":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f1204f6

    sget-object v4, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 106
    :cond_3
    instance-of v2, v0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;

    if-eqz v2, :cond_4

    .line 107
    check-cast v0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;

    .end local v0    # "fg":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaUiUpdatable:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;

    .line 110
    :cond_4
    if-nez p1, :cond_5

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "307"

    .line 112
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 114
    :cond_5
    :goto_1
    return-void

    .line 66
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_enable_transition"

    .line 67
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mActivityTransitionEnabled:Z

    goto/16 :goto_0

    .line 96
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f13001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onDestroy()V

    .line 199
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 244
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_0

    .line 222
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 219
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->showSearchOnline()Z

    .line 220
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 228
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mAlbumId:J

    .line 229
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->showSearchOnline()Z

    .line 178
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "307"

    const-string v2, "4142"

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mBaseUri:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->startActivityForResult(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 185
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "307"

    const-string v2, "4141"

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f1205cc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 234
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v2, 0x7f1205cd

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 167
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 168
    invoke-static {v0}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->isOnlineSearchEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    const-string/jumbo v0, "saved_instance_state_activiy_transition_enabled"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mActivityTransitionEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 146
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onStart()V

    .line 147
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 152
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onStop()V

    .line 153
    return-void
.end method

.method public showSearchOnline()Z
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->isOnlineSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->searchMediaInfo(Landroid/app/Activity;Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
