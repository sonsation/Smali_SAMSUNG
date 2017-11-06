.class public final Lcom/samsung/android/app/music/common/player/RepeatController;
.super Ljava/lang/Object;
.source "RepeatController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;
    }
.end annotation


# instance fields
.field private final mClicker:Landroid/view/View;

.field private mClickerClicked:Z

.field private final mContext:Landroid/content/Context;

.field private final mEnabledToast:Z

.field private final mEnabledVI:Z

.field private final mIcon:Landroid/widget/ImageView;

.field private mMode:I

.field private mOnRepeatChangedListener:Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;

.field private mPlayerQueueLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p4, "enabledToast"    # Z
    .param p5, "enabledVI"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mMode:I

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mContext:Landroid/content/Context;

    .line 56
    const v0, 0x7f1201dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClicker:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClicker:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/common/player/RepeatController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/RepeatController$1;-><init>(Lcom/samsung/android/app/music/common/player/RepeatController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f1201dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mIcon:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClicker:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/player/RepeatController;->setAirView(Landroid/content/Context;Landroid/view/View;)V

    .line 73
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 75
    iput-boolean p4, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mEnabledToast:Z

    .line 76
    iput-boolean p5, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mEnabledVI:Z

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/player/RepeatController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/RepeatController;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClickerClicked:Z

    return p1
.end method

.method private getImgResId(IZ)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "enabledVI"    # Z

    .prologue
    .line 126
    const/4 v0, -0x1

    .line 127
    .local v0, "imgResId":I
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    return v0

    .line 129
    :pswitch_0
    if-eqz p2, :cond_0

    .line 130
    const v0, 0x7f02010b

    goto :goto_0

    .line 132
    :cond_0
    const v0, 0x7f02010d

    .line 134
    goto :goto_0

    .line 136
    :pswitch_1
    if-eqz p2, :cond_1

    .line 137
    const v0, 0x7f02010c

    goto :goto_0

    .line 139
    :cond_1
    const v0, 0x7f02010b

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    if-eqz p2, :cond_2

    .line 144
    const v0, 0x7f02010d

    goto :goto_0

    .line 146
    :cond_2
    const v0, 0x7f02010c

    .line 148
    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrResId(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 156
    const/4 v0, -0x1

    .line 157
    .local v0, "strResId":I
    packed-switch p1, :pswitch_data_0

    .line 170
    :goto_0
    return v0

    .line 159
    :pswitch_0
    const v0, 0x7f0a01f7

    .line 160
    goto :goto_0

    .line 162
    :pswitch_1
    const v0, 0x7f0a01ef

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    const v0, 0x7f0a01d9

    .line 166
    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setAirView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 83
    :cond_0
    return-void
.end method

.method private updateAll(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v2, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 205
    .local v1, "values":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 208
    const-string v2, "extra.repeat_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/RepeatController;->updateInfo(I)V

    goto :goto_0
.end method

.method private updateInfo(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 86
    iget v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mMode:I

    if-ne v3, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mMode:I

    .line 90
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mEnabledVI:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClickerClicked:Z

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 91
    .local v0, "enabledButtonAni":Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/player/RepeatController;->getImgResId(IZ)I

    move-result v1

    .line 92
    .local v1, "imgResId":I
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/RepeatController;->getStrResId(I)I

    move-result v2

    .line 94
    .local v2, "strResId":I
    if-eq v1, v7, :cond_2

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    if-eqz v0, :cond_2

    .line 97
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 101
    :cond_2
    if-eq v2, v7, :cond_3

    .line 102
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClicker:Landroid/view/View;

    const v6, 0x7f0a01f6

    .line 103
    invoke-static {v3, v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setStateButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;II)V

    .line 105
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClicker:Landroid/view/View;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->invalidateAirView(Landroid/view/View;)V

    .line 110
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClickerClicked:Z

    if-eqz v3, :cond_0

    .line 111
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mEnabledToast:Z

    if-eqz v3, :cond_4

    if-eq v2, v7, :cond_4

    .line 112
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 114
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClicker:Landroid/view/View;

    const v5, 0x8000

    invoke-virtual {v3, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 115
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mPlayerQueueLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    if-eqz v3, :cond_5

    .line 116
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mPlayerQueueLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;->repeat(I)V

    .line 118
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mOnRepeatChangedListener:Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;

    if-eqz v3, :cond_6

    .line 119
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mOnRepeatChangedListener:Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;->onRepeatChanged(I)V

    .line 121
    :cond_6
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClickerClicked:Z

    goto :goto_0

    .end local v0    # "enabledButtonAni":Z
    .end local v1    # "imgResId":I
    .end local v2    # "strResId":I
    :cond_7
    move v0, v4

    .line 90
    goto :goto_1
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 195
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/RepeatController;->updateAll(Landroid/os/Bundle;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 180
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 185
    return-void
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
    .line 190
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/RepeatController;->updateAll(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mClicker:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public setOnRepeatChangedListener(Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mOnRepeatChangedListener:Lcom/samsung/android/app/music/common/player/RepeatController$OnRepeatChangedListener;

    .line 214
    return-void
.end method

.method public setPlayerQueueLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;)V
    .locals 0
    .param p1, "playerQueueLogger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/RepeatController;->mPlayerQueueLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    .line 218
    return-void
.end method
