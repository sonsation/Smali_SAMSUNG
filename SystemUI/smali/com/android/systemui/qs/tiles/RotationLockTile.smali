.class public Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RotationLockTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/RotationLockTile$1;,
        Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private final mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mRotationLocked:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/RotationLockTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/RotationLockTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/RotationLockTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->showItPolicyToast()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const v6, 0x7f0c0084

    const v4, 0x7f0b00ff

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 66
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f0203e3

    const v3, 0x7f0203f3

    move-object v1, p0

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;IIIIII)V

    .line 65
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 70
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f0203c1

    const v3, 0x7f0203d1

    move-object v1, p0

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;IIIIII)V

    .line 69
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 75
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f0203d2

    const v3, 0x7f0203e2

    move-object v1, p0

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;IIIIII)V

    .line 74
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 79
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f0203b0

    const v3, 0x7f0203c0

    move-object v1, p0

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;IIIIII)V

    .line 78
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 250
    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 92
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 94
    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 90
    return-void
.end method

.method private getAccessibilityString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "locked"    # Z

    .prologue
    const v2, 0x7f0f0380

    .line 231
    if-eqz p1, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    .line 236
    const v4, 0x7f0f0383

    .line 235
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 233
    const v0, 0x7f0f0381

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    .line 238
    const v4, 0x7f0f0384

    .line 237
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z
    .locals 5
    .param p0, "controller"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result v0

    .line 211
    .local v0, "lockOrientation":I
    if-nez v0, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 216
    :cond_1
    if-eq v0, v4, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x7b

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleClick()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isRotationLockTileBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->showItPolicyToast()V

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v2, :cond_1

    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f0435

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    .line 141
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const v7, 0x7f0f0436

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 145
    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v2, :cond_3

    .line 146
    return-void

    .line 149
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getMetricsCategory()I

    move-result v6

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    .line 151
    .local v0, "newState":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz v0, :cond_5

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState(Ljava/lang/Object;)V

    .line 130
    return-void

    .end local v0    # "newState":Z
    :cond_4
    move v2, v4

    .line 149
    goto :goto_0

    .restart local v0    # "newState":Z
    :cond_5
    move v3, v4

    .line 151
    goto :goto_1
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0203f3

    .line 162
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v4, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v2

    .line 168
    .local v2, "rotationLocked":Z
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 170
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 176
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z

    move-result v1

    .line 177
    .local v1, "portrait":Z
    if-eqz v2, :cond_4

    .line 178
    if-eqz v1, :cond_1

    const v0, 0x7f0f0383

    .line 180
    .local v0, "label":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 181
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v3, :cond_2

    .line 182
    const v3, 0x7f0203d1

    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 200
    .end local v0    # "label":I
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    .line 205
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 204
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 161
    return-void

    .line 179
    :cond_1
    const v0, 0x7f0f0384

    .restart local v0    # "label":I
    goto :goto_0

    .line 184
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_2
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_2

    .line 188
    .end local v0    # "label":I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0f037f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 189
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v4, :cond_5

    .line 190
    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 192
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mRotationLocked:Z

    if-eq v4, v2, :cond_7

    .line 193
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_3
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_3

    .line 195
    :cond_7
    if-eqz v1, :cond_8

    :goto_4
    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 196
    :cond_8
    const v3, 0x7f0203e2

    goto :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    if-eqz p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    .line 105
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->removeRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0
.end method
