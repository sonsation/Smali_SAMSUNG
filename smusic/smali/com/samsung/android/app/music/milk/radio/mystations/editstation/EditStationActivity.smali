.class public Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "EditStationActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "EditStationActivity"

.field public static final STATION_ID_KEY:Ljava/lang/String; = "STATION_ID_KEY"

.field public static final STATION_TITLE_KEY:Ljava/lang/String; = "STATION_TITLE_KEY"

.field public static final UPDATE_MY_STATION_LIST:Ljava/lang/String; = "com.samsung.my.tab.update_mystation_list"

.field public static final UPDATE_MY_STATION_LIST_FROM_SERVER:Ljava/lang/String; = "com.samsung.my.tab.update_mystation_list_from_server"


# instance fields
.field private isUpdatingStation:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mStationID:Ljava/lang/String;

.field private mTopDividerMarginTop:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mTopDividerMarginTop:F

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->isUpdatingStation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->isUpdatingStation:Z

    return p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 147
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v2, "EDIT_MY_STATIONS_FRAGMENT_TAG"

    .line 148
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .line 150
    .local v0, "fg":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v6, 0x7f04010d

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mActionBar:Landroid/app/ActionBar;

    .line 63
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mActionBar:Landroid/app/ActionBar;

    const v7, 0x7f0a02d3

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 67
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v5, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10102eb

    invoke-virtual {v6, v7, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    iget v6, v5, Landroid/util/TypedValue;->data:I

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mTopDividerMarginTop:F

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_1

    .line 74
    const-string v6, "intent is empty"

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->finish()V

    .line 142
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 81
    const-string v6, "arguments are empty"

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->finish()V

    goto :goto_0

    .line 86
    :cond_2
    const-string v6, "STATION_ID_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mStationID:Ljava/lang/String;

    .line 87
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->mStationID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    const-string v6, "Station id is empty"

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 89
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->finish()V

    goto :goto_0

    .line 94
    :cond_3
    const/4 v3, 0x0

    .line 95
    .local v3, "isNewFrag":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 96
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string v4, "EDIT_MY_STATIONS_FRAGMENT_TAG"

    .line 97
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 98
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_5

    .line 99
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .end local v1    # "fg":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;-><init>()V

    .line 100
    .restart local v1    # "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    :cond_4
    const/4 v3, 0x1

    :cond_5
    move-object v6, v1

    .line 106
    check-cast v6, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    new-instance v7, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->setInterface(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V

    .line 137
    if-eqz v3, :cond_6

    .line 138
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f120326

    invoke-virtual {v6, v7, v1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 140
    :cond_6
    iput-boolean v8, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->isUpdatingStation:Z

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->initMiniPlayer()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130029

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f1205e3

    if-ne v6, v7, :cond_1

    .line 187
    iget-boolean v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->isUpdatingStation:Z

    if-eqz v6, :cond_0

    .line 188
    const-string v6, "EditStationActivity"

    const-string/jumbo v7, "onOptionsItemSelected: Updating Station....."

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    .line 257
    :goto_0
    return v6

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 192
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string v6, "EDIT_MY_STATIONS_FRAGMENT_TAG"

    .line 193
    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .line 194
    .local v1, "fg":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;
    if-eqz v1, :cond_4

    .line 196
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->isDuplicatedStationName()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->isSeedUpdated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02cc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0386

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 201
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getRenamedStation()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 200
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;

    move-result-object v6

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "Edit_DuplicatedNameDialog"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->setOriginStationName()V

    .line 257
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "fg":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;
    .end local v2    # "fm":Landroid/app/FragmentManager;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 206
    .restart local v1    # "fg":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;
    .restart local v2    # "fm":Landroid/app/FragmentManager;
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->canUpdateStation()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getEditedStation()Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    move-result-object v3

    .line 208
    .local v3, "modifiedStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v5, "updateStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->disableScreen()V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;

    invoke-direct {v7, p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V

    .line 212
    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updatePersonalStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    goto :goto_1

    .line 248
    .end local v3    # "modifiedStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .end local v5    # "updateStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    :cond_3
    const-string v6, "EditStationActivity"

    const-string/jumbo v7, "onOptionsItemSelected : Nothing is changed"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->finish()V

    goto :goto_1

    .line 253
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Error !!! - fragment is not founded"

    invoke-static {v6, v7, v10}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 254
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    const v3, 0x7f1205e3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 167
    .local v0, "done":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 168
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string v3, "EDIT_MY_STATIONS_FRAGMENT_TAG"

    .line 169
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .line 170
    .local v1, "fg":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;
    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->isEmptyStationName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 181
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 175
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 178
    :cond_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 179
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
