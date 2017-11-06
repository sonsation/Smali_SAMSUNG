.class public Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;
.super Landroid/app/Fragment;
.source "AdFragmentMezzoVideo.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;
.implements Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdFragmentMezzoVideo-"


# instance fields
.field private bActiveVideo:Z

.field private bBlockingBackKey:Z

.field private bChangedCp:Z

.field private bPaused:Z

.field mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bActiveVideo:Z

    .line 38
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bPaused:Z

    .line 40
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bChangedCp:Z

    return-void
.end method

.method private getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Z)Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;
    .locals 4
    .param p0, "b"    # Z

    .prologue
    .line 46
    const-string v2, "AdFragmentMezzoVideo-"

    const-string v3, "newInstance"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;-><init>()V

    .line 49
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;
    iput-boolean p0, v1, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bChangedCp:Z

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "EXTRA_AD_POPUP_TYPE"

    sget-object v3, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method

.method private release()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->postStickyAdPopupClosed(Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public onBlock(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 189
    const-string v0, "AdFragmentMezzoVideo-"

    const-string/jumbo v1, "onBlock"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bBlockingBackKey:Z

    .line 195
    return-void
.end method

.method public onChangeCp()V
    .locals 4

    .prologue
    .line 211
    const-string v2, "AdFragmentMezzoVideo-"

    const-string/jumbo v3, "onChangeCp"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bChangedCp:Z

    if-nez v2, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;->INCROSS:Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->launch(Landroid/content/Context;Lcom/samsung/android/app/music/milk/advertise/AdPopupDlgFactory$ADPOPUP_TYPE;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 222
    .local v0, "delayHandler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo$2;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->onPlayCompleted()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    const-string v0, "AdFragmentMezzoVideo-"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    const-string v0, "AdFragmentMezzoVideo-"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const v0, 0x7f040133

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 167
    const-string v0, "AdFragmentMezzoVideo-"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->destroy()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    .line 173
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 199
    const-string v0, "AdFragmentMezzoVideo-"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError - code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->destroy()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->release()V

    .line 207
    return-void
.end method

.method public onKeyBackPressed()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "AdFragmentMezzoVideo-"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bBlockingBackKey:Z

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->destroy()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->release()V

    .line 245
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 153
    const-string v0, "AdFragmentMezzoVideo-"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bActiveVideo:Z

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->pause()V

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bPaused:Z

    .line 161
    return-void
.end method

.method public onPlayCompleted()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "AdFragmentMezzoVideo-"

    const-string/jumbo v1, "onPlayCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->destroy()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->release()V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 138
    const-string v0, "AdFragmentMezzoVideo-"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bActiveVideo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->resume()V

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bPaused:Z

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->onKeyBackPressed()V

    .line 147
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    const-string v2, "AdFragmentMezzoVideo-"

    const-string/jumbo v3, "onViewCreated"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const v2, 0x7f120398

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->bBlockingBackKey:Z

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->mAdVideo:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->showVideoAd(Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;)V

    .line 83
    const v2, 0x7f120394

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    .local v1, "doNotShow":Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 85
    new-instance v2, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo$1;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "842"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;

    .line 114
    .local v0, "activity":Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/app/music/milk/advertise/AdPopupActivity$onKeyBackPressedListener;)V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setVideoAdPlayTime(J)V

    .line 132
    return-void
.end method
