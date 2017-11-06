.class public Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "PurchasedTracksActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaylistActivity"


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
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 23
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 26
    const v1, 0x7f04025f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->setContentView(I)V

    .line 27
    const v1, 0x7f0a032c

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->setTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->initMiniPlayer()V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1200fd

    .line 31
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->newInstance()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 33
    return-void
.end method
