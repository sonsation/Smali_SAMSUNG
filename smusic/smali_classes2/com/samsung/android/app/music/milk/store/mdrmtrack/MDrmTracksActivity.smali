.class public Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MDrmTracksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$MDrmTracksLauncher;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MDrmTracksActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 25
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 28
    const v1, 0x7f04025f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->setContentView(I)V

    .line 29
    const v1, 0x7f0a02c9

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->setTitle(I)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->initMiniPlayer()V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1200fd

    .line 33
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->newInstance()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 35
    return-void
.end method
