.class public Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "RadioHistoryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioHistoryActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 20
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 23
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 26
    const v5, 0x7f04025f

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->setContentView(I)V

    .line 27
    const v5, 0x7f0a0317

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->setTitle(I)V

    .line 28
    const v5, 0x7f1200e7

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, "divider":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 30
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->initMiniPlayer()V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 35
    .local v4, "fragmentManager":Landroid/app/FragmentManager;
    const-string v5, "RadioHistoryFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 36
    .local v3, "fragment":Landroid/app/Fragment;
    if-nez v3, :cond_1

    .line 37
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1200fd

    .line 38
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->newInstance()Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    move-result-object v7

    const-string v8, "RadioHistoryFragment"

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    .line 43
    .local v2, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v2, :cond_2

    .line 44
    const-string v5, "MyStations"

    new-array v6, v9, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v8, v6, v7

    .line 44
    invoke-interface {v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 47
    :cond_2
    return-void
.end method
