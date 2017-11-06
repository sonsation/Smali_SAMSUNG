.class public Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
.super Ljava/lang/Object;
.source "RadioMainLyricMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;
    }
.end annotation


# static fields
.field private static CLICK_ACTION_THRESHHOLD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "RadioMainLyricMenu"


# instance fields
.field private bottomExtra:I

.field private hasLyrics:Z

.field private lastTouchDown:J

.field private leftExtra:I

.field private mActivity:Landroid/app/Activity;

.field private mIsLoadFinished:Z

.field private mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field private final mLyricButton:Landroid/widget/TextView;

.field private final mLyricTouchArea:Landroid/view/ViewGroup;

.field private final mLyricsRequestResultListener:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;

.field private rightExtra:I

.field private topExtra:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xc8

    sput v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->CLICK_ACTION_THRESHHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "touchArea"    # Landroid/view/ViewGroup;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricsRequestResultListener:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;

    .line 47
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->leftExtra:I

    .line 49
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->rightExtra:I

    .line 51
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->topExtra:I

    .line 53
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->bottomExtra:I

    .line 65
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricTouchArea:Landroid/view/ViewGroup;

    .line 66
    const v0, 0x7f12031a

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricButton:Landroid/widget/TextView;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mActivity:Landroid/app/Activity;

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mIsLoadFinished:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->hasLyrics:Z

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01cb

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->leftExtra:I

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01cc

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->rightExtra:I

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01cd

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->topExtra:I

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01ca

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->bottomExtra:I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricTouchArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->lastTouchDown:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->lastTouchDown:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Landroid/view/View;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->checkTouchInside(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->forceRippleAnimation(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->CLICK_ACTION_THRESHHOLD:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->hasLyrics:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->hasLyrics:Z

    return p1
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mIsLoadFinished:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;)Lcom/samsung/android/app/music/milk/store/ILoadFinished;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    return-object v0
.end method

.method private checkTouchInside(Landroid/view/View;II)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 140
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 142
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 143
    .local v0, "height":I
    aget v5, v1, v4

    iget v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->leftExtra:I

    sub-int/2addr v5, v6

    if-lt p2, v5, :cond_0

    .line 144
    aget v5, v1, v4

    add-int/2addr v5, v2

    iget v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->rightExtra:I

    add-int/2addr v5, v6

    if-gt p2, v5, :cond_0

    .line 145
    aget v5, v1, v3

    iget v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->topExtra:I

    sub-int/2addr v5, v6

    if-lt p3, v5, :cond_0

    .line 146
    aget v5, v1, v3

    add-int/2addr v5, v0

    iget v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->bottomExtra:I

    add-int/2addr v5, v6

    if-gt p3, v5, :cond_0

    .line 152
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private forceRippleAnimation(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pressed"    # Z

    .prologue
    .line 156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 159
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 160
    .local v1, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    if-eqz p2, :cond_1

    .line 161
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 175
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    goto :goto_0

    .line 169
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    if-eqz p2, :cond_3

    .line 170
    const v2, 0x7f02015b

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 172
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 161
    :array_0
    .array-data 4
        0x10100a7
        0x101009c
        0x101009e
    .end array-data
.end method


# virtual methods
.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mIsLoadFinished:Z

    return v0
.end method

.method public launchLyric()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/RadioLyricsViewActivity;->startActivity(Landroid/app/Activity;)V

    .line 184
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9007"

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "loadFinishedCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 195
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 131
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->hasLyrics:Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_1
    return-void
.end method

.method public supportLyric()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->hasLyrics:Z

    return v0
.end method

.method public updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 9
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "trackId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "stationId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    .line 121
    .local v6, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    .line 123
    .local v2, "mediaId":J
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    const v1, 0x80002

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu;->mLyricsRequestResultListener:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainLyricMenu$LyricsRequestResultListener;

    const/4 v5, 0x1

    .line 125
    invoke-static {v5, v8, v7}, Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;->convertToExtra(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 127
    .end local v2    # "mediaId":J
    .end local v6    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v7    # "stationId":Ljava/lang/String;
    .end local v8    # "trackId":Ljava/lang/String;
    :cond_0
    return-void
.end method
