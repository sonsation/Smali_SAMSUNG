.class public Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;
.super Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;
.source "AlbumDetailsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;


# static fields
.field private static final KEY_TRANSITION_ENABLED:Ljava/lang/String; = "key_transition_enabled"


# instance fields
.field private mActivityTransitionEnabled:Z

.field private mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

.field private mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "albumId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "activityOptions"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;ZLandroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;JLjava/lang/String;ZLandroid/os/Bundle;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "albumId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "searchEnabled"    # Z
    .param p5, "activityOptions"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "key_album_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    const-string v1, "key_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "key_search_enabled"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v2, "key_transition_enabled"

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finishAfterTransition()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->isActivityTranslucent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->finishActivityAfterConvertToTranslucent()V

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    const v3, 0x7f12013f

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->removeTransitionView(Landroid/view/Window;[Landroid/view/View;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->finish()V

    goto :goto_0

    .line 87
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->finishAfterTransition()V

    goto :goto_0
.end method

.method protected getAlbumDetailsFragment()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mActivityTransitionEnabled:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->newInstance(JLjava/lang/String;Z)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object v0

    return-object v0
.end method

.method public getLocalTracksCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v0

    return v0
.end method

.method protected getThumbnailBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 41
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->ACTIVITY_ALBUM_TRACK_TRANSITION_ENABLED:Z

    if-eqz v0, :cond_2

    .line 42
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    if-eqz p1, :cond_1

    .line 44
    const-string v0, "key_transition_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mActivityTransitionEnabled:Z

    .line 53
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mActivityTransitionEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->setAlbumDetailTransition(Landroid/view/Window;)V

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mTranslucentController:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->convertToTranslucent()V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    .line 64
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_transition_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mActivityTransitionEnabled:Z

    goto :goto_0

    .line 50
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mActivityTransitionEnabled:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 36
    const-string v0, "key_transition_enabled"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mActivityTransitionEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 103
    return-void
.end method

.method public updateLocalTrackCount()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    .line 98
    return-void
.end method
