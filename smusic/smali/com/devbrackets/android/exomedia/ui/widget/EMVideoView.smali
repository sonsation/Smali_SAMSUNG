.class public Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;
.super Landroid/widget/RelativeLayout;
.source "EMVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;,
        Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

.field protected muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

.field protected overriddenDuration:I

.field protected overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

.field protected overridePosition:Z

.field protected pollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

.field protected positionOffset:I

.field protected previewImageView:Landroid/widget/ImageView;

.field protected releaseOnDetachFromWindow:Z

.field protected videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected videoUri:Landroid/net/Uri;

.field protected videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 82
    iput v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->positionOffset:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenDuration:I

    .line 85
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overridePosition:Z

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 88
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->releaseOnDetachFromWindow:Z

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 82
    iput v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->positionOffset:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenDuration:I

    .line 85
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overridePosition:Z

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 88
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->releaseOnDetachFromWindow:Z

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 82
    iput v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->positionOffset:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenDuration:I

    .line 85
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overridePosition:Z

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 88
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->releaseOnDetachFromWindow:Z

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 82
    iput v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->positionOffset:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenDuration:I

    .line 85
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overridePosition:Z

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 88
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->releaseOnDetachFromWindow:Z

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getAvailableTracks()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overridePosition:Z

    if-eqz v0, :cond_0

    .line 450
    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->positionOffset:I

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/util/StopWatch;->getTimeInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->positionOffset:I

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getCurrentPosition()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenDuration:I

    if-ltz v0, :cond_0

    .line 424
    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenDuration:I

    .line 427
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getVideoControls()Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getVideoViewApiImplementation(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 702
    iget-object v5, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-virtual {v5, p1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->supportsExoPlayer(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    .line 703
    .local v3, "useLegacy":Z
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_native_video_view:I

    .line 705
    .local v0, "defaultVideoViewApiImplRes":I
    :goto_1
    if-nez p2, :cond_3

    .line 720
    .end local v0    # "defaultVideoViewApiImplRes":I
    :cond_0
    :goto_2
    return v0

    .line 702
    .end local v3    # "useLegacy":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 703
    .restart local v3    # "useLegacy":Z
    :cond_2
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_exo_video_view:I

    goto :goto_1

    .line 710
    .restart local v0    # "defaultVideoViewApiImplRes":I
    :cond_3
    sget-object v5, Lcom/devbrackets/android/exomedia/R$styleable;->EMVideoView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 711
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v2, :cond_0

    .line 716
    if-eqz v3, :cond_4

    sget v1, Lcom/devbrackets/android/exomedia/R$styleable;->EMVideoView_videoViewApiImplLegacy:I

    .line 717
    .local v1, "styleableRes":I
    :goto_3
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 718
    .local v4, "videoViewApiImplRes":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v4

    .line 720
    goto :goto_2

    .line 716
    .end local v1    # "styleableRes":I
    .end local v4    # "videoViewApiImplRes":I
    :cond_4
    sget v1, Lcom/devbrackets/android/exomedia/R$styleable;->EMVideoView_videoViewApiImpl:I

    goto :goto_3
.end method

.method protected inflateVideoView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 674
    sget v1, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_video_view_layout:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 675
    sget v1, Lcom/devbrackets/android/exomedia/R$id;->video_view_api_impl_stub:I

    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 677
    .local v0, "videoViewStub":Landroid/view/ViewStub;
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getVideoViewApiImplementation(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 678
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 679
    return-void
.end method

.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 655
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->inflateVideoView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 657
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_video_preview_image:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    .line 658
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_video_view:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    .line 660
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    .line 661
    new-instance v0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;-><init>(Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .line 663
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-interface {v0, v1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setListenerMux(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V

    .line 664
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 119
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->releaseOnDetachFromWindow:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->release()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onPlaybackEnded()V
    .locals 1

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->stopPlayback()V

    .line 729
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->stop()V

    .line 730
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->pause()V

    .line 364
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setKeepScreenOn(Z)V

    .line 366
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    .line 369
    :cond_0
    return-void
.end method

.method protected readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 628
    if-nez p2, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    sget-object v2, Lcom/devbrackets/android/exomedia/R$styleable;->EMVideoView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 633
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 638
    sget v2, Lcom/devbrackets/android/exomedia/R$styleable;->EMVideoView_useDefaultControls:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 639
    .local v1, "useDefaultControls":Z
    if-eqz v1, :cond_2

    .line 640
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->isDeviceTV(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 643
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 640
    :cond_3
    new-instance v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    .line 151
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->stopPlayback()V

    .line 152
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->stop()V

    .line 154
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->release()V

    .line 155
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "milliSeconds"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->showLoading(Z)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->seekTo(I)V

    .line 334
    return-void
.end method

.method public setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V
    .locals 2
    .param p1, "controls"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eq v1, p1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->removeView(Landroid/view/View;)V

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    .line 216
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    .line 217
    invoke-virtual {p1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setVideoView(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->addView(Landroid/view/View;)V

    .line 222
    :cond_1
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;Landroid/content/Context;)V

    .line 223
    .local v0, "listener":Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v1, :cond_2

    .end local v0    # "listener":Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    return-void

    .line 223
    .restart local v0    # "listener":Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$TouchListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMeasureBasedOnAspectRatioEnabled(Z)V
    .locals 1
    .param p1, "measureBasedOnAspectRatioEnabled"    # Z

    .prologue
    .line 548
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setMeasureBasedOnAspectRatioEnabled(Z)V

    .line 549
    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V

    .line 585
    return-void
.end method

.method public setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V

    .line 576
    return-void
.end method

.method public setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V

    .line 603
    return-void
.end method

.method public setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    .line 567
    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V

    .line 594
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    return-void
.end method

.method public setPositionOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 463
    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->positionOffset:I

    .line 464
    return-void
.end method

.method public setPreviewImage(I)V
    .locals 1
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 174
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 196
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 199
    :cond_0
    return-void
.end method

.method public setReleaseOnDetachFromWindow(Z)V
    .locals 0
    .param p1, "releaseOnDetach"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->releaseOnDetachFromWindow:Z

    .line 142
    return-void
.end method

.method public setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 539
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V

    .line 540
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 290
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2
    .param p1, "rotation"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .prologue
    .line 557
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoRotation(IZ)V

    .line 558
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 259
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoUri:Landroid/net/Uri;

    .line 260
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoUri(Landroid/net/Uri;)V

    .line 262
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->showLoading(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method protected setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method public showControls()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->show()V

    .line 234
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed(J)V

    .line 238
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 351
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->start()V

    .line 352
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setKeepScreenOn(Z)V

    .line 354
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->stopPlayback()V

    .line 376
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setKeepScreenOn(Z)V

    .line 378
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    .line 381
    :cond_0
    return-void
.end method
