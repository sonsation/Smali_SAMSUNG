.class public Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "CreateStationActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CreateStationActivity"


# instance fields
.field private isCreatingStation:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mTopDividerMarginTop:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->mTopDividerMarginTop:F

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->isCreatingStation:Z

    return p1
.end method

.method private createPersonalStation(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "fg"    # Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;
    .param p2, "done"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->getMyStationSeedList()Ljava/util/ArrayList;

    move-result-object v8

    .line 201
    .local v8, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->getMyStationName()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "stationName":Ljava/lang/String;
    const-string v0, "CreateStationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPersonalStation : Station Name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SeedList Size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getArtistList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 207
    .local v3, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->isCreatingStation:Z

    .line 209
    invoke-interface {p2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 210
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->disableScreen()V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;Landroid/view/MenuItem;Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;)V

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move v5, v4

    move v6, v4

    .line 212
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->invalidateOptionsMenu()V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "CreateStationActivity"

    const-string v1, "createPersonalStation : create Station is fail because Artist is empty !!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getArtistList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/Seed;

    .line 190
    .local v2, "seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "01"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    .end local v2    # "seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v6, 0x7f04010d

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->mActionBar:Landroid/app/ActionBar;

    .line 55
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->mActionBar:Landroid/app/ActionBar;

    const v7, 0x7f0a028e

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 60
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v6, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    sget v7, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    or-int/2addr v6, v7

    invoke-static {v3, v6}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 66
    .local v5, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10102eb

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    iget v6, v5, Landroid/util/TypedValue;->data:I

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->mTopDividerMarginTop:F

    .line 71
    :cond_0
    const/4 v2, 0x0

    .line 72
    .local v2, "isNewFrag":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 73
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v4, "CREATE_STATION_FRAGMENT_TAG"

    .line 74
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 75
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;-><init>()V

    .line 77
    .restart local v0    # "fg":Landroid/app/Fragment;
    const/4 v2, 0x1

    :cond_1
    move-object v6, v0

    .line 79
    check-cast v6, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;

    new-instance v7, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->setInterface(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V

    .line 109
    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f120326

    invoke-virtual {v6, v7, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 112
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->isCreatingStation:Z

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->initMiniPlayer()V

    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v6

    const-string v7, "908"

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130027

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f1205dc

    if-ne v4, v5, :cond_1

    .line 149
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "908"

    const-string v6, "9171"

    .line 150
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->isCreatingStation:Z

    if-eqz v4, :cond_0

    .line 153
    const-string v4, "CreateStationActivity"

    const-string/jumbo v5, "onOptionsItemSelected : Creating Station....."

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 183
    :goto_0
    return v4

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 158
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string v4, "CREATE_STATION_FRAGMENT_TAG"

    .line 159
    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;

    .line 160
    .local v1, "fg":Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;
    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->isDuplicatedStationName()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0386

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->getRenamedStation()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 165
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;

    move-result-object v4

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "Edit_DuplicatedNameDialog"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/milk/dialog/DuplicatedNameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->setOriginStationName()V

    .line 183
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "fg":Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;
    .end local v2    # "fm":Landroid/app/FragmentManager;
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 171
    .restart local v1    # "fg":Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;
    .restart local v2    # "fm":Landroid/app/FragmentManager;
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->canUpdateStation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->createPersonalStation(Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;Landroid/view/MenuItem;)V

    goto :goto_1

    .line 174
    :cond_3
    const-string v4, "CreateStationActivity"

    const-string/jumbo v5, "onOptionsItemSelected : Nothing is changed"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->finish()V

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Error !!! - fragment is not founded"

    invoke-static {v4, v5, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 180
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    const v3, 0x7f1205dc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    .local v0, "done":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 123
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string v3, "CREATE_STATION_FRAGMENT_TAG"

    .line 124
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;

    .line 125
    .local v1, "fg":Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;
    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->canUpdateStation()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->isEmptyStationName()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 136
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 130
    :cond_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
