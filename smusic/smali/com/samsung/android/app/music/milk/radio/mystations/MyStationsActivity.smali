.class public Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MyStationsActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MyStationsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarMenuCreated()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public onBottomBarMenuDestroyed()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f0400fc

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;->initMiniPlayer()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1202cc

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;-><init>()V

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "904"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
