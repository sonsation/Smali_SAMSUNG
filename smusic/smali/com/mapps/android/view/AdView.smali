.class public Lcom/mapps/android/view/AdView;
.super Landroid/widget/FrameLayout;
.source "AdView.java"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/AdView$CameraAnim;,
        Lcom/mapps/android/view/AdView$ICONSTYLE;,
        Lcom/mapps/android/view/AdView$OnSSPAdmListener;,
        Lcom/mapps/android/view/AdView$SDKView;,
        Lcom/mapps/android/view/AdView$SDKWebView;,
        Lcom/mapps/android/view/AdView$SSPAdmState;
    }
.end annotation


# static fields
.field private static final ADBANNERICONSTYLE:I = 0x0

.field private static CURRENTSSP:Ljava/lang/String; = null

.field private static final ICONLINK:Ljava/lang/String; = "http://advimg.ad-mapps.com/ad_images/link_mezzo_home.html"

.field public static SAVEREQUESTKEY:Ljava/lang/String;


# instance fields
.field private CANONICAL_PATH:Ljava/lang/String;

.field FailedToReceiveHandler:Landroid/os/Handler;

.field private final IO_BUFFER_SIZE:I

.field private final MEZZO_DIRECTORY:Ljava/lang/String;

.field private final MEZZO_IMAGE:Ljava/lang/String;

.field private SendMsghandler:Landroid/os/Handler;

.field private URL_TAG:Ljava/lang/String;

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field private adInterval:Z

.field private adLinkListener:Lcom/mapps/android/listner/AdLinkListener;

.field private adbean:Lcom/mezzo/common/network/data/DataNTBanner;

.field private bAnimStart:Z

.field public bAnimate:Z

.field private bExitLogo:Z

.field private bPtLockeMode:Z

.field private bannerConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field bitmap:Landroid/graphics/Bitmap;

.field private codeType:Ljava/lang/String;

.field private commonHandler:Landroid/os/Handler;

.field private currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

.field private default_iv:Landroid/widget/ImageView;

.field private image1:Landroid/widget/RelativeLayout;

.field private image2:Landroid/widget/RelativeLayout;

.field imageLoadCompleteHandler:Landroid/os/Handler;

.field imageLoadFailHandler:Landroid/os/Handler;

.field imageTypeBgColorHandler:Landroid/os/Handler;

.field private initColor:Ljava/lang/String;

.field private isButtonAnim:Z

.field private isErrorState:Z

.field private isFirst:Z

.field private isFirstImage:Z

.field private isFirstShow:Z

.field private isFirstShow2:Z

.field private isLandingGo:Z

.field private mAdListner:Lcom/mapps/android/listner/AdListner;

.field private mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

.field private mBannerDrawable:Landroid/graphics/drawable/Drawable;

.field private mBaseDensity:I

.field private mBaseHeight:I

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsGPSUse:Z

.field private mLocationType:I

.field private mRotationTime:I

.field private mRunable:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSdkDrawable:Landroid/graphics/drawable/Drawable;

.field private mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

.field private mSizeHeight:I

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field private m_displayHeight:I

.field private m_displayWith:I

.field private media_type:I

.field private mfinNetWork:Z

.field private mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

.field private mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

.field private mreload_count:I

.field private mreload_time:J

.field public nBackStrech:I

.field private nFileIdx:I

.field private nt:Lcom/mezzo/common/network/Nt;

.field private outLinkTag:Ljava/lang/String;

.field private parcel:Lcom/mapps/android/share/ParcelHelper;

.field private postHandler:Landroid/os/Handler;

.field private post_rehandler:Landroid/os/Handler;

.field private progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

.field private reload:Z

.field private rotationImgBitmap:Landroid/graphics/Bitmap;

.field private rotationSuccessHandler:Landroid/os/Handler;

.field private rotationSuccessSSLHandler:Landroid/os/Handler;

.field private sdkIcon:Landroid/graphics/drawable/Drawable;

.field private sspConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field private updateResults:Ljava/lang/Runnable;

.field private useOutClickAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/view/AdView;->SAVEREQUESTKEY:Ljava/lang/String;

    .line 186
    const-string v0, "n"

    sput-object v0, Lcom/mapps/android/view/AdView;->CURRENTSSP:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backstrech"    # I
    .param p3, "locationType"    # I
    .param p4, "media_type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    .line 101
    iput v2, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 103
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    .line 107
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->mDebug:Z

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    .line 109
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->reload:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    .line 111
    iput v4, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 113
    iput v2, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    .line 114
    iput v2, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    .line 125
    iput v2, p0, Lcom/mapps/android/view/AdView;->media_type:I

    .line 127
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 128
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    .line 129
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    .line 132
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 134
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    .line 135
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    .line 136
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 137
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    .line 139
    const/16 v0, 0x2710

    iput v0, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    .line 140
    const-string v0, "/mezzo/"

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    .line 141
    const-string v0, "image"

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->MEZZO_IMAGE:Ljava/lang/String;

    .line 142
    const/16 v0, 0x1000

    iput v0, p0, Lcom/mapps/android/view/AdView;->IO_BUFFER_SIZE:I

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    .line 144
    iput v2, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    .line 146
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    .line 147
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    .line 149
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->sdkIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->mBannerDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isButtonAnim:Z

    .line 154
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 156
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    .line 157
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    .line 159
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->initColor:Ljava/lang/String;

    .line 161
    const/16 v0, 0x64

    iput v0, p0, Lcom/mapps/android/view/AdView;->mSizeHeight:I

    .line 162
    const/16 v0, 0xa0

    iput v0, p0, Lcom/mapps/android/view/AdView;->mBaseDensity:I

    .line 165
    const/16 v0, 0x32

    iput v0, p0, Lcom/mapps/android/view/AdView;->mBaseHeight:I

    .line 166
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    .line 167
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    .line 168
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/mapps/android/view/AdView;->mreload_time:J

    .line 172
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    .line 175
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    .line 184
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    .line 196
    new-instance v0, Lcom/mapps/android/view/AdView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$1;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->FailedToReceiveHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Lcom/mapps/android/view/AdView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$2;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->commonHandler:Landroid/os/Handler;

    .line 426
    new-instance v0, Lcom/mapps/android/view/AdView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$3;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 441
    new-instance v0, Lcom/mapps/android/view/AdView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$4;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->sspConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 547
    new-instance v0, Lcom/mapps/android/view/AdView$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$5;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->bannerConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 651
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->bAnimate:Z

    .line 945
    new-instance v0, Lcom/mapps/android/view/AdView$6;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$6;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->updateResults:Ljava/lang/Runnable;

    .line 969
    new-instance v0, Lcom/mapps/android/view/AdView$7;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$7;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    .line 1002
    new-instance v0, Lcom/mapps/android/view/AdView$8;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$8;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    .line 1109
    new-instance v0, Lcom/mapps/android/view/AdView$9;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$9;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->imageTypeBgColorHandler:Landroid/os/Handler;

    .line 1123
    new-instance v0, Lcom/mapps/android/view/AdView$10;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$10;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    .line 1137
    new-instance v0, Lcom/mapps/android/view/AdView$11;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$11;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->imageLoadCompleteHandler:Landroid/os/Handler;

    .line 1453
    iput v2, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    .line 1537
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    .line 2279
    new-instance v0, Lcom/mapps/android/view/AdView$12;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$12;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    .line 2303
    new-instance v0, Lcom/mapps/android/view/AdView$13;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$13;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mRunable:Ljava/lang/Runnable;

    .line 2393
    new-instance v0, Lcom/mapps/android/view/AdView$14;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$14;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->postHandler:Landroid/os/Handler;

    .line 2580
    iput-object v3, p0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    .line 2613
    new-instance v0, Lcom/mapps/android/view/AdView$15;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$15;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->post_rehandler:Landroid/os/Handler;

    .line 267
    iput p4, p0, Lcom/mapps/android/view/AdView;->media_type:I

    .line 268
    iput p2, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 269
    iput p3, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 270
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->common(Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 274
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    .line 101
    iput v5, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 103
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    .line 106
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    .line 107
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->mDebug:Z

    .line 108
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    .line 109
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->reload:Z

    .line 110
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    .line 111
    iput v6, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 113
    iput v5, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    .line 114
    iput v5, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    .line 118
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    .line 119
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    .line 120
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    .line 121
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    .line 122
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    .line 123
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    .line 124
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    .line 125
    iput v5, p0, Lcom/mapps/android/view/AdView;->media_type:I

    .line 127
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 128
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    .line 129
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    .line 132
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 134
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    .line 135
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    .line 136
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 137
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    .line 139
    const/16 v2, 0x2710

    iput v2, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    .line 140
    const-string v2, "/mezzo/"

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    .line 141
    const-string v2, "image"

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->MEZZO_IMAGE:Ljava/lang/String;

    .line 142
    const/16 v2, 0x1000

    iput v2, p0, Lcom/mapps/android/view/AdView;->IO_BUFFER_SIZE:I

    .line 143
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    .line 144
    iput v5, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    .line 146
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    .line 147
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    .line 149
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->sdkIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mBannerDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->isButtonAnim:Z

    .line 154
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 156
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    .line 157
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    .line 159
    const-string v2, "#00000000"

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->initColor:Ljava/lang/String;

    .line 161
    const/16 v2, 0x64

    iput v2, p0, Lcom/mapps/android/view/AdView;->mSizeHeight:I

    .line 162
    const/16 v2, 0xa0

    iput v2, p0, Lcom/mapps/android/view/AdView;->mBaseDensity:I

    .line 165
    const/16 v2, 0x32

    iput v2, p0, Lcom/mapps/android/view/AdView;->mBaseHeight:I

    .line 166
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    .line 167
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    .line 168
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/mapps/android/view/AdView;->mreload_time:J

    .line 172
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    .line 175
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    .line 177
    const-string v2, ""

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    .line 184
    iput-boolean v5, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    .line 196
    new-instance v2, Lcom/mapps/android/view/AdView$1;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$1;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->FailedToReceiveHandler:Landroid/os/Handler;

    .line 216
    new-instance v2, Lcom/mapps/android/view/AdView$2;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$2;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->commonHandler:Landroid/os/Handler;

    .line 426
    new-instance v2, Lcom/mapps/android/view/AdView$3;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$3;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 441
    new-instance v2, Lcom/mapps/android/view/AdView$4;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$4;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->sspConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 547
    new-instance v2, Lcom/mapps/android/view/AdView$5;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$5;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->bannerConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 651
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->bAnimate:Z

    .line 945
    new-instance v2, Lcom/mapps/android/view/AdView$6;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$6;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->updateResults:Ljava/lang/Runnable;

    .line 969
    new-instance v2, Lcom/mapps/android/view/AdView$7;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$7;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    .line 1002
    new-instance v2, Lcom/mapps/android/view/AdView$8;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$8;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    .line 1109
    new-instance v2, Lcom/mapps/android/view/AdView$9;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$9;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->imageTypeBgColorHandler:Landroid/os/Handler;

    .line 1123
    new-instance v2, Lcom/mapps/android/view/AdView$10;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$10;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    .line 1137
    new-instance v2, Lcom/mapps/android/view/AdView$11;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$11;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->imageLoadCompleteHandler:Landroid/os/Handler;

    .line 1453
    iput v5, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    .line 1537
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    .line 2279
    new-instance v2, Lcom/mapps/android/view/AdView$12;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$12;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    .line 2303
    new-instance v2, Lcom/mapps/android/view/AdView$13;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$13;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->mRunable:Ljava/lang/Runnable;

    .line 2393
    new-instance v2, Lcom/mapps/android/view/AdView$14;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$14;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->postHandler:Landroid/os/Handler;

    .line 2580
    iput-object v4, p0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    .line 2613
    new-instance v2, Lcom/mapps/android/view/AdView$15;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdView$15;-><init>(Lcom/mapps/android/view/AdView;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->post_rehandler:Landroid/os/Handler;

    .line 275
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->common(Landroid/content/Context;)V

    .line 276
    new-instance v2, Lcom/mapps/android/share/ParcelHelper;

    const-string v3, ""

    iget-object v4, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/mapps/android/share/ParcelHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 277
    if-eqz p2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v3, "com_mapps_android_view_AdView"

    invoke-virtual {v2, v3}, Lcom/mapps/android/share/ParcelHelper;->getStyleableArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 279
    .local v0, "styleable":[I
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 280
    .local v1, "ta":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v3, "com_mapps_android_view_AdView"

    const-string v4, "backgroundStretch"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 281
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v3, "com_mapps_android_view_AdView"

    const-string v4, "locationType"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    .line 282
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v3, "com_mapps_android_view_AdView"

    const-string/jumbo v4, "publisherCode"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v3, "com_mapps_android_view_AdView"

    const-string v4, "mediaCode"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v3, "com_mapps_android_view_AdView"

    const-string/jumbo v4, "sectionCode"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    .line 285
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v3, "com_mapps_android_view_AdView"

    const-string v4, "mediaType"

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/mapps/android/view/AdView;->media_type:I

    .line 286
    const-string v2, "html"

    invoke-direct {p0, v2}, Lcom/mapps/android/view/AdView;->init(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    .end local v0    # "styleable":[I
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v2, "attrs is null"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ImgDelAfterDateCheck(Ljava/lang/String;)Z
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 1549
    const-string v3, "[.]"

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1550
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const-string v4, "Search_of_endtime"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1551
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1552
    .local v1, "savedtime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1553
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1554
    const/4 v2, 0x1

    .line 1557
    :cond_0
    return v2
.end method

.method private RotationAnimationWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2234
    iget-boolean v2, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    if-nez v2, :cond_4

    .line 2235
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v2, :cond_2

    .line 2236
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2237
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2239
    :cond_0
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2240
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 2241
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getHtml()Ljava/lang/String;

    move-result-object v1

    .line 2242
    .local v1, "ptype":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2243
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    .line 2248
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v1    # "ptype":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    .line 2255
    :cond_2
    :goto_1
    return-void

    .line 2245
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .restart local v1    # "ptype":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_path()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2252
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v1    # "ptype":Ljava/lang/String;
    :cond_4
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->isFirstShow2:Z

    .line 2253
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    goto :goto_1
.end method

.method private RotationImage(I)V
    .locals 9
    .param p1, "nIndex"    # I

    .prologue
    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 1388
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    if-eqz v0, :cond_6

    .line 1389
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1390
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v7

    check-cast v7, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 1391
    .local v7, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTBanner;->getAd_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTBanner;->getAd_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1392
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v0

    if-nez v0, :cond_8

    .line 1393
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-nez v0, :cond_3

    .line 1401
    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataBannerAD;->getHtml()Ljava/lang/String;

    move-result-object v8

    .line 1402
    .local v8, "ptype":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1403
    new-instance v0, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataBannerAD;->getHtml()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataBannerAD;->getBg_color()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1407
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1410
    .end local v8    # "ptype":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->chargeableBannerType(Lcom/mezzo/common/network/data/DataNTBanner;)V

    .line 1411
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_4

    .line 1412
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1413
    :cond_4
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_5

    .line 1414
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1415
    :cond_5
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->RotationAnimationWebView()V

    .line 1416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 1417
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1436
    .end local v7    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    :cond_6
    :goto_1
    return-void

    .line 1405
    .restart local v7    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .restart local v8    # "ptype":Ljava/lang/String;
    :cond_7
    new-instance v0, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_path()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataBannerAD;->getBg_color()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    goto :goto_0

    .line 1422
    .end local v8    # "ptype":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->chargeableBannerType(Lcom/mezzo/common/network/data/DataNTBanner;)V

    .line 1423
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v0, :cond_9

    .line 1424
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1425
    :cond_9
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_a

    .line 1426
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1427
    :cond_a
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_b

    .line 1428
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1432
    :cond_b
    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/mapps/android/view/AdView;->imageLoadConnectionThread(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private RotationSSPImage(ILcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 9
    .param p1, "nIndex"    # I
    .param p2, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;
    .param p3, "img_name"    # Ljava/lang/String;

    .prologue
    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    .line 1231
    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1232
    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1233
    .local v7, "codetype":I
    const/4 v0, 0x1

    if-ne v0, v7, :cond_4

    .line 1234
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1240
    :cond_2
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v0

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/mapps/android/view/AdView;->imageLoadSSLConnectionThread(Ljava/lang/String;IILcom/mezzo/common/network/data/DataNTSSP;)V

    .line 1343
    .end local v7    # "codetype":I
    :cond_3
    :goto_0
    return-void

    .line 1242
    .restart local v7    # "codetype":I
    :cond_4
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-eqz v0, :cond_5

    .line 1243
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setVisibility(I)V

    .line 1244
    :cond_5
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_6

    .line 1245
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1246
    :cond_6
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_7

    .line 1247
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1248
    :cond_7
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    if-nez v0, :cond_c

    .line 1249
    const/4 v0, 0x2

    if-ne v0, v7, :cond_a

    .line 1250
    new-instance v0, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getAdm()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getBg_color()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mapps/android/view/AdView$32;

    invoke-direct {v6, p0, p2}, Lcom/mapps/android/view/AdView$32;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1288
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1332
    :goto_2
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_8

    .line 1333
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1334
    :cond_8
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_9

    .line 1335
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKView;->setVisibility(I)V

    .line 1337
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 1338
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1339
    .local v8, "msg":Landroid/os/Message;
    iput-object p2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1340
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1270
    .end local v8    # "msg":Landroid/os/Message;
    :cond_a
    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1271
    new-instance v0, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getBg_color()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mapps/android/view/AdView$33;

    invoke-direct {v6, p0, p2}, Lcom/mapps/android/view/AdView$33;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    goto :goto_1

    .line 1285
    :cond_b
    new-instance v0, Lcom/mapps/android/view/AdView$SDKWebView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getBg_color()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    goto :goto_1

    .line 1291
    :cond_c
    const/4 v0, 0x2

    if-ne v0, v7, :cond_d

    .line 1292
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Lcom/mapps/android/view/AdView$34;

    invoke-direct {v1, p0, p2}, Lcom/mapps/android/view/AdView$34;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1305
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getBg_color()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->changBackgroundColor(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getAdm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1308
    :cond_d
    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1309
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    new-instance v1, Lcom/mapps/android/view/AdView$35;

    invoke-direct {v1, p0, p2}, Lcom/mapps/android/view/AdView$35;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1322
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getBg_color()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->changBackgroundColor(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1326
    :cond_e
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->setOnSSPAdmListener(Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V

    .line 1327
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getBg_color()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdView$SDKWebView;->changBackgroundColor(Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/view/AdView$SDKWebView;->changeURL(Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method private SendImpsToServer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1498
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1499
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 1500
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendapi --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getImpression_api()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 1501
    new-instance v1, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getImpression_api()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1502
    .local v1, "request":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v2, Lcom/mapps/android/view/AdView$38;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/AdView$38;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataBannerAD;)V

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 1519
    new-instance v2, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    .line 1520
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 1521
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1523
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v1    # "request":Lcom/mezzo/common/network/request/RequestSimple;
    :cond_0
    return-void
.end method

.method private SendTrackkingToServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1473
    move-object v0, p1

    .line 1474
    .local v0, "strParam":Ljava/lang/String;
    invoke-static {v0}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 1475
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1476
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$37;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/AdView$37;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1493
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1495
    :cond_0
    return-void
.end method

.method private SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "enddatetime"    # Ljava/lang/String;

    .prologue
    .line 1540
    const-string v3, "[.]"

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1541
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1542
    .local v1, "endtime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const-string v4, "Search_of_endtime"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1543
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1544
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1546
    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/listner/AdListner;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    return v0
.end method

.method static synthetic access$10(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .prologue
    .line 1386
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->RotationImage(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1497
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->SendImpsToServer()V

    return-void
.end method

.method static synthetic access$12(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->imageTypeBgColor(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    return-void
.end method

.method static synthetic access$14(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 1453
    iget v0, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    return v0
.end method

.method static synthetic access$15(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .prologue
    .line 1453
    iput p1, p0, Lcom/mapps/android/view/AdView;->mreload_count:I

    return-void
.end method

.method static synthetic access$16(Lcom/mapps/android/view/AdView;)J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/mapps/android/view/AdView;->mreload_time:J

    return-wide v0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->rotationImgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/mapps/android/view/AdView;->mSizeHeight:I

    return v0
.end method

.method static synthetic access$19(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    return v0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    return v0
.end method

.method static synthetic access$21(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$25(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    return-void
.end method

.method static synthetic access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$28(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$29(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    return-void
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mDebug:Z

    return v0
.end method

.method static synthetic access$30(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/mapps/android/view/AdView;FF)V
    .locals 0

    .prologue
    .line 2207
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/view/AdView;->applyRotation(FF)V

    return-void
.end method

.method static synthetic access$32(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$33(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    return v0
.end method

.method static synthetic access$34(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$35(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    return v0
.end method

.method static synthetic access$36(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    return-void
.end method

.method static synthetic access$37(Lcom/mapps/android/view/AdView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$38(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    return-void
.end method

.method static synthetic access$39(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    return v0
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->requestDetailSSP(Lcom/mezzo/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$40(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    return-void
.end method

.method static synthetic access$41(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKWebView;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mSdkWebView:Lcom/mapps/android/view/AdView$SDKWebView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 2517
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->getSDKHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$43(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->initColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$44(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    return-void
.end method

.method static synthetic access$45(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$46(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    return v0
.end method

.method static synthetic access$47(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isErrorState:Z

    return v0
.end method

.method static synthetic access$48(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->isButtonAnim:Z

    return-void
.end method

.method static synthetic access$49(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    return v0
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    return-object v0
.end method

.method static synthetic access$50()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/mapps/android/view/AdView;->CURRENTSSP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$51(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/mapps/android/view/AdView;->mLocationType:I

    return v0
.end method

.method static synthetic access$52(Lcom/mapps/android/view/AdView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->rotationImgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$53(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 2502
    invoke-static {p0}, Lcom/mapps/android/view/AdView;->recycleBitmap(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$54(Lcom/mapps/android/view/AdView;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->getClickTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$55(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTSSP;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    return-object v0
.end method

.method static synthetic access$56(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->requestSSPClick(Lcom/mezzo/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$57(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isButtonAnim:Z

    return v0
.end method

.method static synthetic access$58(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    return-void
.end method

.method static synthetic access$59(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/mapps/android/view/AdView;I)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    return-void
.end method

.method static synthetic access$60(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->mDebug:Z

    return-void
.end method

.method static synthetic access$61(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->commonHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$62(Lcom/mapps/android/view/AdView;)Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    return v0
.end method

.method static synthetic access$63(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mapps/android/view/AdView;->media_type:I

    return v0
.end method

.method static synthetic access$64(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$66(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$67(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$68(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    return-void
.end method

.method static synthetic access$69(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->requestNotSSp()V

    return-void
.end method

.method static synthetic access$70(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$71(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$72(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->requestHTML()V

    return-void
.end method

.method static synthetic access$73(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataBannerAD;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->requestImageFileSave(Lcom/mezzo/common/network/data/DataBannerAD;)V

    return-void
.end method

.method static synthetic access$74(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    sput-object p0, Lcom/mapps/android/view/AdView;->CURRENTSSP:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$75(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/Nt;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    return-void
.end method

.method static synthetic access$76(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/Nt;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    return-object v0
.end method

.method static synthetic access$77(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    return-object v0
.end method

.method static synthetic access$78(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/request/OnConnectionListener;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->sspConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    return-object v0
.end method

.method static synthetic access$79(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/mapps/android/view/AdView;->requestUseSSp()V

    return-void
.end method

.method static synthetic access$80(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$81(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$82(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$83(Lcom/mapps/android/view/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->codeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$84(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/request/OnConnectionListener;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->bannerConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    return-object v0
.end method

.method static synthetic access$85(Lcom/mapps/android/view/AdView;ILcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1229
    invoke-direct {p0, p1, p2, p3}, Lcom/mapps/android/view/AdView;->RotationSSPImage(ILcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$86(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$87(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->rotationSuccessSSLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$88(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->sdkIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$89(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->postHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mapps/android/view/AdView;)I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    return v0
.end method

.method static synthetic access$90(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mBannerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private applyRotation(FF)V
    .locals 7
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 2208
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 2209
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 2211
    .local v1, "centerY":F
    new-instance v2, Lcom/mapps/android/view/Flip3dAnimation;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/mapps/android/view/Flip3dAnimation;-><init>(FFFF)V

    .line 2213
    .local v2, "rotation":Lcom/mapps/android/view/Flip3dAnimation;
    iget-boolean v3, p0, Lcom/mapps/android/view/AdView;->isFirstShow:Z

    if-nez v3, :cond_0

    .line 2214
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Lcom/mapps/android/view/Flip3dAnimation;->setDuration(J)V

    .line 2218
    :goto_0
    invoke-virtual {v2, v6}, Lcom/mapps/android/view/Flip3dAnimation;->setFillAfter(Z)V

    .line 2219
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mapps/android/view/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2221
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->mAnimlistener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Lcom/mapps/android/view/Flip3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2223
    iget-boolean v3, p0, Lcom/mapps/android/view/AdView;->isFirstImage:Z

    if-eqz v3, :cond_1

    .line 2224
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2229
    :goto_1
    iput-boolean v6, p0, Lcom/mapps/android/view/AdView;->bAnimStart:Z

    .line 2231
    return-void

    .line 2216
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/mapps/android/view/Flip3dAnimation;->setDuration(J)V

    goto :goto_0

    .line 2226
    :cond_1
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private chargeableBannerType(Lcom/mezzo/common/network/data/DataNTBanner;)V
    .locals 3
    .param p1, "bean"    # Lcom/mezzo/common/network/data/DataNTBanner;

    .prologue
    .line 953
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTBanner;->getAd_type()Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "btype":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 955
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/mapps/android/listner/AdListner;->onChargeableBannerType(Landroid/view/View;Z)V

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/mapps/android/listner/AdListner;->onChargeableBannerType(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private common(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    .line 229
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$16;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$16;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;)V

    .line 259
    const-string v2, "InfoThread"

    .line 229
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2489
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2490
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2491
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2493
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2497
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 2499
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2494
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 905
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 908
    return-void

    .line 906
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private getClickTag(I)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1456
    const-string v1, ""

    .line 1457
    .local v1, "strParam":Ljava/lang/String;
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    if-eqz v2, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 1460
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getClick_api()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getClick_api()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1461
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getClick_api()Ljava/lang/String;

    move-result-object v1

    .line 1468
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    :cond_0
    :goto_0
    return-object v1

    .line 1463
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    :cond_1
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getClick_tracking_api()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mapps/android/view/AdView;->SendTrackkingToServer(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getLanding_url()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSDKHeight()I
    .locals 6

    .prologue
    .line 2518
    const/4 v2, 0x0

    .line 2519
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2520
    .local v0, "density":I
    int-to-float v4, v0

    iget v5, p0, Lcom/mapps/android/view/AdView;->mBaseDensity:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 2521
    .local v3, "rate":F
    iget v4, p0, Lcom/mapps/android/view/AdView;->mBaseHeight:I

    int-to-float v4, v4

    mul-float v1, v4, v3

    .line 2522
    .local v1, "fcal":F
    float-to-int v2, v1

    .line 2523
    return v2
.end method

.method private imageLoadConnectionThread(Ljava/lang/String;II)V
    .locals 4
    .param p1, "stradfile"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "index"    # I

    .prologue
    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/mezzo/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "FileName":Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mapps/android/view/AdView$30;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/mapps/android/view/AdView$30;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;II)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1058
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private imageLoadSSLConnectionThread(Ljava/lang/String;IILcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 8
    .param p1, "stradfile"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "index"    # I
    .param p4, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;

    .prologue
    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/mezzo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "FileName":Ljava/lang/String;
    :try_start_0
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/view/AdView$31;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/view/AdView$31;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;IILcom/mezzo/common/network/data/DataNTSSP;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1102
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v6

    .line 1105
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private imageTypeBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, p1}, Lcom/mapps/android/view/AdView$SDKView;->setBackgroundColor(I)V

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0, p1}, Lcom/mapps/android/view/AdView$SDKView;->setBackgroundColor(I)V

    .line 1451
    :cond_1
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 1
    .param p1, "codeType"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->codeType:Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->GetDisplayInfo()V

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mapps/android/view/AdView;->Initalize(ZLjava/lang/String;)V

    .line 298
    return-void
.end method

.method private onFailedToReceive(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 210
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 211
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 212
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->FailedToReceiveHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method private static recycleBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 2503
    if-eqz p0, :cond_1

    .line 2504
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2505
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 2506
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 2507
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2508
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2509
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2511
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2515
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private requestDetailSSP(Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 3
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 411
    .local v0, "codetype":I
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/data/DataNTBanner;->setRotatetime(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 413
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdView;->requestSSPImageFileSave(Lcom/mezzo/common/network/data/DataNTSSP;)V

    .line 420
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    .line 421
    const-string/jumbo v1, "y"

    sput-object v1, Lcom/mapps/android/view/AdView;->CURRENTSSP:Ljava/lang/String;

    .line 422
    return-void

    .line 417
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/mapps/android/view/AdView;->endSSPOperator(Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestHTML()V
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$20;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$20;-><init>(Lcom/mapps/android/view/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method

.method private requestImageFileSave(Lcom/mezzo/common/network/data/DataBannerAD;)V
    .locals 2
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataBannerAD;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$18;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$18;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataBannerAD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 356
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 359
    :cond_0
    return-void
.end method

.method private requestNotSSp()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lcom/mapps/android/view/AdView$21;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$21;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 406
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    return-void
.end method

.method private requestSSPClick(Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 7
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;

    .prologue
    const/4 v6, 0x0

    .line 1346
    if-eqz p1, :cond_0

    .line 1347
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1348
    sget-object v3, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->YES:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getChk_ssp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1349
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1350
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "i_request_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    .local v1, "request_key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAVEREQUESTKEY -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/mapps/android/view/AdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request_key -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 1353
    sget-object v3, Lcom/mapps/android/view/AdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendapi -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 1355
    new-instance v3, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, v5, v6, v6}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v3, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    .line 1356
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v4, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 1357
    new-instance v0, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1358
    .local v0, "imp":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v3, Lcom/mapps/android/view/AdView$36;

    invoke-direct {v3, p0, p1, v1}, Lcom/mapps/android/view/AdView$36;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 1377
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1384
    .end local v0    # "imp":Lcom/mezzo/common/network/request/RequestSimple;
    .end local v1    # "request_key":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendapi -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : \uc774\ubbf8 \ubcf4\ub0c8\uc74c \uc548\ubcf4\ub0c4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestSSPImageFileSave(Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 2
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 363
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$19;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$19;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 376
    :cond_0
    return-void
.end method

.method private requestUseSSp()V
    .locals 3

    .prologue
    .line 474
    new-instance v0, Lcom/mapps/android/view/AdView$22;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$22;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 486
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$23;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/AdView$23;-><init>(Lcom/mapps/android/view/AdView;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 499
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 500
    return-void
.end method


# virtual methods
.method public EndOperator()V
    .locals 3

    .prologue
    .line 912
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getError_code()Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "errorCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 935
    .end local v0    # "errorCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 918
    .restart local v0    # "errorCode":Ljava/lang/String;
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 919
    const/16 v1, -0x12c

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 929
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 920
    :cond_3
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 921
    const/16 v1, -0x190

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_1

    .line 922
    :cond_4
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 923
    const/16 v1, -0x1f4

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_1

    .line 924
    :cond_5
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 925
    const/16 v1, -0x258

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_1

    .line 926
    :cond_6
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 927
    const/16 v1, -0x2bc

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    goto :goto_1
.end method

.method public GetDisplayInfo()V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 303
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    .line 304
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    .line 305
    return-void
.end method

.method public GetPresentImageStatus()I
    .locals 1

    .prologue
    .line 1561
    iget v0, p0, Lcom/mapps/android/view/AdView;->nFileIdx:I

    return v0
.end method

.method public ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 26
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "isCurrentSSP"    # Z

    .prologue
    .line 821
    if-nez p3, :cond_1

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v22

    .line 824
    .local v22, "ptype":I
    if-nez v22, :cond_1

    .line 900
    .end local v22    # "ptype":I
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 834
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 835
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/mezzo/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "image"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 836
    .local v11, "dir":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 839
    .local v16, "filelist":[Ljava/io/File;
    if-eqz v16, :cond_2

    .line 840
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 854
    .end local v18    # "i":I
    :cond_2
    :try_start_0
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 855
    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 856
    .local v8, "connection":Ljava/net/URLConnection;
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/mapps/android/share/ShareUtil;->getDeviceHeader()Ljava/lang/String;

    move-result-object v17

    .line 857
    .local v17, "header":Ljava/lang/String;
    const-string v24, "User-Agent"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/16 v24, 0xfa0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 859
    const/16 v24, 0xbb8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 860
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 861
    .local v20, "isText":Ljava/io/InputStream;
    new-instance v19, Ljava/io/BufferedInputStream;

    const/16 v24, 0x1000

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 863
    .local v19, "in":Ljava/io/BufferedInputStream;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 864
    .local v10, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v21, Ljava/io/BufferedOutputStream;

    const/16 v24, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 866
    .local v21, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/AdView;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 867
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->flush()V

    .line 869
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 871
    .local v9, "data":[B
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    .local v6, "appdir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 874
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 876
    .local v5, "adFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v24

    if-nez v24, :cond_3

    .line 877
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 879
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 880
    .local v15, "fileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v15, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 881
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v4

    check-cast v4, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 884
    .local v4, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataBannerAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_7

    const-string v24, ""

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataBannerAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 885
    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataBannerAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/AdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .end local v4    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v15    # "fileStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V

    .line 894
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 895
    .end local v5    # "adFile":Ljava/io/File;
    .end local v6    # "appdir":Ljava/io/File;
    .end local v8    # "connection":Ljava/net/URLConnection;
    .end local v9    # "data":[B
    .end local v10    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "header":Ljava/lang/String;
    .end local v19    # "in":Ljava/io/BufferedInputStream;
    .end local v20    # "isText":Ljava/io/InputStream;
    .end local v21    # "out":Ljava/io/BufferedOutputStream;
    .end local v23    # "url":Ljava/net/URL;
    :catch_0
    move-exception v12

    .line 896
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/AdView;->mDebug:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 898
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Failed to grab image : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v18    # "i":I
    :cond_4
    aget-object v24, v16, v18

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mapps/android/view/AdView;->ImgDelAfterDateCheck(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 842
    new-instance v13, Ljava/io/File;

    aget-object v24, v16, v18

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v13, v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    .local v13, "f":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 845
    .end local v13    # "f":Ljava/io/File;
    :cond_5
    aget-object v24, v16, v18

    if-eqz v24, :cond_6

    .line 846
    aget-object v24, v16, v18

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 840
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 887
    .end local v18    # "i":I
    .restart local v4    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .restart local v5    # "adFile":Ljava/io/File;
    .restart local v6    # "appdir":Ljava/io/File;
    .restart local v8    # "connection":Ljava/net/URLConnection;
    .restart local v9    # "data":[B
    .restart local v10    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v17    # "header":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedInputStream;
    .restart local v20    # "isText":Ljava/io/InputStream;
    .restart local v21    # "out":Ljava/io/BufferedOutputStream;
    .restart local v23    # "url":Ljava/net/URL;
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 888
    .local v7, "cCal":Ljava/util/Calendar;
    const/16 v24, 0x5

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 889
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/AdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public Initalize(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isNetwork"    # Z
    .param p2, "codeType"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    .line 309
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    .line 310
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    .line 312
    new-instance v0, Lcom/mapps/android/view/AdView$17;

    invoke-direct {v0, p0, p2}, Lcom/mapps/android/view/AdView$17;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    .line 345
    return-void
.end method

.method protected Reload_ImageRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 815
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 816
    invoke-virtual {p0, p1}, Lcom/mapps/android/view/AdView;->getReloadImage(Ljava/lang/String;)V

    .line 818
    :cond_0
    return-void
.end method

.method public SendRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "codeType"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-boolean v1, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    if-eqz v1, :cond_0

    .line 504
    iget-boolean v1, p0, Lcom/mapps/android/view/AdView;->adInterval:Z

    if-nez v1, :cond_0

    .line 505
    const/16 v1, -0x3e8

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdView;->onFailedToReceive(I)V

    .line 545
    :goto_0
    return-void

    .line 509
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    .line 510
    iget-boolean v1, p0, Lcom/mapps/android/view/AdView;->reload:Z

    if-nez v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 515
    :cond_1
    new-instance v0, Lcom/mapps/android/view/AdView$24;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$24;-><init>(Lcom/mapps/android/view/AdView;)V

    .line 527
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$25;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/mapps/android/view/AdView$25;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public SetDefaultImage(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1528
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    .line 1529
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1534
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->default_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1535
    return-void
.end method

.method public SetRotateTimer()V
    .locals 6

    .prologue
    .line 2467
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    if-eqz v2, :cond_1

    .line 2468
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTBanner;->getRotatetime()Ljava/lang/String;

    move-result-object v0

    .line 2469
    .local v0, "strRTime":Ljava/lang/String;
    const-string v2, ""

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 2470
    :cond_0
    const/16 v2, 0x2710

    iput v2, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    .line 2483
    :goto_0
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2484
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v3

    iget v4, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2486
    .end local v0    # "strRTime":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2472
    .restart local v0    # "strRTime":Ljava/lang/String;
    :cond_2
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2473
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2476
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2477
    .local v1, "time":I
    mul-int/lit16 v2, v1, 0x3e8

    iput v2, p0, Lcom/mapps/android/view/AdView;->mRotationTime:I

    goto :goto_0
.end method

.method public StartService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 785
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 787
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 789
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    .line 790
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->reload:Z

    .line 791
    iput-boolean v4, p0, Lcom/mapps/android/view/AdView;->isFirst:Z

    .line 792
    return-void
.end method

.method public StopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 763
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->cancel(Z)Z

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getmRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 770
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    if-eqz v0, :cond_1

    .line 771
    invoke-static {}, Lcom/mapps/android/network/TraceGPS;->GpsTraceStop()V

    .line 774
    :cond_1
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->isLandingGo:Z

    .line 775
    iput-boolean v2, p0, Lcom/mapps/android/view/AdView;->reload:Z

    .line 778
    return-void
.end method

.method public creHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2638
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<HTML>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2639
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<HEAD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2640
    const-string v1, "</HEAD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2641
    const-string v1, "<body style=\'margin:0,padding:0\',text-align:center,>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2642
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<img width=\'100%\'height=\'100%\'src=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2643
    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2644
    const-string v1, "</html?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2645
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endSSPOperator(Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;
    .param p2, "imageName"    # Ljava/lang/String;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->SendMsghandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/AdView$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/mapps/android/view/AdView$28;-><init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 943
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 796
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 797
    return-void
.end method

.method public finalizeAdView()V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->finalizeSDKView()V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mrelayout2:Lcom/mapps/android/view/AdView$SDKView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKView;->finalizeSDKView()V

    .line 812
    :cond_1
    return-void
.end method

.method public getA_media()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method public getA_publisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getA_section()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLinkListener()Lcom/mapps/android/listner/AdLinkListener;
    .locals 1

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adLinkListener:Lcom/mapps/android/listner/AdLinkListener;

    return-object v0
.end method

.method public getAdverInfoBean()Lcom/mezzo/common/network/data/DataNTBanner;
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    return-object v0
.end method

.method public getBackStrech(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2446
    const/4 v0, 0x0

    .line 2447
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 2448
    invoke-static {p1, v5, v5, v4, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2449
    invoke-static {v0, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2450
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2451
    .local v3, "wd":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 2452
    .local v2, "hg":I
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2455
    .end local v2    # "hg":I
    .end local v3    # "wd":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButtonImage(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 2403
    iget-object v4, p0, Lcom/mapps/android/view/AdView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 2404
    iget-object v4, p0, Lcom/mapps/android/view/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2407
    .local v0, "asset":Landroid/content/res/AssetManager;
    if-nez p1, :cond_1

    .line 2408
    :try_start_0
    const-string v4, "ad_icon.png"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 2411
    .local v3, "is":Ljava/io/InputStream;
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2412
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/mapps/android/view/AdView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2413
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2420
    .end local v0    # "asset":Landroid/content/res/AssetManager;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/mapps/android/view/AdView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 2410
    .restart local v0    # "asset":Landroid/content/res/AssetManager;
    :cond_1
    :try_start_1
    const-string v4, "m_icon.png"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 2415
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 2416
    .local v2, "e":Ljava/lang/Exception;
    iget-boolean v4, p0, Lcom/mapps/android/view/AdView;->mDebug:Z

    if-eqz v4, :cond_0

    .line 2417
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "default image load error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCANONICAL_PATH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->CANONICAL_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2367
    move-object v1, p1

    .line 2368
    .local v1, "urlStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2369
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$39;

    invoke-direct {v2, p0, v1}, Lcom/mapps/android/view/AdView$39;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2388
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2391
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public getImage1()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->image1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getImage2()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->image2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getM_displayHeight()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/mapps/android/view/AdView;->m_displayHeight:I

    return v0
.end method

.method public getM_displayWith()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/mapps/android/view/AdView;->m_displayWith:I

    return v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia_type()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/mapps/android/view/AdView;->media_type:I

    return v0
.end method

.method public getRandingURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2569
    const-string v1, ""

    .line 2570
    .local v1, "randurl":Ljava/lang/String;
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2571
    iget-object v3, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 2572
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getLanding_url()Ljava/lang/String;

    move-result-object v2

    .line 2573
    .local v2, "strURL":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2574
    move-object v1, v2

    .line 2577
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v2    # "strURL":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getReloadImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2583
    move-object v1, p1

    .line 2584
    .local v1, "urlStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2585
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$40;

    invoke-direct {v2, p0, v1}, Lcom/mapps/android/view/AdView$40;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2608
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2610
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public getURL_TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->URL_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 658
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 659
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public getmAdListner()Lcom/mapps/android/listner/AdListner;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    return-object v0
.end method

.method public getmRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/mapps/android/view/AdView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getnBackStrech()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    return v0
.end method

.method public isAdLogo(Z)V
    .locals 0
    .param p1, "bCheck"    # Z

    .prologue
    .line 2561
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bExitLogo:Z

    .line 2562
    return-void
.end method

.method public isAnimateImageBanner(Z)V
    .locals 0
    .param p1, "bCheck"    # Z

    .prologue
    .line 654
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bAnimate:Z

    .line 655
    return-void
.end method

.method public isMfinNetWork()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mfinNetWork:Z

    return v0
.end method

.method public isUseOutClickAction()Z
    .locals 1

    .prologue
    .line 2649
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    return v0
.end method

.method public ismDebug()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mDebug:Z

    return v0
.end method

.method public ismIsGPSUse()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/mapps/android/view/AdView;->mIsGPSUse:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 804
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 805
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "acc"    # Ljava/lang/String;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserAccount:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public setAdLinkListener(Lcom/mapps/android/listner/AdLinkListener;)V
    .locals 0
    .param p1, "adLinkListener"    # Lcom/mapps/android/listner/AdLinkListener;

    .prologue
    .line 2662
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->adLinkListener:Lcom/mapps/android/listner/AdLinkListener;

    .line 2663
    return-void
.end method

.method public setAdListner(Lcom/mapps/android/listner/AdListner;)V
    .locals 0
    .param p1, "mal"    # Lcom/mapps/android/listner/AdListner;

    .prologue
    .line 646
    if-eqz p1, :cond_0

    .line 647
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 649
    :cond_0
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "publisher"    # Ljava/lang/String;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->a_publisher:Ljava/lang/String;

    .line 614
    iput-object p2, p0, Lcom/mapps/android/view/AdView;->a_media:Ljava/lang/String;

    .line 615
    iput-object p3, p0, Lcom/mapps/android/view/AdView;->a_section:Ljava/lang/String;

    .line 616
    const-string v0, "java"

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdView;->init(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public setAdverInfoBean(Lcom/mezzo/common/network/data/DataNTBanner;)V
    .locals 0
    .param p1, "adverInfoBean"    # Lcom/mezzo/common/network/data/DataNTBanner;

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->adbean:Lcom/mezzo/common/network/data/DataNTBanner;

    .line 2635
    return-void
.end method

.method public setBackGround(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2426
    const/4 v0, 0x0

    .line 2427
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 2428
    invoke-static {p1, v2, v2, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2429
    const/4 v1, 0x0

    .line 2430
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 2431
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2435
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    .line 2436
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 2437
    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2443
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    .line 2433
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2439
    :cond_2
    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setBackGroundColor()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2459
    const/4 v0, 0x0

    .line 2460
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x320

    const/16 v3, 0x50

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2461
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2462
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/16 v2, 0xff

    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2463
    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserMail:Ljava/lang/String;

    .line 752
    return-void
.end method

.method public setLoaction(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 723
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$26;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$26;-><init>(Lcom/mapps/android/view/AdView;Z)V

    .line 730
    const-string/jumbo v2, "setLoaction"

    .line 723
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 731
    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 734
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$27;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdView$27;-><init>(Lcom/mapps/android/view/AdView;Z)V

    .line 741
    const-string/jumbo v2, "setPakageInfo"

    .line 734
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 742
    return-void
.end method

.method public setPointLockerMode(Z)V
    .locals 0
    .param p1, "bMode"    # Z

    .prologue
    .line 2565
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->bPtLockeMode:Z

    .line 2566
    return-void
.end method

.method public setUseOutClickAction(ZLjava/lang/String;)V
    .locals 0
    .param p1, "useOutClickAction"    # Z
    .param p2, "outLinkTag"    # Ljava/lang/String;

    .prologue
    .line 2653
    iput-boolean p1, p0, Lcom/mapps/android/view/AdView;->useOutClickAction:Z

    .line 2654
    iput-object p2, p0, Lcom/mapps/android/view/AdView;->outLinkTag:Ljava/lang/String;

    .line 2655
    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserAge:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/mapps/android/view/AdView;->mUserGender:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public setnBackStrech(I)V
    .locals 0
    .param p1, "nBackStrech"    # I

    .prologue
    .line 609
    iput p1, p0, Lcom/mapps/android/view/AdView;->nBackStrech:I

    .line 610
    return-void
.end method

.method public simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 978
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 979
    .local v0, "act":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendapi -> api type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 980
    new-instance v2, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v2, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    .line 981
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/view/AdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 982
    new-instance v1, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 983
    .local v1, "imp":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v2, Lcom/mapps/android/view/AdView$29;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/AdView$29;-><init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 999
    iget-object v2, p0, Lcom/mapps/android/view/AdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1000
    return-void
.end method
