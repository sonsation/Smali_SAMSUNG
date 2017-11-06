.class public Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "MyMusicModeSwitcher.java"


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private mIsVisibleToUser:Z

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private final mPullDownOptionLayout:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final mSwitchButton:Landroid/widget/Switch;

.field private mSwitchTrackOffColor:I

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 7
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 33
    iput-boolean v5, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mIsVisibleToUser:Z

    .line 91
    new-instance v2, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$2;-><init>(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 125
    new-instance v2, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$3;-><init>(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 136
    new-instance v2, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$4;-><init>(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mFragment:Landroid/app/Fragment;

    .line 45
    invoke-virtual {p1}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mIsVisibleToUser:Z

    .line 46
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120524

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mPullDownOptionLayout:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    .line 49
    const v2, 0x7f1204c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "myMusicModeContainer":Landroid/view/View;
    const v2, 0x7f1202ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110230

    invoke-static {v2, v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchTrackOffColor:I

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->initTrackDrawables()V

    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110041

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->getLastPrimaryColor()I

    move-result v2

    .line 60
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->setSwitchPrimaryColor(I)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    new-instance v2, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$1;-><init>(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mPullDownOptionLayout:Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mIsVisibleToUser:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->setSwitchPrimaryColor(I)V

    return-void
.end method

.method private initTrackDrawables()V
    .locals 5

    .prologue
    .line 164
    :try_start_0
    const-class v3, Landroid/widget/Switch;

    const-string v4, "mTrackOnDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 165
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 166
    iget-object v3, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    const-class v3, Landroid/widget/Switch;

    const-string v4, "mTrackOffDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    iget-object v3, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 170
    .local v2, "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 171
    iget v3, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchTrackOffColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 178
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 173
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v3, "MyMusicModeSwitcher"

    const-string/jumbo v4, "trackOffDrawable is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 175
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "trackOffDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "MyMusicModeSwitcher"

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private setSwitchPrimaryColor(I)V
    .locals 7
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    new-array v0, v6, [[I

    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v5, [I

    const v3, -0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v5

    .line 150
    .local v0, "states":[[I
    new-array v1, v6, [I

    aput p1, v1, v4

    iget v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchTrackOffColor:I

    aput v2, v1, v5

    .line 155
    .local v1, "trackColors":[I
    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroid/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 109
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 110
    .local v0, "primaryColorManager":Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 112
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v3, "my_music_mode"

    const/4 v4, 0x1

    .line 113
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method public onFragmentStopped(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 119
    .local v0, "primaryColorManager":Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v3, "my_music_mode"

    .line 122
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isVisibleToUser"    # Z

    .prologue
    .line 80
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mIsVisibleToUser:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    :cond_0
    if-eqz p2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mIsVisibleToUser:Z

    .line 89
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->mSwitchButton:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
