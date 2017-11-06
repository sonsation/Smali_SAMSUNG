.class Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchHelperFragmentManagerImpl"
.end annotation


# static fields
.field private static final KEY_CURRENT_FRAGMENT_TAG:Ljava/lang/String; = "key_current_fragment_tag"


# instance fields
.field private mCurrentFragmentTag:Ljava/lang/String;

.field private final mFragmentContainer:Landroid/view/View;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mSearchContentsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 486
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentManager:Landroid/app/FragmentManager;

    .line 487
    const v0, 0x7f1204b3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentContainer:Landroid/view/View;

    .line 488
    const v0, 0x7f1204b4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mSearchContentsView:Landroid/view/View;

    .line 489
    return-void
.end method


# virtual methods
.method public clearHelperFragment()V
    .locals 3

    .prologue
    .line 530
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->setHelperFragmentVisible(Z)V

    .line 531
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mCurrentFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 532
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 535
    :cond_0
    return-void
.end method

.method public getHelperFragment(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 494
    if-eqz p2, :cond_0

    .line 495
    const-string v0, "key_current_fragment_tag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mCurrentFragmentTag:Ljava/lang/String;

    .line 497
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 501
    const-string v0, "key_current_fragment_tag"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mCurrentFragmentTag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public setHelperFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 516
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 517
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1204b3

    .line 518
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 520
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mCurrentFragmentTag:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setHelperFragmentVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 525
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mFragmentContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$SearchHelperFragmentManagerImpl;->mSearchContentsView:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 527
    return-void

    :cond_0
    move v0, v2

    .line 525
    goto :goto_0

    :cond_1
    move v2, v1

    .line 526
    goto :goto_1
.end method
