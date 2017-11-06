.class public final Lcom/samsung/android/app/music/common/view/NavigationBarController;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "NavigationBarController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Ui"

.field private static final TAG:Ljava/lang/String; = "Ui"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

.field private mSoftKeyBgView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/NavigationBarController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/view/NavigationBarController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/NavigationBarController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/view/NavigationBarController;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/view/NavigationBarController;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->setVisibilityByRotation(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private isSortKeyDisableCondition(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVisibilityByRotation(Landroid/app/Activity;Landroid/view/View;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const-string v2, "android.view.WindowManager$LayoutParams"

    const-string/jumbo v3, "semSetNavigationBarIconColor"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    .line 126
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    .local v1, "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110042

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 129
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 132
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 132
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v0    # "color":I
    .end local v1    # "setNavigationBarIconColorMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 135
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public initView()V
    .locals 3

    .prologue
    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "decorView":Landroid/view/View;
    const v1, 0x7f12057b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->isSortKeyDisableCondition(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    .line 96
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->isSortKeyDisableCondition(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->isSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->isPinEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/view/NavigationBarController;->setVisibilityByRotation(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDestroyCalled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mActivity:Landroid/app/Activity;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mSoftKeyBgView:Landroid/view/View;

    .line 78
    return-void
.end method

.method public onStartCalled()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    new-instance v1, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/view/NavigationBarController$1;-><init>(Lcom/samsung/android/app/music/common/view/NavigationBarController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;)V

    goto :goto_0
.end method

.method public onStopCalled()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/NavigationBarController;->mNavigationSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;)V

    .line 72
    :cond_0
    return-void
.end method
