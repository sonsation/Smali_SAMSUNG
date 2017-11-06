.class public final Lcom/samsung/android/app/music/common/menu/ListMenuGroup;
.super Ljava/lang/Object;
.source "ListMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;,
        Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;,
        Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;,
        Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;,
        Lcom/samsung/android/app/music/common/menu/ListMenuGroup$DeleteableMenu;,
        Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCheckedItemCount:I

.field private mCheckedItemIds:[J

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mHasDrmIds:Z

.field private mIsAllPrivateIds:Z

.field private mIsContextMenu:Z

.field private final mMenuResId:I

.field private final mMusicMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivateModeMenu:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;

.field private mValidItemCount:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menuResId"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    .line 111
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mActivity:Landroid/app/Activity;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mContext:Landroid/content/Context;

    .line 113
    iput p2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMenuResId:I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$DeleteableMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$DeleteableMenu;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/ShareMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/common/menu/ShareMenu;-><init>(Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$KnoxMenu;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;-><init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mPrivateModeMenu:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mPrivateModeMenu:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/LaunchMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;-><init>(Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_BELLING:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/regional/kor/LgtMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/regional/kor/LgtMenu;-><init>(Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mIsContextMenu:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->finishActionModeIfNeed()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mCheckedItemIds:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mIsAllPrivateIds:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mHasDrmIds:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mValidItemCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mCheckedItemCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;J)V

    return-void
.end method

.method private finishActionModeIfNeed()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    .line 182
    :cond_0
    return-void
.end method

.method private hasKnoxAndSecureRelatedMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 998
    const v0, 0x7f1205a2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205a3

    .line 999
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205a5

    .line 1000
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205a6

    .line 1001
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205a7

    .line 1002
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f1205a4

    .line 1003
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendSamsungAnalyticsLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    move-object v0, v1

    .line 1009
    .local v0, "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :goto_0
    if-eqz v0, :cond_0

    .line 1010
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 1011
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_0
    return-void

    .line 1007
    .end local v0    # "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendSamsungAnalyticsLog(Ljava/lang/String;J)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventValue"    # J

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    move-object v0, v1

    .line 1018
    .local v0, "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :goto_0
    if-eqz v0, :cond_0

    .line 1019
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 1020
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1022
    :cond_0
    return-void

    .line 1016
    .end local v0    # "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 133
    instance-of v0, p1, Landroid/view/ContextMenu;

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mIsContextMenu:Z

    .line 134
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMenuResId:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "handled":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 170
    .local v1, "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 171
    if-eqz v0, :cond_0

    .line 175
    .end local v1    # "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :cond_1
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 141
    .local v0, "checkableList":Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mCheckedItemIds:[J

    .line 142
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mCheckedItemCount:I

    .line 143
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getValidItemCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mValidItemCount:I

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "checkedItemAudioIds":[J
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnableMoveToKnox(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->hasKnoxAndSecureRelatedMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-interface {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v1

    .line 149
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->isExistDrm(Landroid/content/Context;[J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mHasDrmIds:Z

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mPrivateModeMenu:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->access$000(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mPrivateModeMenu:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;

    .line 153
    invoke-static {v3, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->access$100(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    if-nez v1, :cond_1

    .line 155
    invoke-interface {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v1

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mPrivateModeMenu:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;->access$200(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PrivateModeMenu;[J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mIsAllPrivateIds:Z

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->mMusicMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 161
    .local v2, "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 163
    .end local v2    # "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :cond_3
    return-void
.end method
