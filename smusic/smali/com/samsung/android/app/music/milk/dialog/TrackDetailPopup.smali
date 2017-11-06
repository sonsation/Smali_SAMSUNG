.class public Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "TrackDetailPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final KEY_SIMPLE_TRACK:Ljava/lang/String; = "key_simple_track"

.field private static final LOG_TAG:Ljava/lang/String; = "TrackDetailPopup"

.field private static final MENUS:[I


# instance fields
.field private mAlbumArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mArtistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistNameView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

.field private mLogScreen:Ljava/lang/String;

.field private mMenuAdd:Landroid/view/View;

.field private mMenuAlbum:Landroid/view/View;

.field private mMenuArtist:Landroid/view/View;

.field private mMenuCreateStation:Landroid/view/View;

.field private mMenuDownloadable:Landroid/view/View;

.field private mMenuFavorite:Landroid/view/View;

.field private mMenuLyric:Landroid/view/View;

.field private mMenuMv:Landroid/view/View;

.field private mMenuShare:Landroid/view/View;

.field private mMenuTogglePlay:Landroid/view/View;

.field private mScrollQueueHandler:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

.field private mSeedUsableArtist:Lcom/samsung/android/app/music/common/model/artist/Artist;

.field private mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

.field private mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

.field private mTrackTitleView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->MENUS:[I

    return-void

    :array_0
    .array-data 4
        0x7f12027b
        0x7f12045d
        0x7f120462
        0x7f120463
        0x7f120461
        0x7f120464
        0x7f12045f
        0x7f120460
        0x7f12045e
        0x7f12001c
        0x7f12045b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mScrollQueueHandler:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)Lcom/samsung/android/app/music/common/model/TrackDetail;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuFavorite:Landroid/view/View;

    return-object v0
.end method

.method private getAudioIDFromTrackID(Lcom/samsung/android/app/music/common/model/SimpleTrack;)J
    .locals 6
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    const-wide/16 v2, -0x1

    .line 621
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-wide v2

    .line 625
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v0

    .line 629
    .local v0, "playIdList":[J
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 633
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    goto :goto_0
.end method

.method public static getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "TrackDetailPopup"

    return-object v0
.end method

.method private logFavorite()V
    .locals 3

    .prologue
    .line 611
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v2, "9101"

    .line 612
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private loggingForShare()V
    .locals 3

    .prologue
    .line 616
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "964"

    const-string v2, "9102"

    .line 617
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
    .locals 4
    .param p0, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    const-string v2, "TrackDetailPopup"

    const-string v3, "newInstance : track is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    .line 119
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;-><init>()V

    .line 120
    .local v1, "popup":Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_simple_track"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
    .locals 3
    .param p0, "trackId"    # Ljava/lang/String;

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    const-string v1, "TrackDetailPopup"

    const-string v2, "newInstance : track id is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    .line 131
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 132
    .local v0, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->newInstance(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    move-result-object v1

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)V
    .locals 4
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;
    .param p3, "logScreen"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    const-string v1, "TrackDetailPopup"

    const-string/jumbo v2, "show : fragment manager is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v1, "TrackDetailPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show : track - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->newInstance(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    move-result-object v0

    .line 152
    .local v0, "popup":Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
    if-nez v0, :cond_1

    .line 153
    const-string v1, "TrackDetailPopup"

    const-string/jumbo v2, "show : popup is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    if-eqz p2, :cond_2

    .line 158
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->setOnDialogStateListener(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)V

    .line 160
    :cond_2
    const-string v1, "TrackDetailPopup"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->setLogScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static show(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 1
    .param p0, "logScreen"    # Ljava/lang/String;
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private updateView()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 245
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-nez v3, :cond_1

    .line 246
    const-string v3, "TrackDetailPopup"

    const-string/jumbo v4, "updateView : info null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->updatePlayingInfo()V

    .line 252
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "imageUrl":Ljava/lang/String;
    const-string v3, "none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    const/4 v1, 0x0

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mArtistNameView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    if-eqz v3, :cond_3

    .line 257
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mAlbumArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const/4 v6, 0x0

    const v7, 0x7f0200d9

    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 260
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackTitleView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    if-eqz v3, :cond_4

    .line 261
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackTitleView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mArtistNameView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    if-eqz v3, :cond_5

    .line 265
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mArtistNameView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mScrollQueueHandler:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->start()V

    .line 270
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuMv:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 271
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuAdd:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 272
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuCreateStation:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 274
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isShareable()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 275
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 277
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 278
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 287
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuDownloadable:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 289
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    instance-of v3, v3, Lcom/samsung/android/app/music/common/model/TrackDetail;

    if-eqz v3, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    check-cast v0, Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 295
    .local v0, "detail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuMv:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->hasMusicVideo()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuDownloadable:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isDownloadable()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isCelebTrack()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuAlbum:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->hasAvailableAlbum()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isCelebTrack()Z

    move-result v3

    if-nez v3, :cond_c

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuArtist:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->hasAvailableArtist()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isCelebTrack()Z

    move-result v3

    if-nez v3, :cond_d

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->hasLyric()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 301
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuLyric:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_6
    const-string v3, "1"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSeedUsable()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "01"

    .line 305
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSeedUsable()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_7
    move v2, v4

    .line 306
    .local v2, "isSeedUsable":Z
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuCreateStation:Landroid/view/View;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isCelebTrack()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mArtistList:Ljava/util/ArrayList;

    .line 310
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 311
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuAdd:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 312
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuTogglePlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuFavorite:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuFavorite:Landroid/view/View;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isFavorite()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_0

    .line 280
    .end local v0    # "detail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    .end local v2    # "isSeedUsable":Z
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 281
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 284
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .restart local v0    # "detail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    :cond_b
    move v3, v5

    .line 296
    goto/16 :goto_2

    :cond_c
    move v3, v5

    .line 297
    goto/16 :goto_3

    :cond_d
    move v3, v5

    .line 298
    goto :goto_4

    :cond_e
    move v2, v5

    .line 305
    goto :goto_5

    .restart local v2    # "isSeedUsable":Z
    :cond_f
    move v3, v5

    .line 306
    goto :goto_6
.end method


# virtual methods
.method protected getDimAmount()F
    .locals 1

    .prologue
    .line 327
    const v0, 0x3e99999a    # 0.3f

    return v0
.end method

.method protected getHorizontalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0684

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 176
    const v0, 0x7f040182

    return v0
.end method

.method public getTrackDetailInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    return-object v0
.end method

.method protected isCurrentPlayingTrack()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 421
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-nez v1, :cond_1

    .line 422
    const-string v1, "TrackDetailPopup"

    const-string v2, "isCurrentPlayingTrack : track info is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getAudioIDFromTrackID(Lcom/samsung/android/app/music/common/model/SimpleTrack;)J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isPlaying()Z
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->isCurrentPlayingTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 343
    const-string v0, "TrackDetailPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled : id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 348
    const-string v3, "TrackDetailPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rsp - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 352
    :cond_0
    const-string v3, "TrackDetailPopup"

    const-string v4, "Can not get Activity instance"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 357
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_2
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 396
    :sswitch_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    const/16 v3, 0x2bd

    if-ne p2, v3, :cond_5

    const-string v3, "1"

    :goto_1
    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/common/model/TrackDetail;->setFavoriteYn(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuFavorite:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isFavorite()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 359
    :sswitch_1
    packed-switch p3, :pswitch_data_1

    .line 383
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    if-eqz v3, :cond_1

    .line 384
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->getResultCode()I

    move-result v0

    .line 385
    .local v0, "code":I
    const-string v3, "TrackDetailPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : error code - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->showError(II)V

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->dismiss()V

    goto :goto_0

    .line 361
    .end local v0    # "code":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    const-string v3, "TrackDetailPopup"

    const-string v4, "[onApiHandled] TrackDetailResponse success"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    if-eqz v3, :cond_4

    .line 363
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->getTrackInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v1

    .line 366
    .local v1, "model":Lcom/samsung/android/app/music/common/model/TrackDetail;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    .line 368
    .local v2, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v2, :cond_3

    .line 369
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v3

    if-nez v3, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "1"

    .line 372
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v5

    .line 371
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;->isFavorite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/model/TrackDetail;->setFavoriteYn(Ljava/lang/String;)V

    .line 375
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->updateTrackDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    goto/16 :goto_0

    .line 377
    .end local v1    # "model":Lcom/samsung/android/app/music/common/model/TrackDetail;
    .end local v2    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_4
    const-string v3, "TrackDetailPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : rspData is not instance of TrackDetailResponse!!. - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_5
    const-string v3, "0"

    goto/16 :goto_1

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x2bd -> :sswitch_0
        0x2bf -> :sswitch_0
        0x2b5d -> :sswitch_1
    .end sparse-switch

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 359
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-nez v1, :cond_1

    .line 435
    const-string v1, "TrackDetailPopup"

    const-string/jumbo v2, "onClick : mTrackInfo is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->dismiss()V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const/4 v12, 0x1

    .line 441
    .local v12, "dismiss":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 510
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    if-eqz v1, :cond_5

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 589
    :goto_2
    if-eqz v12, :cond_0

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->dismiss()V

    goto :goto_0

    .line 443
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9098"

    .line 444
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 447
    :sswitch_1
    const/4 v12, 0x1

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    .line 450
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v14

    .line 454
    .local v14, "explicit":I
    if-eqz v14, :cond_2

    .line 455
    const-string v1, "TrackDetailPopup"

    const-string/jumbo v2, "onClick : Not Permitted (Explicit)"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "explicit-invalid"

    .line 457
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 461
    .end local v14    # "explicit":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->playWithCurrentPosition(Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 462
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9100"

    .line 463
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :sswitch_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v17, "playlistTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    const/4 v2, 0x0

    .line 470
    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v16

    .line 471
    .local v16, "playIdListPlaylist":[J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->startActivity(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    .line 472
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9103"

    .line 473
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 477
    .end local v16    # "playIdListPlaylist":[J
    .end local v17    # "playlistTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :sswitch_3
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 478
    .local v19, "trackIds":[Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v19, v1

    .line 479
    const-string v1, "@"

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 480
    .local v15, "ids":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v15}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9105"

    .line 482
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 486
    .end local v15    # "ids":Ljava/lang/String;
    .end local v19    # "trackIds":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 487
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 488
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "964"

    const-string v3, "9106"

    .line 489
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 494
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 495
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveArtist(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/util/List;)Z

    .line 496
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9107"

    .line 497
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 501
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->isShareable(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v12, 0x0

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->loggingForShare()V

    goto/16 :goto_1

    .line 513
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 515
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getMvId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isMvExplicit()Z

    move-result v4

    .line 513
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    .line 516
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9108"

    .line 517
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 521
    :sswitch_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v11, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mSeedUsableArtist:Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 525
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mArtistList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 526
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isExplicit()Z

    move-result v10

    move-object/from16 v2, p0

    .line 524
    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZZ)V

    .line 527
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9104"

    .line 528
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 532
    .end local v11    # "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :sswitch_9
    const/4 v12, 0x0

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->show(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 534
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    const-string v3, "9099"

    .line 535
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 539
    :sswitch_a
    const/4 v12, 0x0

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v13, 0x1

    .line 543
    .local v13, "doFavorite":Z
    :goto_3
    if-eqz v13, :cond_4

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/model/Track;->createTrackFromTrackDetailinfo(Lcom/samsung/android/app/music/common/model/TrackDetail;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v18

    .line 545
    .local v18, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)V

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->logFavorite()V

    goto/16 :goto_2

    .line 541
    .end local v13    # "doFavorite":Z
    .end local v18    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 564
    .restart local v13    # "doFavorite":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v1

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->deleteFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    goto/16 :goto_2

    .line 586
    .end local v13    # "doFavorite":Z
    :cond_5
    const-string v1, "TrackDetailPopup"

    const-string/jumbo v2, "onClick : mTrackDetailInfo is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 441
    :sswitch_data_0
    .sparse-switch
        0x7f12001c -> :sswitch_6
        0x7f12010f -> :sswitch_0
        0x7f12045d -> :sswitch_1
        0x7f12045f -> :sswitch_2
        0x7f120461 -> :sswitch_3
        0x7f120462 -> :sswitch_4
        0x7f120463 -> :sswitch_5
    .end sparse-switch

    .line 511
    :sswitch_data_1
    .sparse-switch
        0x7f12045b -> :sswitch_9
        0x7f12045e -> :sswitch_a
        0x7f120460 -> :sswitch_8
        0x7f120464 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDestroy()V

    .line 238
    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/16 v6, 0x8

    .line 181
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDialogCreated(Landroid/app/Dialog;)V

    .line 183
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 186
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_simple_track"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 188
    const v2, 0x7f120406

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mAlbumArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 189
    const v2, 0x7f120456

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackTitleView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 190
    const v2, 0x7f12019f

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mArtistNameView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    .line 191
    const v2, 0x7f120461

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuDownloadable:Landroid/view/View;

    .line 192
    const v2, 0x7f12045d

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuTogglePlay:Landroid/view/View;

    .line 194
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mScrollQueueHandler:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackTitleView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->addScrollTextView(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;)V

    .line 195
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mScrollQueueHandler:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mArtistNameView:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->addScrollTextView(Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView;)V

    .line 197
    sget-object v3, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->MENUS:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 198
    .local v1, "menu":I
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "menu":I
    :cond_0
    const v2, 0x7f12045f

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuAdd:Landroid/view/View;

    .line 202
    const v2, 0x7f120464

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuMv:Landroid/view/View;

    .line 203
    const v2, 0x7f12045b

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuLyric:Landroid/view/View;

    .line 204
    const v2, 0x7f12045e

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuFavorite:Landroid/view/View;

    .line 205
    const v2, 0x7f120460

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuCreateStation:Landroid/view/View;

    .line 206
    const v2, 0x7f12001c

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    .line 208
    const v2, 0x7f120462

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuAlbum:Landroid/view/View;

    .line 209
    const v2, 0x7f120463

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuArtist:Landroid/view/View;

    .line 211
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuLyric:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuFavorite:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuShare:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mMenuTogglePlay:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->updateView()V

    .line 217
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 596
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 597
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mScrollQueueHandler:Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/ScrollTextView$ScrollTextQueueHandler;->release()V

    .line 598
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onMilkServiceConnected()V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->requestTrackDetail(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 602
    const-string v0, "TrackDetailPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWorkerFinished : sucess - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public playWithCurrentPosition(Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 5
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v0, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x100050

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 642
    return-void
.end method

.method public requestTrackDetail(Ljava/lang/String;)V
    .locals 1
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTrackDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public setLogScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "logScreen"    # Ljava/lang/String;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mLogScreen:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public setTrackInfo(Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 0
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 242
    return-void
.end method

.method public showError(II)V
    .locals 3
    .param p1, "rspType"    # I
    .param p2, "resultCode"    # I

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 332
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 333
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 335
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 338
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 607
    const-string v0, "TrackDetailPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoadingProgress : show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method protected updateAttribute(Landroid/app/Dialog;)V
    .locals 13
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v12, 0x0

    .line 654
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 655
    .local v6, "window":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 657
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getLogTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAttribute : before width - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gravity - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 661
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 663
    invoke-virtual {v6}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getHorizontalMargin(Landroid/content/Context;)I

    move-result v7

    int-to-float v5, v7

    .line 665
    .local v5, "widthMargin":F
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 668
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d03b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 670
    cmpl-float v7, v5, v12

    if-ltz v7, :cond_2

    .line 671
    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 681
    :goto_0
    invoke-virtual {v6}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getTop(Landroid/content/Context;)I

    move-result v3

    .line 682
    .local v3, "top":I
    if-ltz v3, :cond_0

    .line 683
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 684
    const/16 v7, 0x31

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getDimAmount()F

    move-result v7

    cmpl-float v7, v7, v12

    if-ltz v7, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getDimAmount()F

    move-result v7

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 689
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getLogTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAttribute : after width - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gravity - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 696
    return-void

    .line 673
    .end local v3    # "top":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    .line 674
    .local v0, "deviceType":I
    if-nez v0, :cond_3

    .line 675
    int-to-double v8, v4

    const-wide v10, 0x3feb333333333333L    # 0.85

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0

    .line 677
    :cond_3
    int-to-double v8, v4

    const-wide/high16 v10, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0
.end method

.method protected updatePlayingInfo()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackInfo:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    if-nez v0, :cond_0

    .line 321
    const-string v0, "TrackDetailPopup"

    const-string/jumbo v1, "updatePlayingInfo : track info is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public updateTrackDetail(Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 3
    .param p1, "detail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 409
    const-string v0, "TrackDetailPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTrackDetail : detail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->mTrackDetailInfo:Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->setTrackInfo(Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->updateView()V

    .line 414
    return-void
.end method
