.class public Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;
.super Ljava/lang/Object;
.source "RadioMainMoreMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioMainOptionMenu"


# instance fields
.field private hasAlbumInfo:Z

.field private hasArtist:Z

.field private mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

.field private final mContext:Landroid/content/Context;

.field private mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

.field private mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

.field private mIsBanRequestedSong:Z

.field private mIsBanSong:Z

.field private mIsCelebTrack:Z

.field private mIsSmartStation:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mOptionsButton:Landroid/view/View;

.field private mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

.field private mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .param p4, "radioService"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanRequestedSong:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanSong:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsCelebTrack:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasArtist:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasAlbumInfo:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsSmartStation:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mMainHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 60
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initialize()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initOptionPopupList()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initOptionBtn()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->updateButton()V

    return-void
.end method

.method private initOptionBtn()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$2;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a033b

    .line 198
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a032f

    .line 200
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method private initOptionPopupList()V
    .locals 6

    .prologue
    .line 137
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f130020

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;-><init>(Landroid/content/Context;ILandroid/view/View;Ljava/util/HashMap;Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setLeftPopup(Z)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setPrimaryColor(I)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016a

    .line 143
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->setOnMenuItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    return-void
.end method

.method private initValue(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 2
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanRequestedSong:Z

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanSong:Z

    .line 206
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsCelebTrack:Z

    .line 207
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasArtist:Z

    .line 208
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasAlbumInfo:Z

    .line 209
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsSmartStation:Z

    .line 211
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 212
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getBanSongList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getBanSongList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanSong:Z

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->isSmartStation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsSmartStation:Z

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsCelebTrack:Z

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->hasAvailableArtist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasArtist:Z

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->hasAvailableAlbum()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasAlbumInfo:Z

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isShowingUndoToast()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanRequestedSong:Z

    .line 228
    return-void
.end method

.method private updateButton()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public blockSong()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isRadioTrack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 319
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->delayBanSong(Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Station;)V

    goto :goto_0
.end method

.method public checkShareStation()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsSmartStation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeMoreMenu()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->dismiss()V

    .line 339
    return-void
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initOptionBtn()V

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initOptionPopupList()V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110141

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mPrimaryColor:I

    .line 70
    return-void
.end method

.method public isEnableMenuItem(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 243
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 237
    :pswitch_2
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanRequestedSong:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsBanSong:Z

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x7f1205d0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isVisibleMenuItem(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 250
    goto :goto_0

    .line 252
    :pswitch_2
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsCelebTrack:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasAlbumInfo:Z

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 254
    :pswitch_3
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsCelebTrack:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasArtist:Z

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 256
    :pswitch_4
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsSmartStation:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x7f1205d0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public launchAlbumDetail()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "RadioMainOptionMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick : Album : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 375
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 377
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9046"

    .line 378
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v0, "RadioMainOptionMenu"

    const-string/jumbo v1, "onItemClick : Curr Track is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchArtistDetail()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "RadioMainOptionMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick : Artist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 359
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getArtistId()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 360
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9047"

    .line 361
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v0, "RadioMainOptionMenu"

    const-string/jumbo v1, "onItemClick : Curr Track is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/high16 v4, 0x10000000

    .line 80
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 81
    .local v2, "item":Landroid/view/MenuItem;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "argument":Landroid/os/Bundle;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 131
    const-string v3, "RadioMainOptionMenu"

    const-string/jumbo v4, "onItemClick : Not Define !!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 87
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "901"

    const-string v5, "9011"

    .line 88
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->shareSataion()V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->blockSong()V

    .line 95
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "901"

    const-string v5, "9045"

    .line 96
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_3
    const-string/jumbo v3, "whole"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    invoke-interface {v4}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-direct {v5}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;-><init>()V

    const-string v6, "RadioResetCustomizeDialDialog"

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "901"

    const-string v5, "9041"

    .line 104
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "901"

    const-string v5, "9043"

    .line 113
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "901"

    const-string v5, "9044"

    .line 122
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->launchAlbumDetail()V

    goto/16 :goto_0

    .line 128
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->launchArtistDetail()V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x7f1205ce
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 327
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mPrimaryColor:I

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->onPrimaryColorChanged(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->dismiss()V

    .line 76
    :cond_0
    return-void
.end method

.method public shareSataion()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mCurrentTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareStation(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 347
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9042"

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->dismiss()V

    goto :goto_0
.end method

.method public showMoreMenu()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 335
    return-void
.end method

.method public supportAlbumDetail()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsCelebTrack:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasAlbumInfo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportArtistDetail()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mIsCelebTrack:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->hasArtist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mOptionsPopupMenu:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->show()V

    .line 275
    :cond_0
    return-void
.end method

.method public updateBtnStatus(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 2
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->initValue(Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu$3;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainMoreMenu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method
