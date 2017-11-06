.class final Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;
.super Ljava/lang/Object;
.source "DmrVolumeControlImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;


# instance fields
.field private final mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

.field private mInternalVolumeIcon:Landroid/view/View;

.field private final mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

.field private final mLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

.field private mPanel:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;)V
    .locals 0
    .param p1, "look"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;
    .param p2, "actionCallback"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;
    .param p3, "listener"    # Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    return-object v0
.end method

.method private setUpVolumeIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    const v0, 0x7f120057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$3;-><init>(Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustVolume(ZI)Z
    .locals 1
    .param p1, "fromDpad"    # Z
    .param p2, "direction"    # I

    .prologue
    .line 40
    packed-switch p2, :pswitch_data_0

    .line 50
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->showPanel()V

    .line 51
    const/4 v0, 0x1

    return v0

    .line 42
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeUp()V

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeDown()V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ensurePanel()V
    .locals 8

    .prologue
    .line 62
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    .line 117
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mLook:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;->onCreate(Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;)Landroid/widget/PopupWindow;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    .line 67
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    new-instance v7, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$1;

    invoke-direct {v7, p0, v2}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$1;-><init>(Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 78
    new-instance v1, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$2;-><init>(Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;)V

    .line 98
    .local v1, "dmrButtonClickListener":Landroid/view/View$OnClickListener;
    const v6, 0x7f1201fc

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "volumeUpButton":Landroid/view/View;
    const v6, 0x7f1201fd

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "volumeDownButton":Landroid/view/View;
    const v6, 0x7f1201fe

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "volumeMuteButton":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;)V

    .line 109
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;)V

    .line 110
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;)V

    .line 112
    :cond_1
    const v6, 0x7f0a0207

    invoke-static {v0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 113
    const v6, 0x7f0a0206

    invoke-static {v0, v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 114
    const v6, 0x7f0a01ea

    invoke-static {v0, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 116
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->setUpVolumeIcon(Landroid/view/View;)V

    goto :goto_0
.end method

.method public hidePanel()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 132
    :cond_0
    return-void
.end method

.method public isShowingPanel()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/util/UiUtils;->isVolumeUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->adjustVolume(ZI)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 162
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/util/UiUtils;->isVolumeDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->adjustVolume(ZI)Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isVolumeMute(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->toggleMute()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public setContentDescription(Landroid/view/View;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 155
    return-void
.end method

.method public showPanel()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->ensurePanel()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mActionCallback:Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mPanel:Landroid/widget/PopupWindow;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelActionCallback;->onShow(Landroid/widget/PopupWindow;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;->onPanelVisibilityChanged(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->updateIcon()V

    .line 125
    return-void
.end method

.method public toggleMute()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setDlnaDmrMute()V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->showPanel()V

    .line 58
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mListener:Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;->onVolumeStateChanged(Z)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->mInternalVolumeIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public updatePanel()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
