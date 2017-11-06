.class public final Lcom/samsung/android/app/music/cover/CoverQueueFragment;
.super Landroid/app/DialogFragment;
.source "CoverQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueueFragment$AlbumArtUpdateHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumArtProgress:Landroid/widget/ProgressBar;

.field private mAlbumArtSize:I

.field private final mAlbumArtUpdateHandler:Landroid/os/Handler;

.field private mCloseButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCoverBackground:Landroid/widget/ImageView;

.field private mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private mNowPlayingAlbumArt:Landroid/widget/ImageView;

.field private mNowPlayingArtist:Landroid/widget/TextView;

.field private mNowPlayingTitle:Landroid/widget/TextView;

.field private final mOnCoverStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

.field private mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

.field private mVolumeAlertLayout:Landroid/widget/FrameLayout;

.field private mVolumeAlertReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mOnCoverStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    .line 295
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$AlbumArtUpdateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment$AlbumArtUpdateHandler;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mAlbumArtUpdateHandler:Landroid/os/Handler;

    .line 297
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mVolumeAlertReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->invokeFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->startMusic()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mNowPlayingAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mAlbumArtProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mVolumeAlertLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCloseButton:Landroid/view/View;

    return-object v0
.end method

.method private initDialogWindow(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 127
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 129
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 130
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 134
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->setCoverMode(Landroid/view/Window;I)V

    .line 137
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 140
    new-instance v1, Lcom/samsung/android/app/music/cover/CoverQueue;

    const v0, 0x7f120138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const v2, 0x7f040036

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/app/music/cover/CoverQueue;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

    .line 142
    const v0, 0x7f120132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverBackground:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mNowPlayingTitle:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f120129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mNowPlayingArtist:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f120135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mNowPlayingAlbumArt:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f120136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mAlbumArtProgress:Landroid/widget/ProgressBar;

    .line 147
    const v0, 0x7f120137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCloseButton:Landroid/view/View;

    .line 149
    const v0, 0x7f120139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mVolumeAlertLayout:Landroid/widget/FrameLayout;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCloseButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method private invokeFinish()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->dismissAllowingStateLoss()V

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 245
    :cond_0
    return-void
.end method

.method private startMusic()V
    .locals 4

    .prologue
    .line 249
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/music/common/ActivityLauncher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v2, "launchMusicPlayer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 261
    :cond_0
    return-void
.end method

.method private updateMeta(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "cpAttrs"    # I
    .param p4, "albumId"    # J

    .prologue
    const/4 v2, 0x0

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewCover-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMeta() title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " artist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mNowPlayingTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mNowPlayingArtist:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v3, 0x7f0d0062

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    .line 227
    invoke-static {p3}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mAlbumArtUpdateHandler:Landroid/os/Handler;

    .line 228
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    .line 230
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 231
    .local v1, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 232
    .local v0, "needProgress":Z
    :goto_0
    invoke-static {p3}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 233
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mAlbumArtProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mNowPlayingAlbumArt:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverBackground:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    :cond_0
    return-void

    .end local v0    # "needProgress":Z
    :cond_1
    move v0, v2

    .line 231
    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 108
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mContext:Landroid/content/Context;

    .line 94
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mOnCoverStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->invokeFinish()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->startMusic()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mAlbumArtSize:I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040037

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "content":Landroid/view/View;
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 117
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 121
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->initView(Landroid/view/View;)V

    .line 122
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->initDialogWindow(Landroid/view/Window;)V

    .line 123
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/cover/CoverQueue;->release()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->release()V

    .line 184
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 185
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 10
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ViewCover-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "onMetadataChanged()"

    invoke-static {v0, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v6, v8

    .line 191
    .local v6, "listCount":I
    if-nez v6, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->invokeFinish()V

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "title":Ljava/lang/String;
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "artist":Ljava/lang/String;
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v3, v8

    .line 198
    .local v3, "cpAttrs":I
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "albumId":J
    move-object v0, p0

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->updateMeta(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPlayStateChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 207
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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
    .line 212
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mCoverQueue:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mVolumeAlertReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mVolumeAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 175
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 176
    return-void
.end method
