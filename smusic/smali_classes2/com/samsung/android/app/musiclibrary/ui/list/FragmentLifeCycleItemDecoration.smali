.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/FragmentLifeCycleItemDecoration;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;
.source "FragmentLifeCycleItemDecoration.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    return-void
.end method

.method public onFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    return-void
.end method

.method public onFragmentDestroyed(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 56
    return-void
.end method

.method public onFragmentPaused(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 41
    return-void
.end method

.method public onFragmentResumed(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 36
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    return-void
.end method

.method public onFragmentStarted(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 31
    return-void
.end method

.method public onFragmentStopped(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 46
    return-void
.end method

.method public onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 51
    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isVisibleToUser"    # Z

    .prologue
    .line 66
    return-void
.end method
