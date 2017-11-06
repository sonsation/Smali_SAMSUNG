.class Lcom/samsung/android/app/music/common/menu/ShareMenu;
.super Ljava/lang/Object;
.source "ShareMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private mCheckedItemCount:I

.field private final mContext:Landroid/content/Context;

.field private final mListType:I

.field private final mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 36
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    .line 37
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 38
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-eqz v0, :cond_1

    .line 39
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    .end local p1    # "fragment":Landroid/app/Fragment;
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mListType:I

    .line 43
    :goto_1
    return-void

    .line 37
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mListType:I

    goto :goto_1
.end method

.method private isRemoteTrack()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mListType:I

    const v1, 0x100012

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBottomBarMenuEnableShare(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 103
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ShareMenu;->isRemoteTrack()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 115
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mCheckedItemCount:I

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleShare(Landroid/view/Menu;I)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 76
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_1

    .line 81
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v3, :cond_4

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/ShareMenu;->isRemoteTrack()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 89
    :cond_2
    iget v3, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mCheckedItemCount:I

    if-lez v3, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 92
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 93
    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mContext:Landroid/content/Context;

    new-array v4, v1, [J

    .line 94
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v6

    aput-wide v6, v4, v2

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->isExistDrm(Landroid/content/Context;[J)Z

    move-result v3

    if-nez v3, :cond_5

    .line 93
    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    move v1, v2

    .line 94
    goto :goto_2

    .line 96
    :cond_6
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    const/4 v0, 0x1

    .line 62
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 66
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->share()V

    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x7f12001c -> :sswitch_0
        0x7f12059e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/menu/ShareMenu;->mCheckedItemCount:I

    .line 55
    :cond_0
    const v0, 0x7f12001c

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ShareMenu;->updateMenuVisibleShare(Landroid/view/Menu;I)V

    .line 56
    const v0, 0x7f12059e

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ShareMenu;->updateBottomBarMenuEnableShare(Landroid/view/Menu;I)V

    .line 57
    return-void
.end method
