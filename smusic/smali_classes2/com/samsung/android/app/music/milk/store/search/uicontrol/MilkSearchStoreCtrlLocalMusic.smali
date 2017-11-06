.class public Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;
.super Ljava/lang/Object;
.source "MilkSearchStoreCtrlLocalMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;

.field private mIsLocalMusicMode:Z

.field private mLocalModeButtonLayout:Landroid/view/View;

.field private mLocalModeDescription:Landroid/view/View;

.field private mLocalModeOffContainer:Landroid/view/View;

.field private mLocalModeOnContainer:Landroid/view/View;

.field private mSwitchButton:Landroid/widget/Switch;

.field private mSwitchTrackOffColor:I

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "resLocalMusicModeId"    # I
    .param p3, "resNonLocalMusicModeId"    # I
    .param p4, "color"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOnContainer:Landroid/view/View;

    .line 51
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOffContainer:Landroid/view/View;

    .line 52
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mIsLocalMusicMode:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->initLayout(Landroid/view/View;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->setColor(Landroid/content/Context;I)V

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->updateLocalMusicModeView()V

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mIsLocalMusicMode:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "963"

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOnContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOffContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->disappearLocalMusicModeWithAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mCallback:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->updateLocalMusicModeView()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mIsLocalMusicMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mIsLocalMusicMode:Z

    return p1
.end method

.method private disappearLocalMusicModeWithAnimation()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 94
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeButtonLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0001

    .line 95
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 96
    .local v0, "configureTime":I
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 97
    .local v3, "fadeoutAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 98
    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 114
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 115
    .local v2, "fadeinAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 116
    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 133
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeButtonLayout:Landroid/view/View;

    const/4 v5, 0x1

    const-string v6, "NotUsed"

    invoke-direct {v1, v4, v0, v5, v6}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;-><init>(Landroid/view/View;IILjava/lang/String;)V

    .line 136
    .local v1, "expand":Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 152
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeDescription:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOffContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "963"

    const-string v6, "9751"

    const-string v7, "0"

    .line 157
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 173
    const v0, 0x7f1202c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeButtonLayout:Landroid/view/View;

    .line 174
    const v0, 0x7f1202cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeDescription:Landroid/view/View;

    .line 175
    const v0, 0x7f1202ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchButton:Landroid/widget/Switch;

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110230

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchTrackOffColor:I

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->initTrackDrawables()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchButton:Landroid/widget/Switch;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$4;-><init>(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    return-void
.end method

.method private initTrackDrawables()V
    .locals 5

    .prologue
    .line 200
    :try_start_0
    const-class v3, Landroid/widget/Switch;

    const-string v4, "mTrackOnDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 201
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    const-class v3, Landroid/widget/Switch;

    const-string v4, "mTrackOffDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 204
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 206
    .local v2, "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 207
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchTrackOffColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 214
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 209
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v3, "LocalMusicModeSwitcher"

    const-string/jumbo v4, "trackOffDrawable is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 211
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "LocalMusicModeSwitcher"

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private updateLocalMusicModeView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mIsLocalMusicMode:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOnContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOffContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchButton:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOnContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mLocalModeOffContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public isLocalMusicMode()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mIsLocalMusicMode:Z

    return v0
.end method

.method public setCallback(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mCallback:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$IMilkLocalMusicMode;

    .line 64
    return-void
.end method

.method public setColor(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "primaryColor"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110041

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 91
    :goto_0
    return-void

    .line 75
    :cond_0
    new-array v0, v6, [[I

    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v5, [I

    const v3, -0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v5

    .line 81
    .local v0, "states":[[I
    new-array v1, v6, [I

    aput p2, v1, v4

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchTrackOffColor:I

    aput v2, v1, v5

    .line 86
    .local v1, "trackColors":[I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
