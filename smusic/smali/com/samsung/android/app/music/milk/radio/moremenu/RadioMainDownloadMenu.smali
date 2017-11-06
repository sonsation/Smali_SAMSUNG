.class public Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;
.super Ljava/lang/Object;
.source "RadioMainDownloadMenu.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioMainDownloadMenu"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

.field private mContext:Landroid/content/Context;

.field protected mDownloadListener:Landroid/view/View$OnClickListener;

.field private mDownloadView:Landroid/view/View;

.field private mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

.field private mMainHandler:Landroid/os/Handler;

.field private mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .param p5, "radioService"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadListener:Landroid/view/View$OnClickListener;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mMainHandler:Landroid/os/Handler;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mContext:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mActivity:Landroid/app/Activity;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadView:Landroid/view/View;

    .line 60
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 61
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->initialize()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a032f

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public isDownloadEnable()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public launchDownload()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mActivity:Landroid/app/Activity;

    .line 194
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 156
    packed-switch p2, :pswitch_data_0

    .line 186
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    if-nez p3, :cond_0

    .line 159
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->getTrackInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 160
    .local v0, "model":Lcom/samsung/android/app/music/common/model/TrackDetail;
    if-nez v0, :cond_1

    .line 161
    const-string v1, "RadioMainDownloadMenu"

    const-string v2, "onApiHandled : model is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSongPurchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2"

    .line 166
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSongPurchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    :cond_2
    const-string v1, "RadioMainDownloadMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsPurhchasable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSongPurchasable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSongPurchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 171
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->callUpdateView()V

    goto :goto_0

    .line 173
    :cond_4
    const-string v1, "RadioMainDownloadMenu"

    const-string v2, "IsPurhchasable : null or 0  : "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_5

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 177
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x2b5d
        :pswitch_0
    .end packed-switch
.end method

.method protected updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V
    .locals 3
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .param p2, "enable"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 121
    :cond_0
    const-string v0, "RadioMainDownloadMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBtnResource : last track or track is null. track - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    const-string v0, "RadioMainDownloadMenu"

    const-string/jumbo v1, "updateBtnResource : track id is different!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadView:Landroid/view/View;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadListener:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateBtnResource(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 3
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    const-string v0, "RadioMainDownloadMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateBtnStatus] mLastTrack id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastTrack purchasable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 79
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Track id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", track isPurchasable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;Lcom/samsung/android/app/music/common/model/Track;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 117
    return-void
.end method
