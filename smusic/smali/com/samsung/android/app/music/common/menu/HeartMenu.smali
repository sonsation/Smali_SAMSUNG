.class public Lcom/samsung/android/app/music/common/menu/HeartMenu;
.super Ljava/lang/Object;
.source "HeartMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# static fields
.field private static final DEFAULT_COLOR:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private mHeart:Landroid/view/MenuItem;

.field mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final mMenuResId:I

.field private mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

.field private mSubType:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menuResId"    # I

    .prologue
    .line 46
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/menu/HeartMenu;-><init>(Landroid/app/Fragment;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;II)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menuResId"    # I
    .param p3, "subType"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/samsung/android/app/music/common/menu/HeartMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/menu/HeartMenu$1;-><init>(Lcom/samsung/android/app/music/common/menu/HeartMenu;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    .line 51
    iput p3, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mSubType:I

    .line 52
    iput p2, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mMenuResId:I

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/menu/HeartMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/HeartMenu;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->isHeartOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/menu/HeartMenu;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/HeartMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->updateToggleHeartIcon(Z)V

    return-void
.end method

.method private insertLog(Z)V
    .locals 5
    .param p1, "isOn"    # Z

    .prologue
    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v0

    .line 127
    .local v0, "listType":I
    sparse-switch v0, :sswitch_data_0

    .line 156
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 157
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0019"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 129
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "Playlists"

    .line 130
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "Artists"

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "Albums"

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "Genres"

    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "Folders"

    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :sswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "Composers"

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_0
    const-string v1, "0"

    goto :goto_1

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x10027 -> :sswitch_1
        0x100002 -> :sswitch_2
        0x100003 -> :sswitch_1
        0x100004 -> :sswitch_0
        0x100006 -> :sswitch_3
        0x100007 -> :sswitch_4
        0x100008 -> :sswitch_5
        0x110027 -> :sswitch_1
    .end sparse-switch
.end method

.method private isHeartOn()Z
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    .line 111
    .local v0, "listInfoGetter":Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v1

    .line 112
    .local v1, "listType":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 113
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedLibraryListType(I)I

    move-result v3

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getKeyword()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mSubType:I

    .line 112
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->isFavorite(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method private updateMenuVisible()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 95
    .local v0, "checkableList":Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mHeart:Landroid/view/MenuItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getValidItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateToggleHeartIcon(Z)V
    .locals 3
    .param p1, "isHeartOn"    # Z

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mHeart:Landroid/view/MenuItem;

    const v1, 0x7f0201cb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mHeart:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->getLastPrimaryColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mHeart:Landroid/view/MenuItem;

    const v1, 0x7f0201ca

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mHeart:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mMenuResId:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 78
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f1205b6

    if-ne v4, v5, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->isHeartOn()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 81
    .local v2, "toggleHeart":Z
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    .line 82
    .local v0, "listInfoGetter":Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v1

    .line 83
    .local v1, "listType":I
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 84
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedLibraryListType(I)I

    move-result v5

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getKeyword()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mSubType:I

    .line 83
    invoke-static {v4, v5, v6, v2, v7}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->setFavorite(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 86
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->updateToggleHeartIcon(Z)V

    .line 87
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->insertLog(Z)V

    .line 90
    .end local v0    # "listInfoGetter":Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;
    .end local v1    # "listType":I
    .end local v2    # "toggleHeart":Z
    :cond_0
    return v3

    .line 80
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 63
    const v0, 0x7f1205b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mHeart:Landroid/view/MenuItem;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mHeart:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->updateMenuVisible()V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->isHeartOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->updateToggleHeartIcon(Z)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu;->mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method
