.class public Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "BaseBlurActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;


# instance fields
.field private mBlurBackgroundController:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

.field private mFixedBlurBackgroundThumbnailId:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

.field private final mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

.field private mUpdateBlurBackgroundImmediate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mFixedBlurBackgroundThumbnailId:J

    .line 40
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    return-void
.end method


# virtual methods
.method public addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 108
    return-void
.end method

.method public getLastPrimaryColor()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->getLastPrimaryColor()I

    move-result v0

    return v0
.end method

.method public getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 2
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mUpdateBlurBackgroundImmediate:Z

    .line 52
    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 55
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mFixedBlurBackgroundThumbnailId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->setStaticThumbnailId(J)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 70
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 141
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "queueType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 148
    .local v0, "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mBlurBackgroundController:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 149
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 151
    .end local v0    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .end local v1    # "queueType":I
    :cond_0
    return-void

    .line 146
    .restart local v1    # "queueType":I
    :cond_1
    move-object v0, p0

    .restart local v0    # "observable":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    goto :goto_0
.end method

.method public removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 113
    return-void
.end method

.method public setContentView(I)V
    .locals 13
    .param p1, "layoutResID"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v7, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->setContentView(I)V

    .line 76
    new-instance v1, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    const v0, 0x7f120100

    .line 77
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, p0, v0, p0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mBlurBackgroundController:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mBlurBackgroundController:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mUpdateBlurBackgroundImmediate:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "album_id"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 82
    .local v8, "albumId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "list_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 83
    .local v12, "listType":I
    cmp-long v0, v8, v4

    if-eqz v0, :cond_0

    if-eq v12, v2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mBlurBackgroundController:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    invoke-virtual {v0, v12, v8, v9}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->setBlurBackground(IJ)V

    .line 86
    :cond_0
    iput-boolean v7, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mUpdateBlurBackgroundImmediate:Z

    .line 88
    .end local v8    # "albumId":J
    .end local v12    # "listType":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->setNavigationBackground()V

    .line 90
    const v0, 0x7f1200e7

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 91
    .local v11, "divider":Landroid/view/View;
    if-eqz v11, :cond_2

    .line 92
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_2
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_EDGE_LIGHTING_EFFECT:Z

    if-eqz v0, :cond_3

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;

    const v3, 0x7f120101

    const v4, 0x7f11003d

    const v5, 0x7f11003e

    const v6, 0x7f0d04b2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;IIIIZ)V

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    move-result-object v10

    .line 101
    .local v10, "backgroundFadeController":Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mSimpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->addCallbacks(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 103
    .end local v10    # "backgroundFadeController":Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
    :cond_3
    return-void
.end method

.method public setStaticThumbnailId(J)V
    .locals 1
    .param p1, "thumbnailId"    # J

    .prologue
    .line 122
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->setStaticThumbnailId(Landroid/net/Uri;J)V

    .line 123
    return-void
.end method

.method public setStaticThumbnailId(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "baseThumbnailUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mBlurBackgroundController:Lcom/samsung/android/app/music/common/util/BlurBackgroundController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController;->setFixedBlurBackground(Landroid/net/Uri;J)V

    .line 128
    iput-wide p2, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mFixedBlurBackgroundThumbnailId:J

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->setStaticThumbnailId(Landroid/net/Uri;J)V

    .line 130
    return-void
.end method
