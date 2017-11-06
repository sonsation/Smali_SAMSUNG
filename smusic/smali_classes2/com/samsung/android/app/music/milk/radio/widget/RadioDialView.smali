.class public Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
.super Landroid/widget/RelativeLayout;
.source "RadioDialView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;,
        Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;,
        Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;,
        Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;,
        Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;
    }
.end annotation


# static fields
.field private static final GREY_OUT:F = 0.25f

.field private static final INDEX_EMPTY_MYSTATION:I = -0x2

.field private static final INDEX_EMPTY_STATION:I = -0x1

.field private static final LOAD_COVER_ART_DELAY:J = 0x5L

.field private static final LOG_TAG:Ljava/lang/String; = "RadioDialView"

.field private static final MILK_VIBE_PATTERN:[J

.field private static final OUTER_DIAL_TOUCH_PADDING_DP:I = 0xa

.field private static final REQUEST_PLAY:I = 0x1

.field private static final START_STATION_PLAYBACK_DELAY:J = 0x12cL

.field private static final TWO_PI:D = 6.283185307179586


# instance fields
.field private final PENDING_LOCK:Ljava/lang/Object;

.field private bitmap:Landroid/graphics/Bitmap;

.field private defaultImage:Landroid/graphics/Bitmap;

.field private diameter:I

.field private hashCount:I

.field private isCoverArt:Z

.field private mActivity:Landroid/app/Activity;

.field private mAngleRadToStationCursorIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAttached:Z

.field private mBuzzer:Landroid/os/Vibrator;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field private mCoverArtThreadHandler:Landroid/os/Handler;

.field private mCurrentStationCursorIndex:I

.field private mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

.field private mDialBorderRadius:F

.field private mDialCenterX:F

.field private mDialCenterY:F

.field private mDialCoverArt:Landroid/widget/ImageView;

.field private mDialCoverArtRadius:F

.field private mDialPanel:Landroid/view/ViewGroup;

.field private mDialShadow:Landroid/view/View;

.field private mDialShadowRadius:F

.field private mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

.field private mDialSpeedChanged:Z

.field private mDisplayPlaylist:Z

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHideDialThreadHandler:Landroid/os/Handler;

.field private mHoverEnable:Z

.field private mHoverPanel:Landroid/view/View;

.field private final mImageHandler:Landroid/os/Handler;

.field private mInnerDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

.field private mInputTracks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDialCtrlsAnim:Z

.field private mIsEnable:Z

.field private mIsHapticEnabled:Z

.field private mIsSelectorTouchDown:Z

.field private mLastRequestedUri:Landroid/net/Uri;

.field private mLastSelectedCoverArtUrl:Ljava/lang/String;

.field private mLastSelectedGenreID:Ljava/lang/String;

.field private mLastSelectedGenreName:Ljava/lang/String;

.field private mLastSelectedStationId:Ljava/lang/String;

.field private mLastSelectedStationIsMyStation:Z

.field private mLastSelectedStationName:Ljava/lang/String;

.field private mLastSelectedStationType:Ljava/lang/String;

.field private mLastSelectedTrackCount:I

.field private mLastSelectedTrackId:Ljava/lang/String;

.field private mLastVideoAdYn:Ljava/lang/String;

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

.field private mMainGenreIndexToLabelMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMainGenreToStationCursorIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileKeyboardCovered:I

.field private mMoveToStationAction:Ljava/lang/Runnable;

.field private mMoveToStationThreadHandler:Landroid/os/Handler;

.field private mNextStationId:Ljava/lang/String;

.field private mNumBootStrapTasks:I

.field private mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

.field private mPendingPlayRequest:Z

.field private mPrefetching:Z

.field private mPrevCoverArtAction:Ljava/lang/Runnable;

.field private mPrevHideDialAction:Ljava/lang/Runnable;

.field private mPrevHour:I

.field private mPrevSelectedGenreLabel:Landroid/view/View;

.field private mPrevStationCursorIndex:I

.field private mPrevWallPaperAction:Ljava/lang/Runnable;

.field private mStartStationPlaybackHandler:Landroid/os/Handler;

.field private mStartupInitialAngleInner:F

.field private mStartupInitialAngleOuter:F

.field private mStationCursorIndexToNumSelectionsMap:Landroid/util/SparseIntArray;

.field private mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

.field private mStationCursorToSubGenreIndexMap:Landroid/util/SparseIntArray;

.field private mStationIdToMyStationCursorIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStationIdToStationCursorIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStationInTransitionId:Ljava/lang/String;

.field private mStationOffset:I

.field private mStationsCount:I

.field private mStationsCursor:Landroid/database/Cursor;

.field private mSubGenreCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallPaperThreadHandler:Landroid/os/Handler;

.field private misTablet:Z

.field private touchListener:Landroid/view/View$OnTouchListener;

.field private twofinger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->MILK_VIBE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 485
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->PENDING_LOCK:Ljava/lang/Object;

    .line 145
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    .line 149
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->FAST:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    .line 151
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeedChanged:Z

    .line 175
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    .line 179
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLayoutHeight:I

    .line 181
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLayoutWidth:I

    .line 214
    iput v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleOuter:F

    .line 216
    iput v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleInner:F

    .line 218
    iput v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    .line 220
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    .line 222
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    .line 224
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    .line 230
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsDialCtrlsAnim:Z

    .line 256
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAttached:Z

    .line 258
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrefetching:Z

    .line 260
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->misTablet:Z

    .line 262
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->twofinger:Z

    .line 264
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverEnable:Z

    .line 266
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDisplayPlaylist:Z

    .line 268
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMobileKeyboardCovered:I

    .line 274
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$1;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCallback:Landroid/os/Handler$Callback;

    .line 319
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mImageHandler:Landroid/os/Handler;

    .line 321
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isCoverArt:Z

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInputTracks:Ljava/util/HashMap;

    .line 327
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->hashCount:I

    .line 329
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->diameter:I

    .line 333
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 346
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->touchListener:Landroid/view/View$OnTouchListener;

    .line 487
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    .line 488
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    .line 489
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 493
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initialize(Landroid/view/View;)V

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setupListeners()V

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsEnable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCenterX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCenterY:F

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorderRadius:F

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArtRadius:F

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isCoverArt:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isCoverArt:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->startCoverArtView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->showToastForDisruption()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->misTablet:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->twofinger:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->twofinger:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->defaultImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->defaultImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;FFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleSelectorTouchDown(FFZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialShadowRadius:F

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;FFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleSelectorTouchMove(FFZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleSelectorTouchUp(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->PENDING_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPendingPlayRequest:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsDialCtrlsAnim:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverEnable:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHideDialThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getFirstGenreCursorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->internalJumpToRadioStation(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->internalJumpToRadioStationByStationID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLayoutHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLayoutHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLayoutWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLayoutWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->onFragmentDrawn()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private cacheCurrentlyPlayingStationId()V
    .locals 5

    .prologue
    .line 2363
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2364
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v3, "station_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2365
    .local v0, "idCol":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2366
    .local v1, "stationId":Ljava/lang/String;
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    .line 2376
    .end local v0    # "idCol":I
    .end local v1    # "stationId":Ljava/lang/String;
    :goto_0
    return-void

    .line 2368
    :cond_0
    const-string v2, " "

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    .line 2370
    const-string v2, "RadioDialView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheCurrentlyPlayingStationId : Unable to move stations cursor to position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 2372
    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    .line 2370
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private calculateAngle(FF)D
    .locals 5
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F

    .prologue
    const/4 v4, 0x0

    .line 1612
    const-wide/16 v0, 0x0

    .line 1614
    .local v0, "angle":D
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1615
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorderRadius:F

    div-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 1617
    cmpl-float v2, p2, v4

    if-lez v2, :cond_0

    .line 1618
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v0, v2, v0

    .line 1628
    :cond_0
    :goto_0
    return-wide v0

    .line 1621
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorderRadius:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    .line 1623
    cmpg-float v2, p1, v4

    if-gez v2, :cond_0

    .line 1624
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double v0, v2, v0

    goto :goto_0
.end method

.method private calculateDirectDialStationCursorIndex(F)I
    .locals 9
    .param p1, "angleRad"    # F

    .prologue
    const v6, 0x40c90fdb

    const/4 v8, 0x0

    .line 1533
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1534
    .local v2, "minAngle":F
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    .line 1535
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1536
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1540
    .local v1, "maxAngle":F
    :goto_0
    cmpl-float v4, p1, v1

    if-lez v4, :cond_0

    .line 1541
    sub-float/2addr p1, v6

    goto :goto_0

    .line 1544
    :cond_0
    :goto_1
    cmpg-float v4, p1, v2

    if-gez v4, :cond_1

    .line 1545
    add-float/2addr p1, v6

    goto :goto_1

    .line 1548
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 1549
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$7;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    .line 1548
    invoke-static {v4, v5, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 1560
    .local v3, "searchIndex":I
    if-gez v3, :cond_2

    .line 1562
    add-int/lit8 v4, v3, 0x1

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1569
    .local v0, "index":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 1566
    .end local v0    # "index":I
    :cond_2
    move v0, v3

    .restart local v0    # "index":I
    goto :goto_2
.end method

.method private calculateHour(D)I
    .locals 13
    .param p1, "angle"    # D

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 1645
    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, p1, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    sub-double v2, v4, v6

    .line 1647
    .local v2, "percentage":D
    cmpl-double v4, v2, v10

    if-ltz v4, :cond_0

    .line 1648
    sub-double/2addr v2, v10

    .line 1651
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v4

    int-to-double v4, v4

    mul-double v0, v2, v4

    .line 1653
    .local v0, "hoursExact":D
    cmpg-double v4, v0, v10

    if-gez v4, :cond_2

    .line 1654
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v0, v4

    .line 1659
    :cond_1
    :goto_0
    double-to-int v4, v0

    return v4

    .line 1655
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    .line 1656
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v0, v4

    goto :goto_0
.end method

.method private calculateTouchPointStationOffset(D)V
    .locals 3
    .param p1, "angleRad"    # D

    .prologue
    .line 1334
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->calculateHour(D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    .line 1351
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    .line 1353
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    if-gez v0, :cond_0

    .line 1354
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    goto :goto_0

    .line 1356
    :cond_0
    return-void
.end method

.method private getFirstGenreCursorIndex(I)I
    .locals 7
    .param p1, "stationType"    # I

    .prologue
    const v6, 0x7f0a0361

    .line 2013
    const/4 v1, -0x1

    .line 2015
    .local v1, "index":I
    const-string v3, "RadioDialView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstGenreCursorIndex : station Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const/4 v3, -0x2

    if-ne p1, v3, :cond_1

    .line 2018
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2019
    .local v0, "currEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2021
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    .line 2022
    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2023
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2021
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2024
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_4

    .line 2025
    const-string v3, "RadioDialView"

    const-string v4, "getFirstGenreCursorIndex : my station empty"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    .end local v0    # "currEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v3, "RadioDialView"

    const-string v4, "getFirstGenreCursorIndex : my station is empty or it is not my station"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2036
    .restart local v0    # "currEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2038
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    .line 2039
    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2040
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2038
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2041
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2045
    .end local v0    # "currEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "index":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1

    .line 2029
    .restart local v0    # "currEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "index":I
    .restart local v2    # "key":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getGenreId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "genreName"    # Ljava/lang/String;

    .prologue
    .line 2464
    const/4 v6, 0x0

    .line 2465
    .local v6, "cursorUri":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2467
    .local v8, "genreId":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2468
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genre_name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2470
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2471
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2476
    :cond_0
    if-eqz v6, :cond_1

    .line 2477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2478
    const/4 v6, 0x0

    .line 2481
    :cond_1
    :goto_0
    return-object v8

    .line 2473
    :catch_0
    move-exception v7

    .line 2474
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2476
    if-eqz v6, :cond_1

    .line 2477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2478
    const/4 v6, 0x0

    goto :goto_0

    .line 2476
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2478
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private getNumberCircleDivisions()I
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->dialIndentCount()I

    move-result v0

    return v0
.end method

.method private handleDirectDialTouch(D)V
    .locals 7
    .param p1, "angle"    # D

    .prologue
    const v6, 0x40c90fdb

    .line 1495
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    .line 1496
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1497
    :cond_0
    const-string v3, "RadioDialView"

    const-string v4, "handleDirectDialTouch : mAngleRadToStationCursorIndexList is null or size is less than 0"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1503
    .local v2, "minAngle":F
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    .line 1504
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1505
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1506
    .local v1, "maxAngle":F
    neg-double v4, p1

    double-to-float v0, v4

    .line 1510
    .local v0, "angleRad":F
    :goto_1
    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 1511
    sub-float/2addr v0, v6

    goto :goto_1

    .line 1514
    :cond_2
    :goto_2
    cmpg-float v3, v0, v2

    if-gez v3, :cond_3

    .line 1515
    add-float/2addr v0, v6

    goto :goto_2

    .line 1518
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setTouchPointAngle(F)V

    .line 1519
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectDirectDialRadioStation(F)V

    goto :goto_0
.end method

.method private handleSelectorTouchDown(FFZ)V
    .locals 8
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "isDirectDial"    # Z

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    .line 1262
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    if-gtz v2, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    if-eqz v2, :cond_2

    .line 1267
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onDialTouchDown()V

    .line 1270
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->cancelGlowIndicatorCollapse()V

    .line 1272
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 1273
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHideDialThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    .line 1277
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 1281
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isHapticEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsHapticEnabled:Z

    .line 1284
    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setGenreLabelsAlpha(F)V

    .line 1290
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->calculateAngle(FF)D

    move-result-wide v0

    .line 1292
    .local v0, "angle":D
    if-eqz p3, :cond_5

    .line 1293
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleOuter:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    .line 1295
    double-to-float v2, v0

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleOuter:F

    .line 1297
    :goto_1
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleOuter:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_4

    .line 1298
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleOuter:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleOuter:F

    goto :goto_1

    .line 1302
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleDirectDialTouch(D)V

    .line 1316
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    goto :goto_0

    .line 1304
    :cond_5
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleInner:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_6

    .line 1306
    double-to-float v2, v0

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleInner:F

    .line 1308
    :goto_3
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleInner:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    .line 1309
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleInner:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleInner:F

    goto :goto_3

    .line 1313
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->calculateTouchPointStationOffset(D)V

    goto :goto_2
.end method

.method private handleSelectorTouchMove(FFZ)V
    .locals 12
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "isDirectDial"    # Z

    .prologue
    .line 1431
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    if-gtz v7, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 1437
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHideDialThreadHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1438
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    .line 1441
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->calculateAngle(FF)D

    move-result-wide v0

    .line 1443
    .local v0, "angle":D
    if-nez p3, :cond_4

    .line 1444
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    const/high16 v8, 0x7fc00000    # NaNf

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setTouchPointAngle(F)V

    .line 1445
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->calculateHour(D)I

    move-result v3

    .line 1447
    .local v3, "hour":I
    const/4 v7, 0x1

    if-lt v3, v7, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v7

    if-gt v3, v7, :cond_3

    .line 1448
    const/4 v7, 0x1

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectHourRadioStation(IZ)V

    .line 1455
    .end local v3    # "hour":I
    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    .line 1456
    .local v6, "toFade":Landroid/view/View;
    :goto_2
    if-eqz p3, :cond_6

    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleOuter:F

    .line 1458
    .local v5, "startupAngle":F
    :goto_3
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 1459
    :goto_4
    const-wide/16 v8, 0x0

    cmpg-double v7, v0, v8

    if-gez v7, :cond_7

    .line 1460
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v8

    goto :goto_4

    .line 1451
    .end local v5    # "startupAngle":F
    .end local v6    # "toFade":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleDirectDialTouch(D)V

    goto :goto_1

    .line 1455
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInnerDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    goto :goto_2

    .line 1456
    .restart local v6    # "toFade":Landroid/view/View;
    :cond_6
    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartupInitialAngleInner:F

    goto :goto_3

    .line 1463
    .restart local v5    # "startupAngle":F
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isInFirstQuadrant(D)Z

    move-result v7

    if-eqz v7, :cond_9

    float-to-double v8, v5

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isInFourthQuadrant(D)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1464
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v8

    .line 1469
    :cond_8
    :goto_5
    float-to-double v8, v5

    sub-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 1471
    .local v4, "rotationAngle":F
    float-to-double v8, v4

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_0

    .line 1472
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    const v8, 0x7f050018

    .line 1473
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1474
    .local v2, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v6, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1475
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    if-eqz p3, :cond_a

    .line 1478
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    goto/16 :goto_0

    .line 1465
    .end local v2    # "fadeOut":Landroid/view/animation/Animation;
    .end local v4    # "rotationAngle":F
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isInFourthQuadrant(D)Z

    move-result v7

    if-eqz v7, :cond_8

    float-to-double v8, v5

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->isInFirstQuadrant(D)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1466
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v0, v8

    goto :goto_5

    .line 1480
    .restart local v2    # "fadeOut":Landroid/view/animation/Animation;
    .restart local v4    # "rotationAngle":F
    :cond_a
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInnerDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    goto/16 :goto_0
.end method

.method private handleSelectorTouchUp(Z)V
    .locals 5
    .param p1, "spinner"    # Z

    .prologue
    .line 1389
    const-string v1, "RadioDialView"

    const-string v2, "handleSelectorTouchUp : start!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    .line 1392
    if-nez p1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onDialTouchUp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 1396
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 1397
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9002"

    .line 1399
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    .line 1398
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    move-result-object v1

    const-string v2, "Dial List"

    const-string v3, "Select Dial"

    .line 1401
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->hitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    .end local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->collapseGlowIndicator()V

    .line 1407
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 1410
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setGenreLabelsAlpha(F)V

    .line 1412
    :cond_1
    return-void
.end method

.method private hasStation(Ljava/lang/String;)Z
    .locals 11
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2485
    const/4 v8, 0x0

    .line 2487
    .local v8, "ret":Z
    if-nez p1, :cond_0

    .line 2488
    const-string v0, "RadioDialView"

    const-string v1, "hasStation : station id is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    :goto_0
    return v10

    .line 2491
    :cond_0
    const/4 v7, 0x0

    .line 2493
    .local v7, "myStation":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id)"

    aput-object v4, v2, v3

    const-string/jumbo v3, "station_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2496
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2497
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v8, v9

    .line 2502
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 2503
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2504
    const/4 v7, 0x0

    :cond_2
    :goto_2
    move v10, v8

    .line 2507
    goto :goto_0

    :cond_3
    move v8, v10

    .line 2497
    goto :goto_1

    .line 2499
    :catch_0
    move-exception v6

    .line 2500
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2502
    if-eqz v7, :cond_2

    .line 2503
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2504
    const/4 v7, 0x0

    goto :goto_2

    .line 2502
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2503
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2504
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method private initStations()V
    .locals 22

    .prologue
    .line 1097
    const-string v19, "RadioDialView"

    const-string v20, "initStations : Start!!"

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    .line 1100
    new-instance v19, Landroid/util/SparseIntArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

    .line 1101
    new-instance v19, Landroid/util/SparseIntArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToSubGenreIndexMap:Landroid/util/SparseIntArray;

    .line 1102
    new-instance v19, Ljava/util/LinkedHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    .line 1103
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    .line 1104
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    .line 1105
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    .line 1107
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    .line 1108
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1113
    const/4 v10, -0x1

    .line 1115
    .local v10, "isMyStationCol":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "is_mystation"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "genre_name"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1117
    .local v15, "stationGenreCol":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "station_type"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1119
    .local v18, "stationTypeCol":I
    const/4 v13, 0x0

    .line 1121
    .local v13, "numSubGenres":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0a0361

    .line 1122
    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1123
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    const/high16 v21, -0x80000000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 1122
    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    const/high16 v20, -0x80000000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    const/16 v16, -0x1

    .line 1130
    .local v16, "stationIdCol":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string/jumbo v20, "station_id"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1132
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1133
    .local v8, "genreSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1134
    const/4 v11, -0x1

    .line 1135
    .local v11, "isPreMyStation":I
    const/4 v12, 0x0

    .line 1136
    .local v12, "isPrePlaylist":Z
    const/4 v14, 0x0

    .line 1138
    .local v14, "playlist":Z
    const/4 v5, 0x1

    .line 1139
    .local v5, "emptyMyStation":Z
    const/4 v6, 0x1

    .line 1141
    .local v6, "emptyPlaylist":Z
    const/high16 v7, -0x80000000

    .line 1144
    .end local v12    # "isPrePlaylist":Z
    .local v7, "genreLimit":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1145
    .local v9, "isMyStation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1147
    .local v17, "stationType":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_1

    .line 1148
    const/4 v5, 0x0

    .line 1152
    :cond_1
    const/4 v14, 0x0

    .line 1153
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 1154
    :goto_0
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1155
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1157
    .local v2, "currGenre":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 1158
    .local v4, "cursorPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, "currId":Ljava/lang/String;
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isFirst()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1163
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1173
    :cond_2
    :goto_1
    const/4 v13, 0x1

    .line 1175
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1194
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToSubGenreIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.samsung.radio.fragment.prev_station_index"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1205
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    .line 1208
    :cond_3
    move v11, v9

    .line 1209
    move v12, v14

    .line 1210
    .local v12, "isPrePlaylist":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1213
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_b

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .end local v2    # "currGenre":Ljava/lang/String;
    .end local v3    # "currId":Ljava/lang/String;
    .end local v4    # "cursorPos":I
    .end local v5    # "emptyMyStation":Z
    .end local v6    # "emptyPlaylist":Z
    .end local v7    # "genreLimit":I
    .end local v8    # "genreSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "isMyStation":I
    .end local v10    # "isMyStationCol":I
    .end local v11    # "isPreMyStation":I
    .end local v12    # "isPrePlaylist":I
    .end local v13    # "numSubGenres":I
    .end local v14    # "playlist":Z
    .end local v15    # "stationGenreCol":I
    .end local v16    # "stationIdCol":I
    .end local v17    # "stationType":Ljava/lang/String;
    .end local v18    # "stationTypeCol":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.samsung.radio.fragment.prev_station_index"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1241
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    .line 1243
    :cond_4
    return-void

    .line 1153
    .restart local v5    # "emptyMyStation":Z
    .restart local v6    # "emptyPlaylist":Z
    .restart local v7    # "genreLimit":I
    .restart local v8    # "genreSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "isMyStation":I
    .restart local v10    # "isMyStationCol":I
    .restart local v11    # "isPreMyStation":I
    .restart local v13    # "numSubGenres":I
    .restart local v14    # "playlist":Z
    .restart local v15    # "stationGenreCol":I
    .restart local v16    # "stationIdCol":I
    .restart local v17    # "stationType":Ljava/lang/String;
    .restart local v18    # "stationTypeCol":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const v20, 0x7f0a0361

    .line 1154
    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 1165
    .restart local v2    # "currGenre":Ljava/lang/String;
    .restart local v3    # "currId":Ljava/lang/String;
    .restart local v4    # "cursorPos":I
    :cond_6
    if-eqz v12, :cond_7

    .line 1166
    const-string v19, "RadioDialView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "initStations : mSubGenreCounts: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1169
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1178
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1184
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1190
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    move-object/from16 v20, v0

    .line 1191
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto/16 :goto_4

    .line 1215
    .restart local v12    # "isPrePlaylist":I
    :cond_b
    if-eqz v12, :cond_c

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1218
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1227
    .end local v2    # "currGenre":Ljava/lang/String;
    .end local v3    # "currId":Ljava/lang/String;
    .end local v4    # "cursorPos":I
    .end local v5    # "emptyMyStation":Z
    .end local v6    # "emptyPlaylist":Z
    .end local v7    # "genreLimit":I
    .end local v8    # "genreSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "isMyStation":I
    .end local v10    # "isMyStationCol":I
    .end local v11    # "isPreMyStation":I
    .end local v12    # "isPrePlaylist":I
    .end local v13    # "numSubGenres":I
    .end local v14    # "playlist":Z
    .end local v15    # "stationGenreCol":I
    .end local v16    # "stationIdCol":I
    .end local v17    # "stationType":Ljava/lang/String;
    .end local v18    # "stationTypeCol":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0a0361

    .line 1228
    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1229
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    const/high16 v21, -0x80000000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 1228
    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move-object/from16 v19, v0

    const/high16 v20, -0x80000000

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5
.end method

.method private initSundialSegments()V
    .locals 54

    .prologue
    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 808
    const/4 v8, 0x0

    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v25

    .local v25, "n":I
    :goto_0
    move/from16 v0, v25

    if-ge v8, v0, :cond_0

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 808
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 812
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 820
    .end local v8    # "i":I
    .end local v25    # "n":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->setAppStyleToInflate(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v22

    .line 822
    .local v22, "inflater":Landroid/view/LayoutInflater;
    const/4 v9, 0x1

    .line 823
    .local v9, "isClockwise":Z
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    .line 824
    const/4 v8, 0x0

    .line 826
    .restart local v8    # "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getMeasuredWidth()I

    move-result v47

    .line 827
    .local v47, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getMeasuredHeight()I

    move-result v19

    .line 828
    .local v19, "height":I
    const/4 v3, 0x0

    move/from16 v0, v47

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    .line 829
    .local v48, "widthMeasureSpec":I
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 830
    .local v20, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0055

    .line 831
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v32, v0

    .line 832
    .local v32, "shadowThickness":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v26

    .line 833
    .local v26, "numSegments":I
    move/from16 v0, v26

    new-array v2, v0, [I

    .line 834
    .local v2, "arcTextWidths":[I
    const/16 v35, 0x0

    .line 835
    .local v35, "totalArcTextWidth":I
    const/high16 v12, -0x40800000    # -1.0f

    .line 837
    .local v12, "sectorRadius":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreToStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 838
    .local v15, "currEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const v3, 0x7f040108

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    .line 839
    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;

    .line 840
    .local v5, "sundialSegment":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setDialTouchHandler(Landroid/view/View;)V

    .line 842
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v12, v3

    if-nez v3, :cond_2

    .line 843
    move/from16 v0, v48

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->measure(II)V

    .line 845
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getPaddingBottom()I

    move-result v6

    add-int v46, v3, v6

    .line 846
    .local v46, "vertPadding":I
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getMeasuredHeight()I

    move-result v3

    sub-int v31, v3, v46

    .line 847
    .local v31, "segmentInrinsicHeight":I
    move/from16 v0, v31

    int-to-float v3, v0

    sub-float v3, v32, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v14, v3, v6

    .line 848
    .local v14, "centerInShadow":F
    move/from16 v0, v46

    int-to-float v3, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v18, v3, v6

    .line 849
    .local v18, "effectivePaddingTop":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorderRadius:F

    add-float/2addr v3, v14

    add-float v12, v3, v18

    .line 852
    .end local v14    # "centerInShadow":F
    .end local v18    # "effectivePaddingTop":F
    .end local v31    # "segmentInrinsicHeight":I
    .end local v46    # "vertPadding":I
    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v12

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setTextBoundsWidth(F)V

    .line 853
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v12

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setTextBoundsHeight(F)V

    .line 855
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setArcText(Ljava/lang/CharSequence;)V

    .line 856
    move/from16 v0, v48

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->measure(II)V

    .line 858
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    .line 860
    .local v33, "stationCursorIndex":Ljava/lang/Integer;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v6, -0x80000000

    if-ne v3, v6, :cond_3

    .line 861
    const v3, 0x7f120029

    move-object/from16 v0, v33

    invoke-virtual {v5, v3, v0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setTag(ILjava/lang/Object;)V

    .line 862
    new-instance v3, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$6;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getArcTextWidth()I

    move-result v3

    aput v3, v2, v8

    .line 901
    aget v3, v2, v8

    add-int v35, v35, v3

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    if-nez v3, :cond_4

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 911
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    add-int/lit8 v21, v8, 0x1

    .end local v8    # "i":I
    .local v21, "i":I
    invoke-virtual {v3, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move/from16 v8, v21

    .line 912
    .end local v21    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_1

    .line 908
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 918
    .end local v5    # "sundialSegment":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    .end local v15    # "currEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v33    # "stationCursorIndex":Ljava/lang/Integer;
    :cond_5
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v0, v12

    move-wide/from16 v50, v0

    mul-double v6, v6, v50

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v50, v0

    sub-double v36, v6, v50

    .line 919
    .local v36, "totalEmptySpace":D
    move/from16 v0, v26

    int-to-double v6, v0

    div-double v42, v36, v6

    .line 920
    .local v42, "unitEmptySpace":D
    float-to-double v6, v12

    div-double v38, v36, v6

    .line 921
    .local v38, "totalEmptySpaceAngle":D
    float-to-double v6, v12

    div-double v44, v42, v6

    .line 922
    .local v44, "unitEmptySpaceAngle":D
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v40, v6, v38

    .line 925
    .local v40, "totalLabelsAngle":D
    move/from16 v0, v26

    new-array v0, v0, [D

    move-object/from16 v28, v0

    .line 928
    .local v28, "sectorCenterAngles":[D
    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v29, v0

    .line 932
    .local v29, "sectorStartAngles":[F
    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 934
    .local v30, "sectorSweepAngles":[F
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 935
    .local v10, "startRadAngle":D
    const/4 v8, 0x0

    .line 937
    const/16 v16, 0x0

    .local v16, "currGenre":I
    :goto_3
    array-length v3, v2

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 938
    if-nez v35, :cond_6

    .line 939
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string/jumbo v4, "totalArcTextWidth is zero!"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 941
    :cond_6
    aget v3, v2, v16

    int-to-float v3, v3

    move/from16 v0, v35

    int-to-float v4, v0

    div-float/2addr v3, v4

    move-wide/from16 v0, v40

    double-to-float v4, v0

    mul-float/2addr v3, v4

    move-wide/from16 v0, v44

    double-to-float v4, v0

    add-float/2addr v3, v4

    aput v3, v30, v16

    .line 945
    if-lez v16, :cond_7

    .line 946
    add-int/lit8 v3, v16, -0x1

    aget-wide v6, v28, v3

    add-int/lit8 v3, v16, -0x1

    aget v3, v30, v3

    float-to-double v0, v3

    move-wide/from16 v50, v0

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    mul-double v50, v50, v52

    add-double v6, v6, v50

    const-wide/16 v50, 0x0

    add-double v6, v6, v50

    aget v3, v30, v16

    float-to-double v0, v3

    move-wide/from16 v50, v0

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    mul-double v50, v50, v52

    add-double v6, v6, v50

    aput-wide v6, v28, v16

    .line 960
    :goto_4
    aget-wide v6, v28, v16

    double-to-float v3, v6

    aget v4, v30, v16

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    double-to-float v4, v10

    sub-float v23, v3, v4

    .line 966
    .local v23, "majorStartAngle":F
    move/from16 v0, v23

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    aput v3, v29, v16

    .line 969
    const/16 v17, 0x0

    .local v17, "currSubGenre":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .local v27, "numSubGenres":I
    move/from16 v21, v8

    .line 970
    .end local v8    # "i":I
    .restart local v21    # "i":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 971
    aget v3, v30, v16

    move/from16 v0, v27

    int-to-float v4, v0

    div-float v34, v3, v4

    .line 972
    .local v34, "sweepAngle":F
    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v3, v3, v34

    add-float v24, v23, v3

    .line 979
    .local v24, "minorStartAngle":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAngleRadToStationCursorIndexList:Ljava/util/List;

    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 980
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-int/lit8 v8, v21, 0x1

    .line 981
    .end local v21    # "i":I
    .restart local v8    # "i":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 980
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v8

    .end local v8    # "i":I
    .restart local v21    # "i":I
    goto :goto_5

    .line 954
    .end local v17    # "currSubGenre":I
    .end local v21    # "i":I
    .end local v23    # "majorStartAngle":F
    .end local v24    # "minorStartAngle":F
    .end local v27    # "numSubGenres":I
    .end local v34    # "sweepAngle":F
    .restart local v8    # "i":I
    :cond_7
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v28, v3

    goto :goto_4

    .line 937
    .end local v8    # "i":I
    .restart local v17    # "currSubGenre":I
    .restart local v21    # "i":I
    .restart local v23    # "majorStartAngle":F
    .restart local v27    # "numSubGenres":I
    :cond_8
    add-int/lit8 v16, v16, 0x1

    move/from16 v8, v21

    .end local v21    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_3

    .line 987
    .end local v17    # "currSubGenre":I
    .end local v23    # "majorStartAngle":F
    .end local v27    # "numSubGenres":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setIndicatorLength(F)V

    .line 988
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, v30

    array-length v3, v0

    if-ge v8, v3, :cond_a

    .line 989
    aget v3, v30, v8

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    aput v3, v30, v8

    .line 988
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 992
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mSubGenreCounts:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [I

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setRingSegments(Ljava/util/List;[F[F[I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move-object/from16 v0, v28

    array-length v4, v0

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    .line 997
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_c

    move-object/from16 v0, v28

    array-length v3, v0

    if-lez v3, :cond_c

    .line 998
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v8, v3, :cond_c

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;

    .line 1001
    .restart local v5    # "sundialSegment":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    if-eqz v5, :cond_b

    .line 1002
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v49

    new-instance v3, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;

    aget-wide v6, v28, v8

    const/4 v4, 0x0

    new-array v13, v4, [I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$SegmentPosition;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Landroid/view/View;DIZDF[I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 998
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1011
    .end local v5    # "sundialSegment":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    :cond_c
    return-void
.end method

.method private initToCurrentlyPlaying()V
    .locals 6

    .prologue
    .line 2073
    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    if-lez v1, :cond_0

    .line 2074
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->isPlayerServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2075
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 2076
    .local v0, "stationId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2077
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->internalJumpToRadioStationByStationID(Ljava/lang/String;)V

    .line 2092
    .end local v0    # "stationId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2079
    .restart local v0    # "stationId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 2080
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2081
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationAction:Ljava/lang/Runnable;

    .line 2083
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$CountMoveToStationRunnable;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationAction:Ljava/lang/Runnable;

    .line 2084
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationAction:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2089
    .end local v0    # "stationId":Ljava/lang/String;
    :cond_3
    const-string v1, "RadioDialView"

    const-string v2, "initToCurrentlyPlaying : not connected yet."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTurnTip()V
    .locals 8

    .prologue
    const v5, 0x7f0d0052

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.radio.splashactivity.first_run"

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.radio.splashactivity.first_run"

    invoke-static {v3, v4, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 753
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->setAppStyleToInflate(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 754
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04010b

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 756
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    const v4, 0x7f120323

    .line 757
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    .line 758
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setIsTextConvex(Z)V

    .line 760
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 761
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v2, v3

    .line 762
    .local v2, "width":F
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v3, v2, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setLayout(FF)V

    .line 764
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 765
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v2, v3

    .line 766
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setTextBoundsWidth(F)V

    .line 767
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setTextBoundsHeight(F)V

    .line 768
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    const/high16 v4, 0x41b80000    # 23.0f

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 769
    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 768
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setTextOffset(F)V

    .line 771
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    .line 772
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    .line 773
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 771
    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setArcTextSize(F)V

    .line 774
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d05dc

    .line 775
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 774
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setTextTopPadding(F)V

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    .local v1, "outerText":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0366

    .line 779
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a034e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0367

    .line 784
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 783
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setArcText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setArcTextColor(I)V

    .line 788
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setVisibility(I)V

    .line 791
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mOuterDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->initArcText()V

    .line 793
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    const v4, 0x7f120322

    .line 794
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInnerDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    .line 795
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInnerDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setVisibility(I)V

    .line 798
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInnerDialTurnTip:Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->initArcText()V

    .line 800
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "outerText":Ljava/lang/StringBuilder;
    .end local v2    # "width":F
    :cond_0
    return-void
.end method

.method private initialize(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 581
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsEnable:Z

    .line 582
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMoveToStationThreadHandler:Landroid/os/Handler;

    .line 583
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCoverArtThreadHandler:Landroid/os/Handler;

    .line 584
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mWallPaperThreadHandler:Landroid/os/Handler;

    .line 585
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHideDialThreadHandler:Landroid/os/Handler;

    .line 586
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$4;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartStationPlaybackHandler:Landroid/os/Handler;

    .line 606
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    .line 608
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorIndexToNumSelectionsMap:Landroid/util/SparseIntArray;

    .line 610
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    const v3, 0x7f040109

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, "view":Landroid/view/View;
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->misTablet:Z

    if-eqz v2, :cond_1

    .line 614
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->addView(Landroid/view/View;)V

    .line 619
    :goto_0
    const v2, 0x7f120302

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    .line 620
    const v2, 0x7f120305

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    .line 621
    const v2, 0x7f120304

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    .line 622
    const v2, 0x7f120303

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialShadow:Landroid/view/View;

    .line 624
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    new-instance v3, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    const v2, 0x7f12031f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverPanel:Landroid/view/View;

    .line 632
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverPanel:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 634
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01db

    .line 635
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 636
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d05f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 638
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverPanel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->PENDING_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 642
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPendingPlayRequest:Z

    .line 643
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    return-void

    .line 616
    :cond_1
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private internalJumpToRadioStation(Ljava/lang/String;I)V
    .locals 1
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 2049
    if-ltz p2, :cond_0

    .line 2050
    if-eqz p1, :cond_1

    .line 2051
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->jumpToRadioStation(IZ)V

    .line 2056
    :cond_0
    :goto_0
    return-void

    .line 2053
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->jumpToRadioStation(IZ)V

    goto :goto_0
.end method

.method private internalJumpToRadioStationByStationID(Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 2059
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getCurrentStationCursorIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2061
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->internalJumpToRadioStation(Ljava/lang/String;I)V

    .line 2064
    :cond_0
    return-void
.end method

.method private isHapticEnabled()Z
    .locals 2

    .prologue
    .line 744
    const-string v0, "RadioDialView"

    const-string v1, "isHapticEnabled : ==> TRUE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x1

    return v0
.end method

.method private isInFirstQuadrant(D)Z
    .locals 3
    .param p1, "angleRadians"    # D

    .prologue
    .line 1581
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInFourthQuadrant(D)Z
    .locals 3
    .param p1, "angleRadians"    # D

    .prologue
    .line 1594
    const-wide v0, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFragmentDrawn()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 711
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    if-ltz v0, :cond_0

    .line 712
    const-string v0, "RadioDialView"

    const-string v1, "onFragmentDrawn : calculate the dial center & radius"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    .line 716
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCenterX:F

    .line 717
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    .line 718
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCenterY:F

    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    .line 720
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArtRadius:F

    .line 721
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    .line 722
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorderRadius:F

    .line 723
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialShadow:Landroid/view/View;

    .line 724
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialShadowRadius:F

    .line 727
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    if-nez v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 729
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initTurnTip()V

    .line 730
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initStations()V

    .line 731
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initSundialSegments()V

    .line 732
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initToCurrentlyPlaying()V

    .line 737
    :cond_1
    :goto_0
    return-void

    .line 734
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    goto :goto_0
.end method

.method private resetDialTouchTracking(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;)V
    .locals 1
    .param p1, "resetSpeed"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeedChanged:Z

    .line 1931
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    .line 1932
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorIndexToNumSelectionsMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1933
    return-void

    .line 1930
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectDialGenreLabel(I)V
    .locals 4
    .param p1, "genreIndex"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1966
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1970
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevSelectedGenreLabel:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1971
    const/4 v0, 0x0

    .line 1973
    .local v0, "currLabel":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    .line 1974
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currLabel":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    check-cast v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;

    .line 1977
    .restart local v0    # "currLabel":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevSelectedGenreLabel:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1979
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevSelectedGenreLabel:Landroid/view/View;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1983
    .end local v0    # "currLabel":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1984
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;

    .line 1986
    .restart local v0    # "currLabel":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    .line 1992
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setAlpha(F)V

    .line 1995
    :cond_4
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevSelectedGenreLabel:Landroid/view/View;

    goto :goto_0
.end method

.method private selectDirectDialRadioStation(F)V
    .locals 2
    .param p1, "angleRad"    # F

    .prologue
    .line 1524
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->showToastForDisruption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1530
    :goto_0
    return-void

    .line 1527
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->calculateDirectDialStationCursorIndex(F)I

    move-result v0

    .line 1528
    .local v0, "stationCursorIndex":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->vibrate(I)V

    .line 1529
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectRadioStation(IZ)Z

    goto :goto_0
.end method

.method private selectHourRadioStation(IZ)V
    .locals 13
    .param p1, "hours"    # I
    .param p2, "isDialTouch"    # Z

    .prologue
    .line 1680
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    if-gtz v11, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->showToastForDisruption()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1689
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v4

    .line 1691
    .local v4, "prevCircleDivisions":I
    iget-boolean v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeedChanged:Z

    if-eqz v11, :cond_4

    .line 1692
    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    sget-object v12, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->SLOW:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    if-ne v11, v12, :cond_2

    sget-object v11, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->FAST:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    .line 1693
    invoke-virtual {v11}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->dialIndentCount()I

    move-result v4

    .line 1711
    :goto_1
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v11, p1

    iput v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    .line 1712
    :goto_2
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    if-gez v11, :cond_3

    .line 1713
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    iget v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    goto :goto_2

    .line 1693
    :cond_2
    sget-object v11, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->SLOW:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    .line 1694
    invoke-virtual {v11}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->dialIndentCount()I

    move-result v4

    goto :goto_1

    .line 1716
    :cond_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeedChanged:Z

    .line 1720
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v11

    div-int/lit8 v9, v11, 0x4

    .line 1721
    .local v9, "quadSpan":I
    const/4 v1, 0x1

    .line 1722
    .local v1, "firstQuadStart":I
    add-int v0, v1, v9

    .line 1723
    .local v0, "firstQuadEnd":I
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v2

    .line 1724
    .local v2, "fourthQuadEnd":I
    sub-int v3, v2, v9

    .line 1726
    .local v3, "fourthQuadStart":I
    div-int/lit8 v8, v4, 0x4

    .line 1727
    .local v8, "prevQuadSpan":I
    add-int v5, v1, v8

    .line 1728
    .local v5, "prevFirstQuadEnd":I
    move v6, v4

    .line 1729
    .local v6, "prevFourthQuadEnd":I
    sub-int v7, v6, v8

    .line 1731
    .local v7, "prevFourthQuadStart":I
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    if-lt v11, v7, :cond_6

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    if-gt v11, v6, :cond_6

    if-lt p1, v1, :cond_6

    if-gt p1, v0, :cond_6

    .line 1736
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    rem-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    .line 1749
    :cond_5
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    .line 1752
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    rem-int v10, v11, v12

    .line 1755
    .local v10, "stationCursorIndex":I
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->vibrate(I)V

    .line 1757
    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->trackDialTouchMove(I)V

    .line 1758
    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectRadioStation(IZ)Z

    goto :goto_0

    .line 1737
    .end local v10    # "stationCursorIndex":I
    :cond_6
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    if-lt v11, v1, :cond_5

    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHour:I

    if-gt v11, v5, :cond_5

    if-lt p1, v3, :cond_5

    if-gt p1, v2, :cond_5

    .line 1742
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getNumberCircleDivisions()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    rem-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    .line 1744
    :goto_3
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    if-gez v11, :cond_5

    .line 1745
    iget v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    iget v12, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationOffset:I

    goto :goto_3
.end method

.method private selectRadioStation(IZ)Z
    .locals 6
    .param p1, "stationCursorIndex"    # I
    .param p2, "startPlay"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1762
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectRadioStation(IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private selectRadioStation(IZZZLjava/lang/String;)Z
    .locals 22
    .param p1, "stationCursorIndex"    # I
    .param p2, "startPlay"    # Z
    .param p3, "spinner"    # Z
    .param p4, "isSmartStation"    # Z
    .param p5, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 1773
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_15

    .line 1774
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1775
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    .line 1777
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    if-eq v5, v6, :cond_0

    .line 1778
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->setDialIndicator(IZ)V

    .line 1781
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    .line 1783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "station_id"

    .line 1784
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1785
    .local v19, "stationId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "station_track_id"

    .line 1786
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1785
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1787
    .local v21, "trackId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "track_coverart_url"

    .line 1788
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1787
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1789
    .local v12, "coverArtUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string v7, "is_mystation"

    .line 1790
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    const/4 v14, 0x1

    .line 1792
    .local v14, "isMyStation":Z
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1793
    move-object/from16 v12, p5

    .line 1796
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    .line 1797
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v6

    .line 1798
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v7

    .line 1797
    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v20

    .line 1799
    .local v20, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-nez p3, :cond_2

    .line 1800
    const-string v5, "RadioDialView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selectRadioStation : station id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", track id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", station name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", station type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isMyStation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationIsMyStation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", stationId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", trackId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    if-eqz v5, :cond_2

    .line 1809
    if-eqz v19, :cond_a

    if-eqz v21, :cond_a

    .line 1810
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v5, v0, v1, v2, v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->setSpinnerInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1819
    :cond_2
    :goto_1
    const/4 v15, 0x0

    .line 1820
    .local v15, "isSongChanged":Z
    const/16 v16, 0x0

    .line 1822
    .local v16, "isStationTypeChanged":Z
    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    .line 1823
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1824
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationIsMyStation:Z

    if-eq v14, v5, :cond_b

    const/16 v16, 0x1

    .line 1832
    :cond_3
    :goto_2
    if-nez v15, :cond_4

    if-nez v16, :cond_4

    if-eqz p4, :cond_14

    .line 1834
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    .line 1835
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "station_type"

    .line 1836
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1835
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationType:Ljava/lang/String;

    .line 1837
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "station_station_name"

    .line 1838
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1837
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationName:Ljava/lang/String;

    .line 1839
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string v7, "genre_name"

    .line 1840
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedGenreName:Ljava/lang/String;

    .line 1841
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v6, "station_genre_id"

    .line 1842
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1843
    .local v13, "genreIndex":I
    if-ltz v13, :cond_f

    .line 1844
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedGenreID:Ljava/lang/String;

    .line 1851
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v7, "station_track_count"

    .line 1852
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1851
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackCount:I

    .line 1853
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationIsMyStation:Z

    .line 1854
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    .line 1855
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedCoverArtUrl:Ljava/lang/String;

    .line 1857
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->putHash(Ljava/lang/String;)V

    .line 1859
    const-string v5, "RadioDialView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selectRadioStation : station id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", track id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", station name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", station type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isMyStation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationIsMyStation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cover art url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

    if-eqz v5, :cond_6

    .line 1867
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    .line 1868
    move/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v17

    .line 1869
    .local v17, "mainGenreIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectDialGenreLabel(I)V

    .line 1872
    .end local v17    # "mainGenreIndex":I
    :cond_6
    if-eqz p2, :cond_8

    if-nez v15, :cond_7

    if-nez v16, :cond_7

    if-eqz p4, :cond_8

    .line 1873
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrefetching:Z

    if-nez v5, :cond_11

    .line 1874
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartStationPlaybackHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->PENDING_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 1877
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPendingPlayRequest:Z

    .line 1878
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    new-instance v4, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationIsMyStation:Z

    if-eqz p4, :cond_10

    const/4 v10, 0x1

    :goto_4
    move/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1886
    .local v4, "requestMsg":Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v18

    .line 1887
    .local v18, "message":Landroid/os/Message;
    if-eqz v18, :cond_8

    .line 1888
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput v5, v0, Landroid/os/Message;->what:I

    .line 1889
    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1890
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartStationPlaybackHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    .line 1891
    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1902
    .end local v4    # "requestMsg":Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$RequestPlayMsg;
    .end local v18    # "message":Landroid/os/Message;
    :cond_8
    :goto_5
    const/4 v5, 0x1

    .line 1913
    .end local v12    # "coverArtUrl":Ljava/lang/String;
    .end local v13    # "genreIndex":I
    .end local v14    # "isMyStation":Z
    .end local v15    # "isSongChanged":Z
    .end local v16    # "isStationTypeChanged":Z
    .end local v19    # "stationId":Ljava/lang/String;
    .end local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v21    # "trackId":Ljava/lang/String;
    :goto_6
    return v5

    .line 1790
    .restart local v12    # "coverArtUrl":Ljava/lang/String;
    .restart local v19    # "stationId":Ljava/lang/String;
    .restart local v21    # "trackId":Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1813
    .restart local v14    # "isMyStation":Z
    .restart local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    move/from16 v0, p1

    invoke-interface {v5, v0, v6, v7, v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->setSpinnerInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1824
    .restart local v15    # "isSongChanged":Z
    .restart local v16    # "isStationTypeChanged":Z
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1825
    :cond_c
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    .line 1826
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    .line 1827
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1828
    :cond_e
    const/4 v15, 0x1

    .line 1829
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1846
    .restart local v13    # "genreIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_5

    .line 1847
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedGenreName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getGenreId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedGenreID:Ljava/lang/String;

    goto/16 :goto_3

    .line 1878
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1880
    :cond_10
    const/4 v10, 0x0

    goto :goto_4

    .line 1894
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    if-eqz v5, :cond_8

    .line 1895
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mListener:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationIsMyStation:Z

    if-eqz p4, :cond_12

    const/4 v11, 0x1

    :goto_7
    move/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onPlayRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_5

    :cond_12
    const/4 v11, 0x0

    goto :goto_7

    .line 1905
    .end local v12    # "coverArtUrl":Ljava/lang/String;
    .end local v13    # "genreIndex":I
    .end local v14    # "isMyStation":Z
    .end local v15    # "isSongChanged":Z
    .end local v16    # "isStationTypeChanged":Z
    .end local v19    # "stationId":Ljava/lang/String;
    .end local v20    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v21    # "trackId":Ljava/lang/String;
    :cond_13
    const-string v5, "RadioDialView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selectRadioStation : Unable to move stations cursor to position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    .line 1907
    invoke-virtual {v7}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    .line 1905
    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1913
    :cond_14
    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1910
    :cond_15
    const-string v5, "RadioDialView"

    const-string/jumbo v6, "selectRadioStation : mStationsCursor is null!!"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private setDialIndicator(IZ)V
    .locals 3
    .param p1, "stationCursorIndex"    # I
    .param p2, "showIndicatorGlow"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1946
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    .line 1947
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToMainGenreIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1949
    .local v0, "mainGenreIndex":I
    if-ne v0, v2, :cond_1

    .line 1957
    .end local v0    # "mainGenreIndex":I
    :cond_0
    :goto_0
    return-void

    .line 1953
    .restart local v0    # "mainGenreIndex":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setMainSelected(I)V

    .line 1954
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorToSubGenreIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setSubSelected(IZ)V

    goto :goto_0
.end method

.method private setGenreLabelsAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 1365
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1366
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMainGenreIndexToLabelMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;

    .line 1368
    .local v0, "currLabel":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevSelectedGenreLabel:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevSelectedGenreLabel:Landroid/view/View;

    .line 1369
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1370
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setAlpha(F)V

    .line 1365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    .end local v0    # "currLabel":Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
    :cond_1
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 665
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 667
    invoke-static {}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->hasHoverAPIs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverPanel:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$5;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 708
    :cond_0
    return-void
.end method

.method private showToastForDisruption()Z
    .locals 5

    .prologue
    .line 647
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "trackId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    .line 650
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v4

    .line 650
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v0

    .line 652
    .local v0, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v0, :cond_1

    const-string v2, "1"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "2"

    .line 653
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0347

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->showRadioToastWithinDuration(Landroid/content/Context;II)V

    .line 656
    const/4 v2, 0x1

    .line 660
    .end local v0    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startCoverArtView()V
    .locals 4

    .prologue
    .line 2426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2427
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.radio.ACTION_VIEW_COVER_ART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2428
    const-string v1, "image_url"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedCoverArtUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2429
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2431
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2433
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "901"

    const-string v3, "9003"

    .line 2434
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    return-void
.end method

.method private trackDialTouchMove(I)V
    .locals 3
    .param p1, "stationCursorIndex"    # I

    .prologue
    .line 1917
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorIndexToNumSelectionsMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1918
    .local v0, "numPrevSelections":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationCursorIndexToNumSelectionsMap:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1920
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    sget-object v2, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->SLOW:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialSpeed:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    sget-object v2, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->FAST:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 1922
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;->SLOW:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->resetDialTouchTracking(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$DialSpeed;)V

    .line 1924
    :cond_1
    return-void
.end method

.method private vibrate(I)V
    .locals 3
    .param p1, "stationCursorIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2006
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mBuzzer:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevStationCursorIndex:I

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsHapticEnabled:Z

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mBuzzer:Landroid/os/Vibrator;

    sget-object v1, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->MILK_VIBE_PATTERN:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 2010
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanHash()V
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInputTracks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2450
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->hashCount:I

    .line 2451
    return-void
.end method

.method public containTrack(Ljava/lang/String;)Z
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 2454
    const/4 v0, 0x0

    .line 2456
    .local v0, "isContain":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInputTracks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2457
    const/4 v0, 0x1

    .line 2460
    :cond_0
    return v0
.end method

.method public disableHover()V
    .locals 1

    .prologue
    .line 2398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverEnable:Z

    .line 2399
    return-void
.end method

.method public enableHover()V
    .locals 1

    .prologue
    .line 2402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverEnable:Z

    .line 2403
    return-void
.end method

.method public getCurrentStationCursorIndex(Ljava/lang/String;)I
    .locals 13
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v10, -0x1

    .line 2165
    const/4 v3, 0x0

    .line 2167
    .local v3, "isMyGenreStation":Z
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v7

    .line 2169
    .local v7, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v7, :cond_4

    .line 2170
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    .line 2171
    const/4 v3, 0x1

    .line 2188
    :cond_0
    const-string v9, "RadioDialView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCurrentStationCursorIndex : station id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isMyGenreStation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    .line 2194
    if-eqz v3, :cond_8

    .line 2195
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    .line 2196
    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2198
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2200
    .local v6, "ret":I
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2201
    .local v4, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2203
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2204
    .local v5, "obj":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v11, v6, 0x1

    if-ne v9, v11, :cond_1

    .line 2205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    .line 2210
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "obj":Ljava/lang/Integer;
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getFirstGenreStation(Landroid/content/Context;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v2

    .line 2214
    .local v2, "firstGenreStation":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v2, :cond_3

    .line 2215
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    .end local v2    # "firstGenreStation":Lcom/samsung/android/app/music/common/model/Station;
    .end local v4    # "iter":Ljava/util/Iterator;
    .end local v6    # "ret":I
    :cond_3
    :goto_0
    return v6

    .line 2174
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2175
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    .line 2176
    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    invoke-static {v9, v10, v12}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2178
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 2180
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    .line 2181
    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2182
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    invoke-static {v9, v10, v12}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2183
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNextStationId:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 2221
    :cond_6
    :try_start_1
    const-string v9, "RadioDialView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCurrentStationCursorIndex : My Station id ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") is not recognized and could not be mapped to a station cursor index."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2224
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v12, "station_id"

    .line 2225
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2226
    .local v8, "tempId":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    .line 2227
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2228
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_0

    .line 2231
    .end local v8    # "tempId":Ljava/lang/String;
    :cond_7
    const/4 v6, -0x2

    goto/16 :goto_0

    .line 2233
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    .line 2234
    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2235
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_0

    .line 2237
    :cond_9
    const-string v9, "RadioDialView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCurrentStationCursorIndex : Station id ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") is not recognized and could not be mapped to a station cursor index."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2240
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    const-string/jumbo v12, "station_id"

    .line 2241
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2242
    .restart local v8    # "tempId":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    .line 2243
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2244
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto/16 :goto_0

    .end local v8    # "tempId":Ljava/lang/String;
    :cond_a
    move v6, v10

    .line 2247
    goto/16 :goto_0

    .line 2249
    :catch_0
    move-exception v0

    .line 2250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v10

    .line 2252
    goto/16 :goto_0
.end method

.method public getCursorIndexByStationId(Ljava/lang/String;)I
    .locals 5
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2294
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->hasStation(Ljava/lang/String;)Z

    move-result v0

    .line 2296
    .local v0, "isMyStation":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    .line 2297
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 2298
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_0

    .line 2299
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2300
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 2304
    :cond_0
    :goto_0
    const-string v2, "RadioDialView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStationCursorIndex : station id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isMyStation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    if-eqz v0, :cond_3

    .line 2308
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    .line 2309
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2310
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2322
    :goto_1
    return v2

    .line 2300
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2312
    :cond_2
    const-string v2, "RadioDialView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStationCursorIndex : My Station id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not recognized and could not be mapped to a station cursor index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    const/4 v2, -0x2

    goto :goto_1

    .line 2316
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    .line 2317
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2318
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 2320
    :cond_4
    const-string v2, "RadioDialView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStationCursorIndex : Station id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not recognized and could not be mapped to a station cursor index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getDialPanelVisibility()I
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getLastSelectedCoverArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedCoverArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSelectedStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSelectedTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationCursorIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 2260
    const/4 v0, 0x0

    .line 2262
    .local v0, "isMyStation":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    .line 2263
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 2265
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_0

    .line 2266
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2267
    const/4 v0, 0x1

    .line 2271
    :cond_0
    const-string v2, "RadioDialView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStationCursorIndex : station id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isMyStation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    if-eqz v0, :cond_2

    .line 2275
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    .line 2276
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2277
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToMyStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2289
    :goto_0
    return v2

    .line 2279
    :cond_1
    const-string v2, "RadioDialView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStationCursorIndex : My Station id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not recognized and could not be mapped to a station cursor index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    const/4 v2, -0x2

    goto :goto_0

    .line 2283
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    .line 2284
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2285
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationIdToStationCursorIndexMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2287
    :cond_3
    const-string v2, "RadioDialView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStationCursorIndex : Station id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not recognized and could not be mapped to a station cursor index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public handleSelectorTouchUp()V
    .locals 1

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    if-eqz v0, :cond_0

    .line 1381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleSelectorTouchUp(Z)V

    .line 1383
    :cond_0
    return-void
.end method

.method public isDialDrawCompleted()Z
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialing()Z
    .locals 1

    .prologue
    .line 2394
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    return v0
.end method

.method public ismHoverEnable()Z
    .locals 1

    .prologue
    .line 2406
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHoverEnable:Z

    return v0
.end method

.method public jumpToRadioStation(IZ)V
    .locals 3
    .param p1, "stationCursorIndex"    # I
    .param p2, "startPlayback"    # Z

    .prologue
    .line 2106
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->PENDING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2107
    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPendingPlayRequest:Z

    if-eqz v0, :cond_0

    .line 2108
    const-string v0, "RadioDialView"

    const-string v2, "jumpToRadioStation :  if pending request is existed, this request from player should be removed"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    monitor-exit v1

    .line 2129
    :goto_0
    return-void

    .line 2112
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectRadioStation(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    .line 2116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleSelectorTouchUp()V

    goto :goto_0

    .line 2112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2118
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->collapseGlowIndicator()V

    goto :goto_0
.end method

.method public jumpToSmartStation(ILjava/lang/String;)V
    .locals 6
    .param p1, "stationCursorIndex"    # I
    .param p2, "coverUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2132
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->PENDING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2133
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPendingPlayRequest:Z

    if-eqz v0, :cond_0

    .line 2134
    const-string v0, "RadioDialView"

    const-string v2, "jumpToRadioStation :  if pending request is existed, this request from player should be removed"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    monitor-exit v1

    .line 2146
    :goto_0
    return-void

    .line 2138
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectRadioStation(IZZZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsSelectorTouchDown:Z

    .line 2142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleSelectorTouchUp()V

    goto :goto_0

    .line 2138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->collapseGlowIndicator()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 541
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 542
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAttached:Z

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mBuzzer:Landroid/os/Vibrator;

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 556
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 557
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAttached:Z

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevCoverArtAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCoverArtThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevCoverArtAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevCoverArtAction:Ljava/lang/Runnable;

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevWallPaperAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mWallPaperThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevWallPaperAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevWallPaperAction:Ljava/lang/Runnable;

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mHideDialThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrevHideDialAction:Ljava/lang/Runnable;

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStartStationPlaybackHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 537
    return-void
.end method

.method public onGenreVisibilityToggleCanceled()V
    .locals 1

    .prologue
    .line 2343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationInTransitionId:Ljava/lang/String;

    .line 2345
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 9
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 503
    const-string v6, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 505
    .local v0, "albumId":J
    const-string v6, "RadioDialView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onMetadataChanged] albumId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 507
    const-string v6, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 508
    .local v4, "cpAttrs":J
    long-to-int v6, v4

    invoke-static {v6}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 510
    .local v2, "artworkUri":Landroid/net/Uri;
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 511
    .local v3, "fullArtworkUri":Landroid/net/Uri;
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastRequestedUri:Landroid/net/Uri;

    .line 512
    const-string v6, "RadioDialView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onMetadataChanged] artworkUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , albumId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const v6, 0x7f0d0061

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v6

    .line 516
    invoke-virtual {v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mImageHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    .line 521
    .end local v2    # "artworkUri":Landroid/net/Uri;
    .end local v3    # "fullArtworkUri":Landroid/net/Uri;
    .end local v4    # "cpAttrs":J
    :goto_0
    return-void

    .line 518
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastRequestedUri:Landroid/net/Uri;

    .line 519
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mImageHandler:Landroid/os/Handler;

    const/16 v7, 0xc9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 526
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public prepareForGenreVisibilityToggle()V
    .locals 0

    .prologue
    .line 2355
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->cacheCurrentlyPlayingStationId()V

    .line 2356
    return-void
.end method

.method public putHash(Ljava/lang/String;)V
    .locals 2
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mInputTracks:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->hashCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->hashCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->hashCount:I

    .line 2446
    return-void
.end method

.method public resetCursor()V
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    .line 1090
    return-void
.end method

.method public setCursor(ILandroid/database/Cursor;Z)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isDisplaylist"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1026
    if-nez p2, :cond_1

    .line 1027
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->resetCursor()V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1032
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    const v4, 0x7f020170

    .line 1033
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 1035
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1036
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mLastSelectedCoverArtUrl:Ljava/lang/String;

    .line 1037
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialBorder:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->collapseGlowIndicator()V

    .line 1040
    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDisplayPlaylist:Z

    .line 1041
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCursor:Landroid/database/Cursor;

    .line 1042
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mStationsCount:I

    .line 1044
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mAttached:Z

    if-nez v3, :cond_3

    .line 1045
    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    .line 1046
    const-string v3, "RadioDialView"

    const-string/jumbo v4, "setCursor : Radio Dial is not attached yet. onFragmentDrawn() will be drawn"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    :cond_3
    const v3, 0x7f120026

    if-ne p1, v3, :cond_5

    .line 1052
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    if-gtz v3, :cond_0

    .line 1053
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mNumBootStrapTasks:I

    if-nez v3, :cond_4

    .line 1054
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initTurnTip()V

    .line 1057
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initStations()V

    .line 1058
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initSundialSegments()V

    .line 1059
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->initToCurrentlyPlaying()V

    goto :goto_0

    .line 1061
    :cond_5
    const v3, 0x7f120027

    if-ne p1, v3, :cond_0

    .line 1062
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1063
    const-string v3, "RadioDialView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCursor : mr_all_stations_track_loader, mCurrentStationCursorIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    .line 1068
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v4

    .line 1069
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v5

    .line 1068
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    .line 1071
    .local v2, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v2, :cond_7

    const-string v3, "1"

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "2"

    .line 1072
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1073
    :cond_6
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->jumpToRadioStation(IZ)V

    goto/16 :goto_0

    .line 1077
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mContext:Landroid/content/Context;

    .line 1078
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 1079
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_8

    .line 1080
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->jumpToRadioStation(IZ)V

    goto/16 :goto_0

    .line 1082
    :cond_8
    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mCurrentStationCursorIndex:I

    invoke-virtual {p0, v3, v7}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->jumpToRadioStation(IZ)V

    goto/16 :goto_0
.end method

.method public setDialCtrlAnim(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2383
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsDialCtrlsAnim:Z

    .line 2384
    return-void
.end method

.method public setDialPanelVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1019
    return-void
.end method

.method public setDialViewFromSpinner(I)V
    .locals 6
    .param p1, "stationCursorIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 2150
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->showToastForDisruption()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2157
    :cond_0
    :goto_0
    return-void

    .line 2154
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->selectRadioStation(IZZZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->handleSelectorTouchUp(Z)V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 2511
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mIsEnable:Z

    .line 2512
    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0
    .param p1, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 498
    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 499
    return-void
.end method

.method public setMobileKeyboardCovered(I)V
    .locals 0
    .param p1, "mobileKeyboardCovered"    # I

    .prologue
    .line 2410
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mMobileKeyboardCovered:I

    .line 2411
    return-void
.end method

.method public setPrefetch(Z)V
    .locals 0
    .param p1, "prefetching"    # Z

    .prologue
    .line 2331
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mPrefetching:Z

    .line 2332
    return-void
.end method

.method public starDialPaneltAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1023
    return-void
.end method

.method public startDialAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->mDialPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2380
    return-void
.end method
