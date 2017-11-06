.class public Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.source "CoverRemoteViewBuilder.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I

    .prologue
    .line 22
    const/16 v0, 0x68

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    .line 23
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;

    const v1, 0x7f040035

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 10
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 29
    .local v8, "resource":Landroid/content/res/Resources;
    const v0, 0x106000c

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 30
    .local v5, "textColor":I
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1200b8

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    .line 31
    invoke-static {v0, v1, v2, v5, v3}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1200b8

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f120129

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    .line 39
    invoke-static {v0, v1, v2, v5, v3}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f120129

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V

    .line 46
    const v0, 0x7f0d00e1

    const v1, 0x3faccccd    # 1.35f

    .line 47
    invoke-static {v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IF)F

    move-result v9

    .line 48
    .local v9, "titleFontSize":F
    const v0, 0x7f0d00ce

    const v1, 0x3faccccd    # 1.35f

    .line 49
    invoke-static {v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IF)F

    move-result v7

    .line 50
    .local v7, "artistFontSize":F
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1200b8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f120129

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 4
    .param p1, "isPlaying"    # Z

    .prologue
    const v2, 0x7f120042

    const v3, 0x7f120041

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f020087

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f0

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-object p0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f020088

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f2

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method
