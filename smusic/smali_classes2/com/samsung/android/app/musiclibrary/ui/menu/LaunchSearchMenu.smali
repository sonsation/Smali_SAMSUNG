.class public Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;
.super Ljava/lang/Object;
.source "LaunchSearchMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private mEventId:Ljava/lang/String;

.field private final mMenuResId:I

.field private mScreenId:Ljava/lang/String;

.field private final mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 26
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/app/Fragment;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menuResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mMenuResId:I

    .line 31
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_0

    .line 33
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .line 39
    .end local v0    # "a":Landroid/app/Activity;
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mScreenId:Ljava/lang/String;

    .line 40
    const-string v1, "0001"

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mEventId:Ljava/lang/String;

    .line 41
    return-void

    .line 34
    .restart local v0    # "a":Landroid/app/Activity;
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .end local v0    # "a":Landroid/app/Activity;
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    goto :goto_0

    .line 37
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 45
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mMenuResId:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    .line 62
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mScreenId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_0

    .line 51
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->menu_launch_search:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 52
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mSearchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->isLaunchSearchEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 56
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mEventId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setScreenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;->mScreenId:Ljava/lang/String;

    .line 70
    return-void
.end method
