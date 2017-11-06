.class public final Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
.super Ljava/lang/Object;
.source "AlbumCoverTagsUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNDEFINED_CONNECTION_TYPE:I = -0x2


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumHeight:I

.field private mAlbumWidth:I

.field private mArgs:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

.field private final mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

.field private mCanVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mLyricsIconEnabled:Z

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

.field private final mNetworkStateChangedListener:Landroid/content/BroadcastReceiver;

.field private final mObservableMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerType:I

.field private mSoundPath:I

.field private final mTagContainer:Landroid/view/View;

.field private final mTagPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagVisibilityHandler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;

.field private mUhqUpscaleSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

.field private final mVisibilityPredicate:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)V
    .locals 9
    .param p1, "builder"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;

    .prologue
    const/4 v6, 0x1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v5, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagVisibilityHandler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagPresenters:Ljava/util/List;

    .line 57
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    .line 77
    iput v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mPlayerType:I

    .line 79
    iput v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mSoundPath:I

    .line 81
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mLyricsIconEnabled:Z

    .line 85
    new-instance v5, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    new-instance v6, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$OnMediaEventListener;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    .line 165
    new-instance v5, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$2;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v5, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$3;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mNetworkStateChangedListener:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mActivity:Ljava/lang/ref/WeakReference;

    .line 196
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$1600(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 197
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagContainer:Landroid/view/View;

    .line 198
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mVisibilityPredicate:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;

    .line 199
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    .line 201
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->init(Landroid/content/Context;)V

    .line 203
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$1900(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 204
    .local v3, "tagInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;[I>;"
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [I

    array-length v5, v5

    new-array v2, v5, [Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .line 207
    .local v2, "observables":[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 208
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [I

    aget v4, v5, v0

    .line 209
    .local v4, "type":I
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    sget-object v5, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;->MAP:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    invoke-direct {v1, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)V

    .line 212
    .local v1, "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    aput-object v1, v2, v0

    .line 213
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    .end local v1    # "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    .end local v4    # "type":I
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagPresenters:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-direct {v8, v5, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;-><init>(Landroid/view/View;[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    .end local v2    # "observables":[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    .end local v3    # "tagInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;[I>;"
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$2000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 219
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;->access$2000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->add(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;)V

    .line 221
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 222
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;->start()V

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$Builder;)V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mCanVisible:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->updateConnectionObservable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->updateTagPosition(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->updateInternal()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mPlayerType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mPlayerType:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mSoundPath:I

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mSoundPath:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumHeight:I

    return p1
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->setTagsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mArgs:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mArgs:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->updateStreamTypeObservable(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->updateLyricsObservable(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->updateUpscalerObservable(Landroid/content/Context;)V

    return-void
.end method

.method private registerConnectionStateChangedListener()V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mNetworkStateChangedListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerUhqaSettingChangedListener()V
    .locals 5

    .prologue
    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 359
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 360
    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->supportUpscalerInArtwork(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mUhqUpscaleSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    .line 364
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mUhqUpscaleSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$4;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    .line 365
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->setOnContentChangeListener(Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;)V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setTagsVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 298
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumHeight:I

    if-lez v0, :cond_3

    if-eqz p1, :cond_3

    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mCanVisible:Z

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mVisibilityPredicate:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mVisibilityPredicate:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$IVisibility;->canVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTagsVisibility : Visible"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTagsVisibility : Invisible"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterConnectionStateChangedListener()V
    .locals 2

    .prologue
    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mNetworkStateChangedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterUhqaSettingChangedListener()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mUhqUpscaleSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mUhqUpscaleSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->setOnContentChangeListener(Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;)V

    .line 391
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAudioStateChangedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateConnectionObservable(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mArgs:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mArgs:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    iget-object v4, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v4, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .line 263
    .local v3, "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    if-eqz v3, :cond_0

    .line 266
    const-string v4, "connectivity"

    .line 267
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 268
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 269
    .local v2, "info":Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    const/4 v1, -0x2

    .line 270
    .local v1, "connectionType":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mArgs:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    iget-object v4, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v4

    invoke-static {v4, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->from(ZI)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    .end local v1    # "connectionType":I
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_1
.end method

.method private updateInternal()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagPresenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;

    .line 318
    .local v0, "p":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->update()V

    goto :goto_0

    .line 320
    .end local v0    # "p":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagVisibilityHandler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;->show(I)V

    .line 321
    return-void
.end method

.method private updateLyricsObservable(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 3
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .line 239
    .local v0, "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    if-nez v0, :cond_0

    .line 244
    .end local p1    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :goto_0
    return-void

    .line 242
    .restart local p1    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mLyricsIconEnabled:Z

    if-eqz v1, :cond_1

    .line 243
    .end local p1    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;->from(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$LyricsType;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .restart local p1    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_1
.end method

.method private updateStreamTypeObservable(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 226
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .line 227
    .local v1, "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    if-nez v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "milk_streaming_quality_mobile"

    .line 231
    .local v0, "connectivityKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const-string v0, "milk_streaming_quality_wifi"

    .line 234
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->from(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateTagPosition(II)V
    .locals 7
    .param p1, "albumWidth"    # I
    .param p2, "albumHeight"    # I

    .prologue
    .line 275
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 276
    .local v1, "containerWidth":I
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 278
    .local v0, "containerHeight":I
    iget v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumWidth:I

    if-ne v4, p1, :cond_0

    iget v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumHeight:I

    if-eq v4, p2, :cond_1

    .line 279
    :cond_0
    sub-int v4, v0, p2

    div-int/lit8 v3, v4, 0x2

    .line 280
    .local v3, "paddingVertical":I
    sub-int v4, v1, p1

    div-int/lit8 v2, v4, 0x2

    .line 281
    .local v2, "paddingHorizontal":I
    if-ltz v3, :cond_1

    if-gez v2, :cond_2

    .line 295
    .end local v2    # "paddingHorizontal":I
    .end local v3    # "paddingVertical":I
    :cond_1
    :goto_0
    return-void

    .line 284
    .restart local v2    # "paddingHorizontal":I
    .restart local v3    # "paddingVertical":I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagContainer:Landroid/view/View;

    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumWidth:I

    .line 288
    iput p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mAlbumHeight:I

    .line 289
    sget-object v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTagPosition - padding horizontal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", vertical : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", container w : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", album w : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->setTagsVisibility(Z)V

    goto :goto_0
.end method

.method private updateUpscalerObservable(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mObservableMap:Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .line 248
    .local v1, "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    if-nez v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 252
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mUhqUpscaleSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mUhqUpscaleSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    .line 253
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->isUhqUpscalerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathUhqUpscalerActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 255
    .local v0, "isUpscalerEnabled":Z
    :goto_1
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mPlayerType:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->from(ZI)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    .end local v0    # "isUpscalerEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public attach()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;->start()V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 341
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;->clear()V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 346
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;->stop()V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagVisibilityHandler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;->hide()V

    .line 336
    return-void
.end method

.method public onStartCalled()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->registerUhqaSettingChangedListener()V

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->registerConnectionStateChangedListener()V

    .line 326
    return-void
.end method

.method public onStopCalled()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->unregisterUhqaSettingChangedListener()V

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->unregisterConnectionStateChangedListener()V

    .line 331
    return-void
.end method

.method public setLyricsIconEnabled(Z)V
    .locals 0
    .param p1, "lyricsIconEnabled"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mLyricsIconEnabled:Z

    .line 355
    return-void
.end method

.method public show(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mMediaEventCollector:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector;->start()V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->mTagVisibilityHandler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$TagVisibilityHandler;->show(I)V

    .line 351
    return-void
.end method
