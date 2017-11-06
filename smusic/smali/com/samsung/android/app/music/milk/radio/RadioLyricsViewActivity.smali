.class public Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "RadioLyricsViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v2, 0x7f040111

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewActivity;->setNavigationBackground()V

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 26
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-object v2, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 27
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;-><init>()V

    .line 29
    .restart local v0    # "fg":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f120113

    sget-object v4, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 31
    :cond_0
    return-void
.end method
