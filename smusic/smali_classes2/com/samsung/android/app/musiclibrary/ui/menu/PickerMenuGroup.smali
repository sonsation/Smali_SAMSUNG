.class public Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;
.super Ljava/lang/Object;
.source "PickerMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFragment:Landroid/app/Fragment;

.field private final mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final mMenuResId:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menuResId"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    .line 36
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mActivity:Landroid/app/Activity;

    .line 37
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mMenuResId:I

    .line 39
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/app/Fragment;)V

    .line 40
    .local v0, "launchSearchMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 41
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->setScreenId(Ljava/lang/String;)V

    .line 43
    const-string v1, "6001"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->setEventId(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 45
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendSamsungAnalyticsLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    move-object v0, v1

    .line 122
    .local v0, "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :goto_0
    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 124
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void

    .line 120
    .end local v0    # "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMenuVisiblePickerDone(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 109
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 115
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisiblePickerSearch(Landroid/view/Menu;I)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 93
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    .local v1, "res":Landroid/content/res/Resources;
    sget v3, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_ic_ab_search:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 100
    .local v2, "searchDrawable":Landroid/graphics/drawable/Drawable;
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->action_bar_search_icon_winset:I

    .line 101
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 49
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mMenuResId:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 62
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 87
    :goto_0
    return v2

    .line 66
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 67
    .local v1, "id":I
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    if-ne v1, v2, :cond_1

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "data":Landroid/content/Intent;
    const-string v4, "extra_checked_item_ids"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 70
    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v2

    .line 69
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mActivity:Landroid/app/Activity;

    .line 72
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 71
    invoke-virtual {v2, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    move v2, v3

    .line 74
    goto :goto_0

    .line 75
    .end local v0    # "data":Landroid/content/Intent;
    :cond_1
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->menu_single_item_picker_done:I

    if-ne v1, v2, :cond_3

    .line 76
    const-string v2, "6002"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    if-eqz v2, :cond_2

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .restart local v0    # "data":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->getRecommendationResult()Landroid/content/Intent;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mActivity:Landroid/app/Activity;

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 81
    invoke-virtual {v2, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 83
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .end local v0    # "data":Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 85
    goto :goto_0

    .line 87
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 55
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->updateMenuVisiblePickerSearch(Landroid/view/Menu;I)V

    .line 56
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_single_item_picker_done:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->updateMenuVisiblePickerDone(Landroid/view/Menu;I)V

    .line 57
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;->updateMenuVisiblePickerDone(Landroid/view/Menu;I)V

    .line 58
    return-void
.end method
