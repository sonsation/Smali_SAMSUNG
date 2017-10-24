.class public Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;
.super Lcom/sec/android/cover/clearcover/ClearCoverPage;
.source "ClearCoverFlatPage.java"

# interfaces
.implements Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

.field private mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

.field private mRemoteViewContainerStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/cover/widget/RemoteViewContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p1, "latestRemoteView"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    .line 69
    return-void
.end method

.method private isPlayingCurrentRemoteView()Z
    .locals 6

    .prologue
    .line 245
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v3, 0x0

    return v3

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "currentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 250
    .local v1, "info":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    .line 252
    :goto_0
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPlayingCurrentRemoteView() currentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v2

    .line 250
    :cond_1
    const/4 v2, 0x0

    .local v2, "isPlaying":Z
    goto :goto_0
.end method

.method private updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 7
    .param p1, "latestRemoteView"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 140
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRemoteViewContainerVisibility()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 143
    .local v1, "type":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    .line 145
    .local v2, "visibility":Z
    const/4 v0, 0x0

    .line 147
    .local v0, "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    const-string/jumbo v3, "voice_recorder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 153
    .end local v0    # "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 154
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return : container is null, type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 149
    .restart local v0    # "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_1
    const-string/jumbo v3, "video_controller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .local v0, "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    goto :goto_0

    .line 158
    .end local v0    # "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_2
    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    if-nez v3, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->isPlayingCurrentRemoteView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return : current remote view is playing("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 161
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 161
    const-string/jumbo v5, ")"

    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isCurentlyPlaying()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "return : MusicPlayer is playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 170
    :cond_4
    if-eqz v2, :cond_8

    .line 171
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "return : top container and latest container are same"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 175
    :cond_5
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 176
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 178
    :cond_6
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v0, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v3, :cond_7

    .line 184
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 139
    :cond_7
    :goto_1
    return-void

    .line 187
    :cond_8
    invoke-virtual {v0, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 188
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 190
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onAttachedToWindow()V

    .line 115
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 113
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->onCoverOpen()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onDetachedFromWindow()V

    .line 122
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 120
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 76
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onFinishInflate()V

    .line 79
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_remoteview_contatiner:I

    .line 78
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 80
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v2, "volume"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 85
    :cond_0
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_voice_recorder_remoteview_contatiner:I

    .line 84
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 86
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v2, "voice_recorder"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 91
    :cond_1
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_video_remoteview_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 92
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string/jumbo v2, "video_controller"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 97
    :cond_2
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_music_widget:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    .line 99
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    .line 104
    :cond_3
    sget v1, Lcom/sec/android/sviewcover/R$id;->stub_notifications:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 105
    .local v0, "vStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->requestRemoteViews()V

    .line 75
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onMusicPakcageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 258
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    const/16 v3, 0x8

    .line 198
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 206
    .local v0, "view":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 216
    .end local v0    # "view":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    :cond_2
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionDestroyed()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->clear()V

    .line 237
    :cond_0
    return-void
.end method
