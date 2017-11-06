.class public Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MySubscriptionActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$OnPageChangeListenerAdapter;,
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;,
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$PagePosition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MySubscriptionActivity"


# instance fields
.field private pageNum:I

.field private viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->pageNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->pageNum:I

    return v0
.end method

.method public static launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const-string v2, "launchMySubscriptionActivity"

    const-string v3, " activity is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radio://me?action=launch&target=premium&tab="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private setPage(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v3, "MySubscriptionActivity"

    const-string/jumbo v4, "setPage"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x2

    .line 101
    .local v0, "defaultTab":I
    if-eqz p1, :cond_0

    .line 102
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "tab":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v2

    .line 105
    .local v2, "tabTarget":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    if-eqz v2, :cond_0

    .line 106
    sget-object v3, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$2;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 122
    .end local v1    # "tab":Ljava/lang/String;
    .end local v2    # "tabTarget":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    :cond_0
    :goto_0
    const-string v3, "MySubscriptionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate default tab : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 124
    return-void

    .line 108
    .restart local v1    # "tab":Ljava/lang/String;
    .restart local v2    # "tabTarget":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    :pswitch_0
    const-string v3, "MySubscriptionActivity"

    const-string/jumbo v4, "setPage - PRODUCT_TAB"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x2

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const-string v3, "MySubscriptionActivity"

    const-string/jumbo v4, "setPage - VOUCHER_TAB"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    .line 114
    goto :goto_0

    .line 116
    :pswitch_2
    const-string v3, "MySubscriptionActivity"

    const-string/jumbo v4, "setPage - SUBSCRIPTION_TAB"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v3, 0x7f0401cc

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 60
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 63
    const v3, 0x7f0a0303

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->setTitle(I)V

    .line 65
    const v3, 0x7f120055

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 66
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->pageNum:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 67
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    new-instance v4, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, p0, v5}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;Landroid/app/Activity;Landroid/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 68
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    new-instance v4, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$OnPageChangeListenerAdapter;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$OnPageChangeListenerAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 70
    const v3, 0x7f12017e

    .line 71
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 72
    .local v2, "slidingTabLayout":Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    invoke-virtual {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabMode(I)V

    .line 73
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 76
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_0

    .line 77
    const-string v3, "Subscriptions"

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchSubscriptionResponseExecutor;

    invoke-direct {v5, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchSubscriptionResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v5, v4, v7

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/globalmenu/MoveSubscriptionTabExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/MoveSubscriptionTabExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V

    aput-object v5, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->setPage(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->initMiniPlayer()V

    .line 86
    instance-of v3, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v3, :cond_1

    .line 87
    new-instance v3, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    .line 88
    invoke-interface {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 95
    :cond_1
    return-void
.end method

.method public selectTab(II)V
    .locals 1
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->viewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 245
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 0
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 240
    return-void
.end method
