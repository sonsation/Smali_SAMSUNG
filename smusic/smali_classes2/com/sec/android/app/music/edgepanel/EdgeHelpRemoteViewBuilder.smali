.class Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
.super Ljava/lang/Object;
.source "EdgeHelpRemoteViewBuilder.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mIsRadio:Z

.field protected mRemoteView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0, p2}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->createRemoteview(I)V

    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->setRequestPermissionPendingIntent()V

    .line 39
    return-void
.end method

.method private createRemoteview(I)V
    .locals 2
    .param p1, "layoutId"    # I

    .prologue
    .line 42
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    .line 43
    return-void
.end method

.method private setRequestPermissionPendingIntent()V
    .locals 5

    .prologue
    const v4, 0x7f1201a8

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_PERMISSION_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 111
    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAlbum(IJLjava/lang/String;)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .locals 6
    .param p1, "cpAttrs"    # I
    .param p2, "albumId"    # J
    .param p4, "album"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f1201a0

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1201a2

    invoke-virtual {v1, v2, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_DETAIL_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "albumIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "launchListCpAttrs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v2, "launchListType"

    .line 120
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x55

    .line 119
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v2, "launchListID"

    .line 122
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/provider/MilkContents$Albums;->getSourceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "launchListName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 128
    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 131
    return-object p0

    .line 120
    :cond_0
    const v1, 0x100002

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setArtist(IJLjava/lang/String;)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .locals 6
    .param p1, "cpAttrs"    # I
    .param p2, "artistId"    # J
    .param p4, "artist"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f12019d

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f12019f

    invoke-virtual {v1, v2, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_DETAIL_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "artistIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "launchListCpAttrs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v2, "launchListType"

    .line 140
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x54

    .line 139
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v1, "launchListName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "launchListID"

    .line 143
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/provider/MilkContents$Artists;->getSourceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 148
    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 151
    return-object p0

    .line 140
    :cond_0
    const v1, 0x100003

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setPlayerQueueType(I)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 103
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mIsRadio:Z

    .line 104
    return-object p0

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStation(Ljava/lang/String;)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .locals 5
    .param p1, "stationName"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f1201a3

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1201a4

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "launchMusicPlayerWithRadio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 160
    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 162
    return-object p0
.end method

.method public setText(Ljava/lang/String;II)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "viewId"    # I
    .param p3, "resFontSize"    # I

    .prologue
    .line 64
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v1, p3, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F

    move-result v0

    .line 67
    .local v0, "fontSize":F
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 70
    .end local v0    # "fontSize":F
    :cond_0
    return-object p0
.end method

.method public setViewVisibility(II)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    return-object p0
.end method

.method public updateHelpViewContainer(J)Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .locals 11
    .param p1, "audioId"    # J

    .prologue
    const v10, 0x7f1201a0

    const v9, 0x7f12019d

    const v8, 0x7f12019c

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 74
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f12019e

    const-string v2, "%s : "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f0a007c

    .line 76
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1201a1

    const-string v2, "%s : "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0071

    .line 78
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1201a3

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    :goto_0
    return-object p0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mIsRadio:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1201a3

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1201a3

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method
