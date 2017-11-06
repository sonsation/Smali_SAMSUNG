.class public Lcom/mapps/android/view/EndingAdView;
.super Landroid/widget/FrameLayout;
.source "EndingAdView.java"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/EndingAdView$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static CURRENTSSP:Ljava/lang/String; = null

.field public static SAVEREQUESTKEY:Ljava/lang/String; = null

.field public static final TYPE_HTML:I = 0x0

.field public static final TYPE_IMAGE:I = 0x1


# instance fields
.field private CANONICAL_PATH:Ljava/lang/String;

.field FailedToReceiveHandler:Landroid/os/Handler;

.field private final IO_BUFFER_SIZE:I

.field private final MEZZO_DIRECTORY:Ljava/lang/String;

.field private final MEZZO_IMAGE:Ljava/lang/String;

.field private SendMsghandler:Landroid/os/Handler;

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field adInterval:Z

.field private adbean:Lcom/mezzo/common/network/data/DataNTEnd;

.field bGotolinkType:Z

.field private codeType:Ljava/lang/String;

.field private commonHandler:Landroid/os/Handler;

.field private currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

.field private endConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field private handler:Landroid/os/Handler;

.field private isErrorState:Z

.field private isLandingGo:Z

.field private mAdBitmap:Landroid/graphics/Bitmap;

.field private mAdListner:Lcom/mapps/android/listner/AdListner;

.field private mBaseLayout:Landroid/widget/RelativeLayout;

.field private mConnectTimeOut:I

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsClick:Z

.field private mIsTimeCheck:Z

.field private mReadTimeOut:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field private mWidth:I

.field private m_displayHeight:I

.field private m_displayWith:I

.field private m_e_version:Ljava/lang/String;

.field private m_progressBar:Landroid/widget/ProgressBar;

.field private m_strDeviceID:Ljava/lang/String;

.field private m_strOsversion:Ljava/lang/String;

.field private mdensity:I

.field private mdeviceModel:Ljava/lang/String;

.field private mdeviceOS:Ljava/lang/String;

.field private mdeviceVersion:Ljava/lang/String;

.field public media_type:I

.field mtype:I

.field private myWebView:Landroid/webkit/WebView;

.field private nt:Lcom/mezzo/common/network/Nt;

.field private parcel:Lcom/mapps/android/share/ParcelHelper;

.field private progHandler:Landroid/os/Handler;

.field private progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

.field showEndingViewHandler:Landroid/os/Handler;

.field startEndingAdViewHandler:Landroid/os/Handler;

.field private updateResults:Ljava/lang/Runnable;

.field public uudi_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "n"

    sput-object v0, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    .line 134
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    .line 87
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->mConnectTimeOut:I

    .line 88
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->mReadTimeOut:I

    .line 89
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progHandler:Landroid/os/Handler;

    .line 93
    const-string v0, "/mezzo/"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    .line 94
    const-string v0, "image"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_IMAGE:Ljava/lang/String;

    .line 95
    const/16 v0, 0x1000

    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->IO_BUFFER_SIZE:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    .line 99
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 100
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->mDebug:Z

    .line 101
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->mIsClick:Z

    .line 102
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->mIsTimeCheck:Z

    .line 103
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceVersion:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceModel:Ljava/lang/String;

    .line 106
    const-string v0, "Android OS"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceOS:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->m_strOsversion:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->m_displayWith:I

    .line 109
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->m_displayHeight:I

    .line 110
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->m_strDeviceID:Ljava/lang/String;

    .line 111
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mdensity:I

    .line 112
    const-string v0, "2"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->m_e_version:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 118
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 119
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 120
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    .line 121
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->m_progressBar:Landroid/widget/ProgressBar;

    .line 122
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    .line 130
    const-string v0, "html"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 136
    new-instance v0, Lcom/mapps/android/view/EndingAdView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$1;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->commonHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/mapps/android/view/EndingAdView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$2;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    .line 304
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mtype:I

    .line 329
    new-instance v0, Lcom/mapps/android/view/EndingAdView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$3;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->FailedToReceiveHandler:Landroid/os/Handler;

    .line 378
    new-instance v0, Lcom/mapps/android/view/EndingAdView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$4;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 556
    new-instance v0, Lcom/mapps/android/view/EndingAdView$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$5;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 784
    new-instance v0, Lcom/mapps/android/view/EndingAdView$6;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$6;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->updateResults:Ljava/lang/Runnable;

    .line 793
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->uudi_key:Ljava/lang/String;

    .line 818
    new-instance v0, Lcom/mapps/android/view/EndingAdView$7;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$7;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->showEndingViewHandler:Landroid/os/Handler;

    .line 1126
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    .line 177
    const-string v0, "java"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediatype"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    .line 87
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->mConnectTimeOut:I

    .line 88
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->mReadTimeOut:I

    .line 89
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progHandler:Landroid/os/Handler;

    .line 93
    const-string v0, "/mezzo/"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    .line 94
    const-string v0, "image"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_IMAGE:Ljava/lang/String;

    .line 95
    const/16 v0, 0x1000

    iput v0, p0, Lcom/mapps/android/view/EndingAdView;->IO_BUFFER_SIZE:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    .line 99
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 100
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->mDebug:Z

    .line 101
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->mIsClick:Z

    .line 102
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->mIsTimeCheck:Z

    .line 103
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceVersion:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceModel:Ljava/lang/String;

    .line 106
    const-string v0, "Android OS"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceOS:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->m_strOsversion:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->m_displayWith:I

    .line 109
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->m_displayHeight:I

    .line 110
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->m_strDeviceID:Ljava/lang/String;

    .line 111
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mdensity:I

    .line 112
    const-string v0, "2"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->m_e_version:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 118
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 119
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 120
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    .line 121
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->m_progressBar:Landroid/widget/ProgressBar;

    .line 122
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    .line 130
    const-string v0, "html"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 136
    new-instance v0, Lcom/mapps/android/view/EndingAdView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$1;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->commonHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/mapps/android/view/EndingAdView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$2;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    .line 304
    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mtype:I

    .line 329
    new-instance v0, Lcom/mapps/android/view/EndingAdView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$3;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->FailedToReceiveHandler:Landroid/os/Handler;

    .line 378
    new-instance v0, Lcom/mapps/android/view/EndingAdView$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$4;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 556
    new-instance v0, Lcom/mapps/android/view/EndingAdView$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$5;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 784
    new-instance v0, Lcom/mapps/android/view/EndingAdView$6;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$6;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->updateResults:Ljava/lang/Runnable;

    .line 793
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->uudi_key:Ljava/lang/String;

    .line 818
    new-instance v0, Lcom/mapps/android/view/EndingAdView$7;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$7;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->showEndingViewHandler:Landroid/os/Handler;

    .line 1126
    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    .line 183
    iput p2, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 184
    const-string v0, "java"

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 185
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    .line 86
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    .line 87
    const/16 v3, 0xfa0

    iput v3, p0, Lcom/mapps/android/view/EndingAdView;->mConnectTimeOut:I

    .line 88
    const/16 v3, 0xbb8

    iput v3, p0, Lcom/mapps/android/view/EndingAdView;->mReadTimeOut:I

    .line 89
    iput-object v5, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    .line 92
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->progHandler:Landroid/os/Handler;

    .line 93
    const-string v3, "/mezzo/"

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_DIRECTORY:Ljava/lang/String;

    .line 94
    const-string v3, "image"

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->MEZZO_IMAGE:Ljava/lang/String;

    .line 95
    const/16 v3, 0x1000

    iput v3, p0, Lcom/mapps/android/view/EndingAdView;->IO_BUFFER_SIZE:I

    .line 96
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    .line 97
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    .line 98
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    .line 99
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 100
    iput-boolean v4, p0, Lcom/mapps/android/view/EndingAdView;->mDebug:Z

    .line 101
    iput-boolean v4, p0, Lcom/mapps/android/view/EndingAdView;->mIsClick:Z

    .line 102
    iput-boolean v4, p0, Lcom/mapps/android/view/EndingAdView;->mIsTimeCheck:Z

    .line 103
    iput-boolean v4, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    .line 104
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceVersion:Ljava/lang/String;

    .line 105
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceModel:Ljava/lang/String;

    .line 106
    const-string v3, "Android OS"

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mdeviceOS:Ljava/lang/String;

    .line 107
    iput-object v5, p0, Lcom/mapps/android/view/EndingAdView;->m_strOsversion:Ljava/lang/String;

    .line 108
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->m_displayWith:I

    .line 109
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->m_displayHeight:I

    .line 110
    iput-object v5, p0, Lcom/mapps/android/view/EndingAdView;->m_strDeviceID:Ljava/lang/String;

    .line 111
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->mdensity:I

    .line 112
    const-string v3, "2"

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->m_e_version:Ljava/lang/String;

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 118
    iput-object v5, p0, Lcom/mapps/android/view/EndingAdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 119
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 120
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    .line 121
    iput-object v5, p0, Lcom/mapps/android/view/EndingAdView;->m_progressBar:Landroid/widget/ProgressBar;

    .line 122
    iput-object v5, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object v5, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 126
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    .line 127
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    .line 128
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    .line 129
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    .line 130
    const-string v3, "html"

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 133
    iput-boolean v4, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 136
    new-instance v3, Lcom/mapps/android/view/EndingAdView$1;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$1;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->commonHandler:Landroid/os/Handler;

    .line 237
    new-instance v3, Lcom/mapps/android/view/EndingAdView$2;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$2;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    .line 304
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->mtype:I

    .line 329
    new-instance v3, Lcom/mapps/android/view/EndingAdView$3;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$3;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->FailedToReceiveHandler:Landroid/os/Handler;

    .line 378
    new-instance v3, Lcom/mapps/android/view/EndingAdView$4;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$4;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 556
    new-instance v3, Lcom/mapps/android/view/EndingAdView$5;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$5;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 784
    new-instance v3, Lcom/mapps/android/view/EndingAdView$6;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$6;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->updateResults:Ljava/lang/Runnable;

    .line 793
    const-string v3, ""

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->uudi_key:Ljava/lang/String;

    .line 818
    new-instance v3, Lcom/mapps/android/view/EndingAdView$7;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$7;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->showEndingViewHandler:Landroid/os/Handler;

    .line 1126
    iput-boolean v4, p0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    .line 190
    const-string v3, "html"

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    .line 191
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V

    .line 193
    :try_start_0
    new-instance v3, Lcom/mapps/android/share/ParcelHelper;

    const-string v4, ""

    iget-object v5, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/mapps/android/share/ParcelHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    .line 194
    if-eqz p2, :cond_0

    .line 195
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v4, "com_mapps_android_view_EndingAdView"

    invoke-virtual {v3, v4}, Lcom/mapps/android/share/ParcelHelper;->getStyleableArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 196
    .local v1, "styleable":[I
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 197
    .local v2, "ta":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v4, "com_mapps_android_view_EndingAdView"

    const-string/jumbo v5, "pCode"

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v4, "com_mapps_android_view_EndingAdView"

    const-string v5, "mCode"

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    .line 199
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v4, "com_mapps_android_view_EndingAdView"

    const-string/jumbo v5, "sCode"

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    .line 200
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->parcel:Lcom/mapps/android/share/ParcelHelper;

    const-string v4, "com_mapps_android_view_EndingAdView"

    const-string v5, "media_Type"

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/share/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    .line 201
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->GetDisplayInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "styleable":[I
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/mapps/android/view/EndingAdView;->mDebug:Z

    if-eqz v3, :cond_0

    .line 207
    const-string v3, "ADSDK"

    const-string v4, "Parcel fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private GetDisplayInfo()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 300
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->m_displayWith:I

    .line 301
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->m_displayHeight:I

    .line 302
    return-void
.end method

.method private ImgDelAfterDateCheck(Ljava/lang/String;)Z
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 661
    const-string v3, "[.]"

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 662
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    const-string v4, "Search_of_endtime_float"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 664
    .local v1, "savedtime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 665
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 666
    const/4 v2, 0x1

    .line 669
    :cond_0
    return v2
.end method

.method private Initalize(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, -0x2

    .line 307
    iput p1, p0, Lcom/mapps/android/view/EndingAdView;->mtype:I

    .line 308
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 311
    .local v0, "fparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->setSize()V

    .line 312
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->m_progressBar:Landroid/widget/ProgressBar;

    .line 313
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->m_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/EndingAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    .line 316
    new-instance v1, Lcom/mapps/android/view/EndingAdView$12;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$12;-><init>(Lcom/mapps/android/view/EndingAdView;I)V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    .line 321
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    .end local v0    # "fparams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 324
    :cond_0
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto :goto_0
.end method

.method private SendInfoToServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "strParam"    # Ljava/lang/String;

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestServer(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method private SendRequest(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 510
    new-instance v0, Lcom/mapps/android/view/EndingAdView$17;

    invoke-direct {v0, p0, p1}, Lcom/mapps/android/view/EndingAdView$17;-><init>(Lcom/mapps/android/view/EndingAdView;I)V

    .line 536
    .local v0, "requestHandler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/EndingAdView$18;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/EndingAdView$18;-><init>(Lcom/mapps/android/view/EndingAdView;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 553
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 554
    return-void
.end method

.method private SendTrackkingToServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "strParam"    # Ljava/lang/String;

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestServer(Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "enddatetime"    # Ljava/lang/String;

    .prologue
    .line 651
    const-string v3, "[.]"

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 652
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 654
    .local v1, "endtime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    const-string v4, "Search_of_endtime_float"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 655
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 656
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 658
    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/EndingAdView;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->mDebug:Z

    return v0
.end method

.method static synthetic access$10(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->showEndingAdView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$12(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mBaseLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/mapps/android/view/EndingAdView;Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->mDebug:Z

    return-void
.end method

.method static synthetic access$15(Lcom/mapps/android/view/EndingAdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->commonHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$16(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    return-void
.end method

.method static synthetic access$20(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->requestStartEndingAdView()V

    return-void
.end method

.method static synthetic access$21(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->SendRequest(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestDetailSSP(Lcom/mezzo/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$23(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/Nt;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    return-void
.end method

.method static synthetic access$24(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/Nt;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    return-object v0
.end method

.method static synthetic access$25(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    return-void
.end method

.method static synthetic access$26(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/request/OnConnectionListener;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->endConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    return-object v0
.end method

.method static synthetic access$27(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->Initalize(I)V

    return-void
.end method

.method static synthetic access$30(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->m_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$32(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/mapps/android/view/EndingAdView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$34(Lcom/mapps/android/view/EndingAdView;Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->mIsClick:Z

    return-void
.end method

.method static synthetic access$35(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->sspLanding()V

    return-void
.end method

.method static synthetic access$36(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestTouch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$37(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTSSP;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    return-object v0
.end method

.method static synthetic access$38(Lcom/mapps/android/view/EndingAdView;Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    return-void
.end method

.method static synthetic access$39(Lcom/mapps/android/view/EndingAdView;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->getClickTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/mapps/android/view/EndingAdView;)Lcom/mapps/android/listner/AdListner;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    return-object v0
.end method

.method static synthetic access$40(Lcom/mapps/android/view/EndingAdView;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$41(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/mapps/android/view/EndingAdView;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->m_progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$43()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$44(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestSSPClick(Lcom/mezzo/common/network/data/DataNTSSP;)V

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTEnd;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    return-void
.end method

.method static synthetic access$7(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->requestUseSSp()V

    return-void
.end method

.method static synthetic access$8(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->requestNotSSp()V

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTEnd;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    return-object v0
.end method

.method private common(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    .line 146
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$8;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$8;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
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
    .line 643
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 645
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 648
    return-void

    .line 646
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private createWebView(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$28;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$28;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1124
    return-void
.end method

.method private getClickTag(I)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1004
    const-string v1, ""

    .line 1006
    .local v1, "strParam":Ljava/lang/String;
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    if-eqz v2, :cond_0

    .line 1007
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListEndAD;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1008
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/data/DataListEndAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataIEndAD;

    .line 1009
    .local v0, "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getClick_api()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1010
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getClick_api()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    :cond_0
    :goto_0
    return-object v1

    .line 1012
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    :cond_1
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getClick_tracking_api()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mapps/android/view/EndingAdView;->SendTrackkingToServer(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getLanding_url()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private onFailedToReceive(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 343
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 344
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 345
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->FailedToReceiveHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 347
    return-void
.end method

.method private progressBar(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->progHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$19;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$19;-><init>(Lcom/mapps/android/view/EndingAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    return-void
.end method

.method private requestDetailSSP(Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 4
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    .line 395
    const-string/jumbo v2, "y"

    sput-object v2, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    .local v0, "codetype":I
    if-nez v0, :cond_1

    .line 398
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    .line 400
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getAdm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    invoke-direct {p0, p1}, Lcom/mapps/android/view/EndingAdView;->requestSSPImageFileSave(Lcom/mezzo/common/network/data/DataNTSSP;)V

    .line 404
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 406
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 407
    .local v1, "message":Landroid/os/Message;
    const-string v2, "Ssp_imp"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/mapps/android/view/EndingAdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 411
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 413
    .restart local v1    # "message":Landroid/os/Message;
    const-string v2, "Dsp_imp"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/mapps/android/view/EndingAdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private requestImageFileSave(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/mapps/android/view/EndingAdView$13;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 356
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 358
    :cond_0
    return-void
.end method

.method private requestNotSSp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 421
    const-string v1, "n"

    sput-object v1, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    .line 422
    invoke-direct {p0, v2}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    .line 423
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataListEndAD;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/data/DataListEndAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataIEndAD;

    .line 425
    .local v0, "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    iget v1, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 426
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    .line 438
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    :cond_0
    :goto_0
    return-void

    .line 428
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    :cond_1
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getPars_filename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getPars_filename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 429
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getImg_name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mapps/android/view/EndingAdView;->requestImageFileSave(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getImpression_api()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->SendInfoToServer(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    const/16 v1, -0x2bc

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto :goto_0

    .line 434
    :cond_3
    iget v1, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    if-nez v1, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestSSPClick(Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 7
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataNTSSP;

    .prologue
    const/4 v6, 0x0

    .line 940
    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, ""

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 942
    sget-object v3, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->YES:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getChk_ssp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 943
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

    .line 944
    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 945
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "i_request_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "request_key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAVEREQUESTKEY -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 947
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

    .line 949
    sget-object v3, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 950
    new-instance v3, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, v5, v6, v6}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v3, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    .line 951
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 952
    new-instance v0, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 953
    .local v0, "imp":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v3, Lcom/mapps/android/view/EndingAdView$25;

    invoke-direct {v3, p0, p1, v1}, Lcom/mapps/android/view/EndingAdView$25;-><init>(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 972
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 981
    .end local v0    # "imp":Lcom/mezzo/common/network/request/RequestSimple;
    .end local v1    # "request_key":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 974
    .restart local v1    # "request_key":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
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

    .line 978
    .end local v1    # "request_key":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
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
    .line 361
    if-eqz p1, :cond_0

    .line 362
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->stringCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$14;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$14;-><init>(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    :cond_0
    return-void
.end method

.method private requestServer(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendapi -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 1030
    new-instance v1, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    .line 1031
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 1032
    new-instance v0, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1033
    .local v0, "imp":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v1, Lcom/mapps/android/view/EndingAdView$27;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$27;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 1049
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1050
    return-void
.end method

.method private requestStartEndingAdView()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->startEndingAdViewHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method

.method private requestTouch(Ljava/lang/String;)V
    .locals 3
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "strURL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 986
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$26;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$26;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    .line 1000
    const-string v2, "TouchThread"

    .line 986
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1001
    return-void
.end method

.method private requestUseSSp()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    new-instance v0, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    .line 467
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 469
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/network/UrlManager;->urlSSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/mapps/android/network/ParamManager;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    iget-object v5, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    iget-object v6, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    iget-object v7, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    iget v8, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mapps/android/view/EndingAdView;->codeType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/mapps/android/network/ParamManager;->getParamSSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 470
    .local v12, "url":Ljava/lang/String;
    new-instance v11, Lcom/mezzo/common/network/request/RequestSSP;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v11, v0, v12, v1}, Lcom/mezzo/common/network/request/RequestSSP;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 471
    .local v11, "requestSSP":Lcom/mezzo/common/network/request/RequestSSP;
    new-instance v0, Lcom/mapps/android/view/EndingAdView$16;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/EndingAdView$16;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {v11, v0}, Lcom/mezzo/common/network/request/RequestSSP;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 501
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mezzo/common/network/request/RequestNTCommon;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v11    # "requestSSP":Lcom/mezzo/common/network/request/RequestSSP;
    .end local v12    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v10

    .line 503
    .local v10, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/mapps/android/view/EndingAdView;->requestNotSSp()V

    .line 504
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSize()V
    .locals 5

    .prologue
    const/16 v4, 0x320

    const/16 v3, 0x1f4

    const/4 v2, -0x1

    .line 1053
    iget v1, p0, Lcom/mapps/android/view/EndingAdView;->mdensity:I

    sparse-switch v1, :sswitch_data_0

    .line 1080
    iput v3, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 1081
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    .line 1087
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1088
    .local v0, "fparams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mBaseLayout:Landroid/widget/RelativeLayout;

    .line 1090
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->mBaseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/EndingAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    return-void

    .line 1055
    .end local v0    # "fparams":Landroid/widget/FrameLayout$LayoutParams;
    :sswitch_0
    const/16 v1, 0x94

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 1056
    const/16 v1, 0xd6

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    goto :goto_0

    .line 1060
    :sswitch_1
    const/16 v1, 0xde

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 1061
    const/16 v1, 0x140

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    goto :goto_0

    .line 1065
    :sswitch_2
    const/16 v1, 0x14d

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 1066
    const/16 v1, 0x215

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    goto :goto_0

    .line 1070
    :sswitch_3
    iput v3, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 1071
    iput v4, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    goto :goto_0

    .line 1075
    :sswitch_4
    const/16 v1, 0x2ee

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mWidth:I

    .line 1076
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/mapps/android/view/EndingAdView;->mHeight:I

    goto :goto_0

    .line 1053
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method private showEndingAdView(Ljava/lang/String;)V
    .locals 2
    .param p1, "stradfile"    # Ljava/lang/String;

    .prologue
    .line 796
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    .line 797
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$21;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$21;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 815
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 816
    return-void
.end method

.method private sspLanding()V
    .locals 4

    .prologue
    .line 906
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    if-eqz v1, :cond_1

    .line 907
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 915
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-direct {p0, v1}, Lcom/mapps/android/view/EndingAdView;->requestSSPClick(Lcom/mezzo/common/network/data/DataNTSSP;)V

    .line 916
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 918
    .local v0, "message":Landroid/os/Message;
    const-string v1, "Dsp_click"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 919
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/EndingAdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 921
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/EndingAdView$24;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/EndingAdView$24;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    .line 934
    const-string v3, "TouchThread"

    .line 921
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 937
    :cond_1
    return-void
.end method


# virtual methods
.method protected EndOperator()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 772
    return-void
.end method

.method protected EndSSPOperator(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->SendMsghandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$20;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$20;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    return-void
.end method

.method protected ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 26
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "isCurrentSSP"    # Z

    .prologue
    .line 674
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    .line 677
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 678
    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/EndingAdView;->CANONICAL_PATH:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "/mezzo/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ending/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "image"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 679
    .local v11, "dir":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 682
    .local v16, "filelist":[Ljava/io/File;
    if-eqz v16, :cond_0

    .line 683
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 702
    .end local v18    # "i":I
    :cond_0
    :try_start_0
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 703
    .local v22, "url":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 704
    .local v8, "connection":Ljava/net/URLConnection;
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mapps/android/share/ShareUtil;->getDeviceHeader()Ljava/lang/String;

    move-result-object v17

    .line 705
    .local v17, "header":Ljava/lang/String;
    const-string v23, "User-Agent"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mapps/android/view/EndingAdView;->mConnectTimeOut:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mapps/android/view/EndingAdView;->mReadTimeOut:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 708
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 709
    .local v20, "isText":Ljava/io/InputStream;
    new-instance v19, Ljava/io/BufferedInputStream;

    const/16 v23, 0x1000

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 711
    .local v19, "in":Ljava/io/BufferedInputStream;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 712
    .local v10, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v21, Ljava/io/BufferedOutputStream;

    const/16 v23, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 714
    .local v21, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/EndingAdView;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 715
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->flush()V

    .line 717
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 719
    .local v9, "data":[B
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    .local v6, "appdir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 722
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    .local v5, "adFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v23

    if-nez v23, :cond_1

    .line 725
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 726
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 727
    .local v15, "fileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v15, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 728
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mezzo/common/network/data/DataListEndAD;->size()I

    move-result v23

    if-lez v23, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mapps/android/view/EndingAdView;->adbean:Lcom/mezzo/common/network/data/DataNTEnd;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/mezzo/common/network/data/DataListEndAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v4

    check-cast v4, Lcom/mezzo/common/network/data/DataIEndAD;

    .line 731
    .local v4, "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataIEndAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_6

    const-string v23, ""

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataIEndAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 732
    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataIEndAD;->getEnd_datetime()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/EndingAdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .end local v4    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    .end local v15    # "fileStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V

    .line 741
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 749
    if-eqz p3, :cond_c

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->EndSSPOperator(Ljava/lang/String;)V

    .line 759
    .end local v5    # "adFile":Ljava/io/File;
    .end local v6    # "appdir":Ljava/io/File;
    .end local v8    # "connection":Ljava/net/URLConnection;
    .end local v9    # "data":[B
    .end local v10    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "header":Ljava/lang/String;
    .end local v19    # "in":Ljava/io/BufferedInputStream;
    .end local v20    # "isText":Ljava/io/InputStream;
    .end local v21    # "out":Ljava/io/BufferedOutputStream;
    .end local v22    # "url":Ljava/net/URL;
    :goto_2
    return-void

    .line 684
    .restart local v18    # "i":I
    :cond_2
    aget-object v23, v16, v18

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;->ImgDelAfterDateCheck(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 685
    new-instance v13, Ljava/io/File;

    aget-object v23, v16, v18

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v13, "f":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 688
    .end local v13    # "f":Ljava/io/File;
    :cond_3
    aget-object v23, v16, v18

    if-eqz v23, :cond_5

    .line 689
    aget-object v23, v16, v18

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 690
    if-eqz p3, :cond_4

    .line 691
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->EndSSPOperator(Ljava/lang/String;)V

    goto :goto_2

    .line 693
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/EndingAdView;->EndOperator()V

    goto :goto_2

    .line 683
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 734
    .end local v18    # "i":I
    .restart local v4    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
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
    .restart local v22    # "url":Ljava/net/URL;
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 735
    .local v7, "cCal":Ljava/util/Calendar;
    const/16 v23, 0x5

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 736
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/EndingAdView;->SetPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 742
    .end local v4    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    .end local v5    # "adFile":Ljava/io/File;
    .end local v6    # "appdir":Ljava/io/File;
    .end local v7    # "cCal":Ljava/util/Calendar;
    .end local v8    # "connection":Ljava/net/URLConnection;
    .end local v9    # "data":[B
    .end local v10    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "fileStream":Ljava/io/FileOutputStream;
    .end local v17    # "header":Ljava/lang/String;
    .end local v19    # "in":Ljava/io/BufferedInputStream;
    .end local v20    # "isText":Ljava/io/InputStream;
    .end local v21    # "out":Ljava/io/BufferedOutputStream;
    .end local v22    # "url":Ljava/net/URL;
    :catch_0
    move-exception v12

    .line 743
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/EndingAdView;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 744
    const-string v23, "ADSDK"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Failed to grab image : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_7
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 749
    if-eqz p3, :cond_8

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->EndSSPOperator(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 752
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/EndingAdView;->EndOperator()V

    goto/16 :goto_2

    .line 755
    :cond_9
    const/16 v23, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    .line 756
    const/16 v23, -0xc8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto/16 :goto_2

    .line 747
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    .line 748
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 749
    if-eqz p3, :cond_a

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/EndingAdView;->EndSSPOperator(Ljava/lang/String;)V

    .line 758
    :goto_3
    throw v23

    .line 752
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/EndingAdView;->EndOperator()V

    goto :goto_3

    .line 755
    :cond_b
    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    .line 756
    const/16 v24, -0xc8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto :goto_3

    .line 752
    .restart local v5    # "adFile":Ljava/io/File;
    .restart local v6    # "appdir":Ljava/io/File;
    .restart local v8    # "connection":Ljava/net/URLConnection;
    .restart local v9    # "data":[B
    .restart local v10    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "header":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedInputStream;
    .restart local v20    # "isText":Ljava/io/InputStream;
    .restart local v21    # "out":Ljava/io/BufferedOutputStream;
    .restart local v22    # "url":Ljava/net/URL;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/EndingAdView;->EndOperator()V

    goto/16 :goto_2

    .line 755
    :cond_d
    const/16 v23, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;->progressBar(I)V

    .line 756
    const/16 v23, -0xc8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto/16 :goto_2
.end method

.method public LoadingURL(Ljava/lang/String;)V
    .locals 7
    .param p1, "strURL"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1129
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearView()V

    .line 1130
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1131
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 1132
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 1133
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1134
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 1135
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1136
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1138
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1139
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1140
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/mapps/android/view/EndingAdView$29;

    invoke-direct {v4, p0}, Lcom/mapps/android/view/EndingAdView$29;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1200
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/mapps/android/view/EndingAdView$MyWebChromeClient;

    invoke-direct {v4, p0}, Lcom/mapps/android/view/EndingAdView$MyWebChromeClient;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1202
    const/4 v0, 0x0

    .line 1204
    .local v0, "base64":Ljava/lang/String;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1209
    :goto_0
    sget-object v3, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    const-string/jumbo v4, "y"

    if-ne v3, v4, :cond_0

    .line 1210
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    if-eqz v3, :cond_0

    .line 1211
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1212
    .local v1, "codetype":I
    if-ne v6, v1, :cond_0

    .line 1213
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1214
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mapps/android/view/EndingAdView;->requestServer(Ljava/lang/String;)V

    .line 1220
    .end local v1    # "codetype":I
    :cond_0
    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->myWebView:Landroid/webkit/WebView;

    const-string/jumbo v4, "text/html; charset=utf-8"

    const-string v5, "base64"

    invoke-virtual {v3, v0, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    return-void

    .line 1205
    :catch_0
    move-exception v2

    .line 1207
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public SetDurationTimeCheck(Z)V
    .locals 0
    .param p1, "isTimeCheck"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/mapps/android/view/EndingAdView;->mIsTimeCheck:Z

    .line 295
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1095
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 1096
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->cancel(Z)Z

    .line 639
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 640
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 285
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 840
    sget-object v2, Lcom/mapps/android/view/EndingAdView;->CURRENTSSP:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 841
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    if-eqz v2, :cond_5

    .line 842
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->currentSSPData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 843
    .local v0, "codetype":I
    if-ne v1, v0, :cond_5

    .line 844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 902
    .end local v0    # "codetype":I
    :cond_0
    :goto_0
    return v1

    .line 846
    .restart local v0    # "codetype":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 847
    iget-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    if-nez v2, :cond_0

    .line 851
    new-instance v2, Lcom/mapps/android/view/EndingAdView$22;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/EndingAdView$22;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-static {v2}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 866
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 870
    .end local v0    # "codetype":I
    :cond_3
    iget v2, p0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    if-ne v2, v1, :cond_5

    .line 871
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 874
    iget-boolean v2, p0, Lcom/mapps/android/view/EndingAdView;->isErrorState:Z

    if-nez v2, :cond_0

    .line 878
    new-instance v2, Lcom/mapps/android/view/EndingAdView$23;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/EndingAdView$23;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-static {v2}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 899
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 902
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAccount:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public setAdListner(Lcom/mapps/android/listner/AdListner;)V
    .locals 0
    .param p1, "mal"    # Lcom/mapps/android/listner/AdListner;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mAdListner:Lcom/mapps/android/listner/AdListner;

    .line 291
    :cond_0
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publisher"    # Ljava/lang/String;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->a_publisher:Ljava/lang/String;

    .line 1101
    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView;->a_media:Ljava/lang/String;

    .line 1102
    iput-object p3, p0, Lcom/mapps/android/view/EndingAdView;->a_section:Ljava/lang/String;

    .line 1103
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserMail:Ljava/lang/String;

    .line 1275
    return-void
.end method

.method public setLoaction(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$10;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$10;-><init>(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 256
    const-string/jumbo v2, "setLoaction"

    .line 249
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 258
    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$11;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/EndingAdView$11;-><init>(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 268
    const-string/jumbo v2, "setPakageInfo"

    .line 261
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 269
    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserAge"    # Ljava/lang/String;

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserAge:Ljava/lang/String;

    .line 1257
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserGender"    # Ljava/lang/String;

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView;->mUserGender:Ljava/lang/String;

    .line 1265
    return-void
.end method

.method public simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 441
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 442
    .local v1, "act":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendapi --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 443
    new-instance v2, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v2, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    .line 444
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 445
    new-instance v0, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 446
    .local v0, "Ssp_imp":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v2, Lcom/mapps/android/view/EndingAdView$15;

    invoke-direct {v2, p0, v1}, Lcom/mapps/android/view/EndingAdView$15;-><init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 462
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    return-void
.end method

.method public startEndingAdView()V
    .locals 4

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/EndingAdView;->isLandingGo:Z

    .line 214
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mapps/android/view/EndingAdView$9;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/EndingAdView$9;-><init>(Lcom/mapps/android/view/EndingAdView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const/16 v0, -0x64

    invoke-direct {p0, v0}, Lcom/mapps/android/view/EndingAdView;->onFailedToReceive(I)V

    goto :goto_0
.end method
