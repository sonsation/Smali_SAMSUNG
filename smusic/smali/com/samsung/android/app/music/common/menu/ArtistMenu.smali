.class public Lcom/samsung/android/app/music/common/menu/ArtistMenu;
.super Ljava/lang/Object;
.source "ArtistMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field private mGroupByMenu:Landroid/view/MenuItem;

.field mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private final mMenuResId:I

.field private mSubType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;II)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p2, "menuResId"    # I
    .param p3, "subType"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 31
    iput p2, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mMenuResId:I

    .line 32
    iput p3, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mSubType:I

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 34
    return-void
.end method

.method private updateMenuText()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getValidItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mGroupByMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mGroupByMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mSubType:I

    if-ne v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mGroupByMenu:Landroid/view/MenuItem;

    const v1, 0x7f0a00f7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mGroupByMenu:Landroid/view/MenuItem;

    const v1, 0x7f0a00f8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mMenuResId:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 39
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 50
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f1205ca

    if-ne v2, v3, :cond_0

    .line 52
    iget v2, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mSubType:I

    if-ne v2, v5, :cond_1

    .line 53
    iput v6, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mSubType:I

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->updateMenuText()V

    .line 58
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "music_player_pref"

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, "sharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "group_by_artist"

    iget v3, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mSubType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->restartListLoader()V

    .line 64
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    iget v2, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mSubType:I

    if-ne v2, v6, :cond_2

    const-string v2, "1592"

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_0
    return v5

    .line 55
    :cond_1
    iput v5, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mSubType:I

    goto :goto_0

    .line 64
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "1593"

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 43
    const v0, 0x7f1205ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mGroupByMenu:Landroid/view/MenuItem;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->updateMenuText()V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;->mListMenuGroup:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 46
    return-void
.end method
