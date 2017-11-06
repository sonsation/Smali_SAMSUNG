.class public abstract Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.super Ljava/lang/Object;
.source "FragmentLifeCycleCallbacksAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    return-void
.end method

.method public onFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    return-void
.end method

.method public onFragmentDestroyed(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 49
    return-void
.end method

.method public onFragmentPaused(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 37
    return-void
.end method

.method public onFragmentResumed(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 33
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    return-void
.end method

.method public onFragmentStarted(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 29
    return-void
.end method

.method public onFragmentStopped(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 41
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
    .line 45
    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isVisibleToUser"    # Z

    .prologue
    .line 57
    return-void
.end method
