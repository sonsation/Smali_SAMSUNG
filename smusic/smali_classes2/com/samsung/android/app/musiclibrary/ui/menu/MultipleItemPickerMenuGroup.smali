.class public Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;
.super Ljava/lang/Object;
.source "MultipleItemPickerMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# static fields
.field private static final ARGS_USE_BLUR_UI:Ljava/lang/String; = "use_blur_ui"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFragment:Landroid/app/Fragment;

.field private final mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final mMenuResId:I

.field private final mUseBlurUi:Z


# direct methods
.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menuResId"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    .line 38
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mActivity:Landroid/app/Activity;

    .line 39
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mMenuResId:I

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mUseBlurUi:Z

    .line 42
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/app/Fragment;)V

    .line 43
    .local v0, "launchSearchMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 44
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->setScreenId(Ljava/lang/String;)V

    .line 46
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mUseBlurUi:Z

    if-eqz v1, :cond_1

    const-string v1, "2602"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->setEventId(Ljava/lang/String;)V

    .line 49
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 50
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "6071"

    goto :goto_1
.end method

.method private sendSamsungAnalyticsLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    move-object v0, v1

    .line 115
    .local v0, "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 117
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void

    .line 113
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

    .line 101
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

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

    .line 108
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisiblePickerSearch(Landroid/view/Menu;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 85
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 86
    .local v1, "item":Landroid/view/MenuItem;
    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mUseBlurUi:Z

    if-eqz v4, :cond_1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->white_opacity_100:I

    .line 94
    .local v0, "color":I
    :goto_1
    sget v4, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_ic_ab_search:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 95
    .local v3, "searchDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 96
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    .line 92
    .end local v0    # "color":I
    .end local v3    # "searchDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->action_bar_search_icon_winset:I

    goto :goto_1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mMenuResId:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 81
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    if-ne v1, v3, :cond_2

    .line 71
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mUseBlurUi:Z

    if-eqz v1, :cond_1

    const-string v1, "2603"

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "data":Landroid/content/Intent;
    const-string v3, "extra_checked_item_ids"

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 75
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v1

    .line 74
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x1

    .line 77
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 76
    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    move v1, v2

    .line 79
    goto :goto_0

    .line 71
    .end local v0    # "data":Landroid/content/Intent;
    :cond_1
    const-string v1, "6072"

    goto :goto_1

    .line 81
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->mLaunchSearchMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 60
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->updateMenuVisiblePickerSearch(Landroid/view/Menu;I)V

    .line 61
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_multiple_item_picker_done:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/MultipleItemPickerMenuGroup;->updateMenuVisiblePickerDone(Landroid/view/Menu;I)V

    .line 62
    return-void
.end method
