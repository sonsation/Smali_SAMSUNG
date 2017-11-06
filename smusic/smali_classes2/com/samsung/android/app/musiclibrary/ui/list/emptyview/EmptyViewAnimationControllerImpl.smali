.class public Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "EmptyViewAnimationControllerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;


# static fields
.field private static final SAVED_STATE_ANIMATED:Ljava/lang/String; = "animated"


# instance fields
.field private mAnimated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmptyViewAnimationEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->mAnimated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    if-eqz p2, :cond_0

    const-string v0, "animated"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->mAnimated:Z

    .line 19
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    const-string v0, "animated"

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->mAnimated:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public onEmptyViewAnimated()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->mAnimated:Z

    .line 29
    return-void
.end method
