.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;
.source "MilkSearchStoreTrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStoreTrackAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyworkd"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->setHighlightWord(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->playRequest(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private playRequest(Ljava/util/List;I)V
    .locals 2
    .param p2, "newPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;Ljava/util/List;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;Ljava/util/List;I)V

    .line 170
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 194
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 195
    return-void
.end method

.method private playTracks(Ljava/util/List;I)V
    .locals 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;Ljava/util/List;I)V

    .line 157
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method


# virtual methods
.method protected addAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->addAll(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method protected clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->clear(Z)V

    .line 112
    return-void
.end method

.method protected createTrackViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->CHECK_BOX:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->IMAGE:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MORE_MENU:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->SHORT_DIVIDER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MATCHED_TEXT:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    .line 59
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->create(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected getLogScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "964"

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "MilkSearchStoreTrackAdapter"

    return-object v0
.end method

.method public playWithCurrentPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    move v0, p1

    .line 75
    .local v0, "newPosition":I
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->playTracks(Ljava/util/List;I)V

    .line 76
    return-void

    .line 72
    .end local v0    # "newPosition":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v0, 0x0

    .restart local v0    # "newPosition":I
    goto :goto_0
.end method

.method protected pressLongClick()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "964"

    const-string v2, "9632"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected selectMoreOption()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "964"

    const-string v2, "9631"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected shouldShowSelectHeader()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
