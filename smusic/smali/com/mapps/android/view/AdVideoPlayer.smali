.class public Lcom/mapps/android/view/AdVideoPlayer;
.super Landroid/widget/RelativeLayout;
.source "AdVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;
    }
.end annotation


# instance fields
.field private Buffper:I

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field adInterval:Z

.field private adbean:Lcom/mezzo/common/network/data/DataNTMovie;

.field blayout:Landroid/widget/RelativeLayout;

.field private commonHandler:Landroid/os/Handler;

.field private first_time:I

.field private handler:Landroid/os/Handler;

.field private handlerErr:Landroid/os/Handler;

.field private handler_surface:Landroid/os/Handler;

.field private height:I

.field private holder:Landroid/view/SurfaceHolder;

.field initView:Z

.field private isStart:Z

.field private mAdPlayerErrorListner:Lcom/mapps/android/listner/AdVideoPlayerErrorListener;

.field private mAdPlayerListner:Lcom/mapps/android/listner/AdVideoPlayerListener;

.field private mAdPlayerStartListner:Lcom/mapps/android/listner/AdVideoPlayerListenerStart;

.field private mClickthrough:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mImps_api:Ljava/lang/String;

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreview:Landroid/view/SurfaceView;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenMode:I

.field private mUserAccount:Ljava/lang/String;

.field private mUserAge:Ljava/lang/String;

.field private mUserGender:Ljava/lang/String;

.field private mUserMail:Ljava/lang/String;

.field private mVclick_offset:I

.field private mVideoURI:Ljava/lang/String;

.field private m_AdClick:Landroid/widget/TextView;

.field private m_AdCount:Landroid/widget/TextView;

.field private m_Cate:Ljava/lang/String;

.field private m_Cate_content:Ljava/lang/String;

.field private m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

.field public m_nResonCode:I

.field public m_nlimtSec:I

.field private m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_start_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

.field private m_vcode:Ljava/lang/String;

.field private mbSkipConStatus:Z

.field private mbSkipStatus:Z

.field private mbStartMediaPlay:Z

.field private mclicktracking:Ljava/lang/String;

.field private mid_time:I

.field private misStart:Z

.field private movieConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field private mtHandler:Landroid/os/Handler;

.field private nt:Lcom/mezzo/common/network/Nt;

.field onAdPlayerReceiveHandler:Landroid/os/Handler;

.field private percent:I

.field private phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

.field private progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

.field private progressbar_buffer:Landroid/widget/ProgressBar;

.field requestShowAdHandler:Landroid/os/Handler;

.field sendCallback:Z

.field private start_time:I

.field private third_time:I

.field private tm:Landroid/telephony/TelephonyManager;

.field private total_time:I

.field private viewOver:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    .line 88
    iput v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mapps/android/listner/AdVideoPlayerListener;

    .line 102
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mapps/android/listner/AdVideoPlayerErrorListener;

    .line 103
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mapps/android/listner/AdVideoPlayerListenerStart;

    .line 105
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 108
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 111
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 112
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler:Landroid/os/Handler;

    .line 121
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    .line 122
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 124
    iput v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    .line 125
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    .line 127
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    .line 128
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    .line 129
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    .line 130
    iput-boolean v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    .line 131
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    .line 132
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 133
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    .line 135
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    .line 136
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    .line 137
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    .line 138
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    .line 139
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    .line 146
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I

    .line 147
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mDebug:Z

    .line 158
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->commonHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$2;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAdHandler:Landroid/os/Handler;

    .line 241
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$3;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceiveHandler:Landroid/os/Handler;

    .line 298
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$4;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->movieConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 367
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mezzo/common/network/Nt;

    .line 369
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$5;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 418
    iput-boolean v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    .line 523
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I

    .line 852
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    .line 853
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 854
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 855
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handlerErr:Landroid/os/Handler;

    .line 1021
    const/16 v0, 0xf

    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    .line 1022
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    .line 150
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->common(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    .line 88
    iput v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mapps/android/listner/AdVideoPlayerListener;

    .line 102
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mapps/android/listner/AdVideoPlayerErrorListener;

    .line 103
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mapps/android/listner/AdVideoPlayerListenerStart;

    .line 105
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 108
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 111
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 112
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler:Landroid/os/Handler;

    .line 121
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    .line 122
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 124
    iput v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    .line 125
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    .line 127
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    .line 128
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    .line 129
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    .line 130
    iput-boolean v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    .line 131
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    .line 132
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 133
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    .line 135
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    .line 136
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    .line 137
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    .line 138
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    .line 139
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    .line 146
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I

    .line 147
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mDebug:Z

    .line 158
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->commonHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$2;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAdHandler:Landroid/os/Handler;

    .line 241
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$3;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceiveHandler:Landroid/os/Handler;

    .line 298
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$4;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->movieConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 367
    iput-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mezzo/common/network/Nt;

    .line 369
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$5;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 418
    iput-boolean v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    .line 523
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I

    .line 852
    iput v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    .line 853
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 854
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 855
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handlerErr:Landroid/os/Handler;

    .line 1021
    const/16 v0, 0xf

    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    .line 1022
    iput-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    .line 155
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->common(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method private AdClickOption()V
    .locals 3

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1663
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/lang/String;

    const-string v2, "mclicktracking"

    invoke-virtual {p0, v1, v2}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1668
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->playSoundEffect(I)V

    .line 1669
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdVideoPlayer$22;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/AdVideoPlayer$22;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1677
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :cond_1
    :goto_0
    return-void

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private SendRequestVideoInfo()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$8;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$8;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 276
    .local v0, "requestHandler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdVideoPlayer$9;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/AdVideoPlayer$9;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 296
    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdVideoPlayer;)Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mDebug:Z

    return v0
.end method

.method static synthetic access$10(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAd()V

    return-void
.end method

.method static synthetic access$14(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mezzo/common/network/Nt;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mezzo/common/network/Nt;

    return-void
.end method

.method static synthetic access$15(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mezzo/common/network/Nt;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mezzo/common/network/Nt;

    return-object v0
.end method

.method static synthetic access$16(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    return-object v0
.end method

.method static synthetic access$17(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mezzo/common/network/request/OnConnectionListener;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->movieConnectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    return-object v0
.end method

.method static synthetic access$18(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    return-void
.end method

.method static synthetic access$20(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mezzo/common/network/data/DataNTMovie;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    return-object v0
.end method

.method static synthetic access$26(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->adClick()V

    return-void
.end method

.method static synthetic access$27(Lcom/mapps/android/view/AdVideoPlayer;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    return v0
.end method

.method static synthetic access$28(Lcom/mapps/android/view/AdVideoPlayer;)Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    return v0
.end method

.method static synthetic access$29(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->adCount()V

    return-void
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdVideoPlayer;I)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->onReceiveRunningStart(I)V

    return-void
.end method

.method static synthetic access$30(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    return v0
.end method

.method static synthetic access$31(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    return v0
.end method

.method static synthetic access$32(Lcom/mapps/android/view/AdVideoPlayer;I)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    return-void
.end method

.method static synthetic access$33(Lcom/mapps/android/view/AdVideoPlayer;I)V
    .locals 0

    .prologue
    .line 1160
    invoke-direct {p0, p1}, Lcom/mapps/android/view/AdVideoPlayer;->sendVastApi(I)V

    return-void
.end method

.method static synthetic access$34(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I

    return v0
.end method

.method static synthetic access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$37(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipStatus:Z

    return-void
.end method

.method static synthetic access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestVideoInfo()V

    return-void
.end method

.method static synthetic access$40(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    return v0
.end method

.method static synthetic access$41(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    return v0
.end method

.method static synthetic access$42(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    return v0
.end method

.method static synthetic access$43(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbSkipConStatus:Z

    return-void
.end method

.method static synthetic access$44(Lcom/mapps/android/view/AdVideoPlayer;)I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I

    return v0
.end method

.method static synthetic access$45(Lcom/mapps/android/view/AdVideoPlayer;)Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    return v0
.end method

.method static synthetic access$46(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 1022
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->isStart:Z

    return-void
.end method

.method static synthetic access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$48(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mapps/android/listner/AdVideoPlayerListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mapps/android/listner/AdVideoPlayerListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mezzo/common/network/data/DataNTMovie;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    return-void
.end method

.method static synthetic access$7(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mDebug:Z

    return-void
.end method

.method static synthetic access$9(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->commonHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adClick()V
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->AdClickOption()V

    .line 684
    const/4 v0, 0x3

    iput v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 685
    return-void
.end method

.method private adCount()V
    .locals 2

    .prologue
    .line 688
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    .line 689
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 696
    :cond_1
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 1590
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1591
    .local v0, "height":I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1592
    .local v3, "width":I
    const/4 v2, 0x1

    .line 1594
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 1598
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1599
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1605
    .local v4, "widthRatio":I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 1608
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v4

    .line 1605
    goto :goto_0
.end method

.method private common(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    .line 168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$6;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$6;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 198
    return-void
.end method

.method private doCleanUp()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 843
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 844
    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 845
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 850
    :cond_1
    return-void
.end method

.method static getMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 810
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    .line 812
    .local v7, "mediaplayer":Landroid/media/MediaPlayer;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-ge v10, v11, :cond_0

    .line 839
    :goto_0
    return-object v7

    .line 817
    :cond_0
    :try_start_0
    const-string v10, "android.media.MediaTimeProvider"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 818
    .local v0, "cMediaTimeProvider":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "android.media.SubtitleController"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 819
    .local v1, "cSubtitleController":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "android.media.SubtitleController$Anchor"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 820
    .local v5, "iSubtitleControllerAnchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "android.media.SubtitleController$Listener"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 821
    .local v6, "iSubtitleControllerListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 822
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v10, v11

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 823
    .local v9, "subtitleInstance":Ljava/lang/Object;
    const-string v10, "mHandler"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 824
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :try_start_1
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v9, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 832
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "setSubtitleAnchor"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 833
    .local v8, "setsubtitleanchor":Ljava/lang/reflect/Method;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-object v12, v10, v11

    invoke-virtual {v8, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 835
    .end local v0    # "cMediaTimeProvider":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cSubtitleController":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "iSubtitleControllerAnchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "iSubtitleControllerListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "setsubtitleanchor":Ljava/lang/reflect/Method;
    .end local v9    # "subtitleInstance":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 836
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 827
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cMediaTimeProvider":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "cSubtitleController":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v4    # "f":Ljava/lang/reflect/Field;
    .restart local v5    # "iSubtitleControllerAnchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "iSubtitleControllerListener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "subtitleInstance":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 830
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    .line 829
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v10

    .line 830
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 831
    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static getOrientations(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1519
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1520
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1521
    .local v0, "mDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1532
    const-string v2, "1"

    :goto_0
    return-object v2

    .line 1524
    :pswitch_0
    const-string v2, "1"

    goto :goto_0

    .line 1526
    :pswitch_1
    const-string v2, "2"

    goto :goto_0

    .line 1528
    :pswitch_2
    const-string v2, "1"

    goto :goto_0

    .line 1530
    :pswitch_3
    const-string v2, "2"

    goto :goto_0

    .line 1521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onAdPlayerReceive(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 255
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 256
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 257
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceiveHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 258
    return-void
.end method

.method private onReceiveRunningStart(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 858
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mapps/android/listner/AdVideoPlayerListenerStart;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mapps/android/listner/AdVideoPlayerListenerStart;

    invoke-interface {v0, p0, p1}, Lcom/mapps/android/listner/AdVideoPlayerListenerStart;->onReceiveRunningStart(Landroid/view/View;I)V

    .line 861
    :cond_0
    return-void
.end method

.method private progressSend(Z)V
    .locals 11
    .param p1, "isAllSend"    # Z

    .prologue
    const/4 v10, 0x1

    .line 1132
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    invoke-virtual {v5}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v4

    .line 1133
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 1134
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/mezzo/common/network/data/DataNTMovie;->getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;

    move-result-object v0

    .line 1135
    .local v0, "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->trackingSize()I

    move-result v2

    .line 1136
    .local v2, "dataListLen":I
    if-lez v2, :cond_0

    .line 1137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 1158
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v2    # "dataListLen":I
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 1138
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v2    # "dataListLen":I
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lcom/mezzo/common/network/data/DataMovieAD;->getTrack(I)Lcom/mezzo/common/network/data/DataTracking;

    move-result-object v1

    .line 1139
    .local v1, "data":Lcom/mezzo/common/network/data/DataTracking;
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->isSend()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1140
    if-eqz p1, :cond_3

    .line 1141
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->isCheck()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1142
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "All checking send : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v1, v10}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 1137
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1146
    :cond_3
    const-string/jumbo v5, "progress"

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1147
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getOffset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v6

    .line 1148
    .local v6, "offet":J
    iget v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    long-to-int v8, v6

    if-ne v5, v8, :cond_2

    .line 1149
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " /offet :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v1, v10}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    goto :goto_1
.end method

.method private releaseMediaPlayer()V
    .locals 2

    .prologue
    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 799
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 800
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestShowAd()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->requestShowAdHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method

.method private rootLayoutSetting(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "color"    # I

    .prologue
    .line 527
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 528
    .local v0, "bparams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 530
    return-void
.end method

.method private sendVastApi(I)V
    .locals 3
    .param p1, "sec"    # I

    .prologue
    const/4 v2, 0x1

    .line 1161
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-ne v0, v2, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 1169
    :cond_0
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-ne v0, v1, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 1178
    :cond_1
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-ne v0, v1, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 1186
    :cond_2
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    if-ne v0, v1, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_3

    .line 1188
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1189
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 1194
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->progressSend(Z)V

    .line 1195
    return-void
.end method

.method private startVideoPlayback()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    .line 864
    const-string/jumbo v5, "startVideoPlayback method"

    invoke-static {v5}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 866
    :try_start_0
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_0

    .line 867
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 868
    :cond_0
    iget v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    invoke-virtual {p0, v5}, Lcom/mapps/android/view/AdVideoPlayer;->setVideoMode(I)V

    .line 869
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 870
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    invoke-virtual {v5}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v3

    .line 871
    .local v3, "len":I
    if-lez v3, :cond_1

    .line 872
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mezzo/common/network/data/DataNTMovie;->getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;

    move-result-object v0

    .line 873
    .local v0, "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->trackingSize()I

    move-result v5

    if-lt v2, v5, :cond_4

    .line 889
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getClickthrough()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mClickthrough:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :try_start_1
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getOffset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 896
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getClicktracking()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 900
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getImpression()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/lang/String;

    .line 903
    .end local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v2    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    .line 904
    const/4 v5, 0x0

    iput v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    .line 905
    iget v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    .line 906
    iget v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    .line 907
    iget v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mid_time:I

    iget v6, p0, Lcom/mapps/android/view/AdVideoPlayer;->first_time:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->third_time:I

    .line 908
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    .line 909
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 910
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mImps_api:Ljava/lang/String;

    const-string v6, "Imps_api"

    invoke-virtual {p0, v5, v6}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 916
    .end local v3    # "len":I
    :cond_2
    :goto_3
    iget v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v5, :cond_b

    iget-boolean v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    if-eqz v5, :cond_b

    .line 917
    new-instance v5, Lcom/mapps/android/view/AdVideoPlayer$16;

    invoke-direct {v5, p0}, Lcom/mapps/android/view/AdVideoPlayer$16;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 968
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    :cond_3
    :goto_4
    return-void

    .line 874
    .restart local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_4
    :try_start_4
    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataMovieAD;->getTrack(I)Lcom/mezzo/common/network/data/DataTracking;

    move-result-object v4

    .line 875
    .local v4, "tracking":Lcom/mezzo/common/network/data/DataTracking;
    const-string/jumbo v5, "start"

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 876
    iput-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_start_api:Lcom/mezzo/common/network/data/DataTracking;

    .line 873
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 877
    :cond_6
    const-string v5, "firstQuartile"

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 878
    iput-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_firstq_api:Lcom/mezzo/common/network/data/DataTracking;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 912
    .end local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "tracking":Lcom/mezzo/common/network/data/DataTracking;
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e1":Ljava/lang/Exception;
    const/16 v5, -0x320

    invoke-direct {p0, v5}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    .line 914
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    goto :goto_3

    .line 879
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "tracking":Lcom/mezzo/common/network/data/DataTracking;
    :cond_7
    :try_start_5
    const-string v5, "midpoint"

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 880
    iput-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_midq_api:Lcom/mezzo/common/network/data/DataTracking;

    goto :goto_5

    .line 881
    :cond_8
    const-string/jumbo v5, "thirdQuartile"

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 882
    iput-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_thirdq_api:Lcom/mezzo/common/network/data/DataTracking;

    goto :goto_5

    .line 883
    :cond_9
    const-string v5, "complete"

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 884
    iput-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    goto :goto_5

    .line 885
    :cond_a
    const-string/jumbo v5, "skip"

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 886
    iput-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_skip_api:Lcom/mezzo/common/network/data/DataTracking;

    goto :goto_5

    .line 892
    .end local v4    # "tracking":Lcom/mezzo/common/network/data/DataTracking;
    :catch_1
    move-exception v1

    .line 893
    .restart local v1    # "e1":Ljava/lang/Exception;
    const/4 v5, 0x0

    iput v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVclick_offset:I

    goto/16 :goto_1

    .line 897
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 898
    .restart local v1    # "e1":Ljava/lang/Exception;
    const-string v5, ""

    iput-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mclicktracking:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 969
    .end local v0    # "adData":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_b
    iget-boolean v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    if-eqz v5, :cond_3

    .line 971
    new-instance v5, Lcom/mapps/android/view/AdVideoPlayer$17;

    invoke-direct {v5, p0}, Lcom/mapps/android/view/AdVideoPlayer$17;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    .line 1016
    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer;->mtHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4
.end method


# virtual methods
.method public SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "strURL"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1560
    move-object v2, p1

    .line 1561
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendapi -> api type : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / total time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->total_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->start_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 1562
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1563
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1564
    new-instance v1, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1565
    .local v1, "request":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$20;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$20;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v1, v3}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 1583
    new-instance v3, Lcom/mezzo/common/network/Nt;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, v5, v6, v6}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mezzo/common/network/Nt;

    .line 1584
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 1585
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1586
    return-void
.end method

.method public arrangeVideo()V
    .locals 8

    .prologue
    .line 1224
    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_0

    .line 1226
    :try_start_0
    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v6

    .line 1227
    .local v6, "w":I
    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    .line 1228
    .local v3, "h":I
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getWidth()I

    move-result v1

    .line 1229
    .local v1, "dw":I
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getHeight()I

    move-result v0

    .line 1231
    .local v0, "dh":I
    const/4 v5, 0x0

    .line 1232
    .local v5, "holderWidth":I
    const/4 v4, 0x0

    .line 1233
    .local v4, "holderHeight":I
    iget v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    packed-switch v7, :pswitch_data_0

    .line 1257
    :goto_0
    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz v7, :cond_0

    .line 1258
    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v5, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1264
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v3    # "h":I
    .end local v4    # "holderHeight":I
    .end local v5    # "holderWidth":I
    .end local v6    # "w":I
    :cond_0
    :goto_1
    return-void

    .line 1235
    .restart local v0    # "dh":I
    .restart local v1    # "dw":I
    .restart local v3    # "h":I
    .restart local v4    # "holderHeight":I
    .restart local v5    # "holderWidth":I
    .restart local v6    # "w":I
    :pswitch_0
    move v5, v1

    .line 1236
    div-int/lit8 v7, v1, 0x4

    mul-int/lit8 v4, v7, 0x3

    .line 1237
    goto :goto_0

    .line 1239
    :pswitch_1
    move v5, v1

    .line 1240
    div-int/lit8 v7, v1, 0x10

    mul-int/lit8 v4, v7, 0x9

    .line 1241
    goto :goto_0

    .line 1243
    :pswitch_2
    move v5, v1

    .line 1244
    move v4, v0

    .line 1245
    goto :goto_0

    .line 1247
    :pswitch_3
    if-le v6, v1, :cond_1

    if-le v3, v0, :cond_1

    .line 1248
    move v5, v1

    .line 1249
    div-int/lit8 v7, v1, 0x4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v4, v7, 0x3

    .line 1250
    goto :goto_0

    .line 1251
    :cond_1
    move v5, v6

    .line 1252
    move v4, v3

    goto :goto_0

    .line 1260
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v3    # "h":I
    .end local v4    # "holderHeight":I
    .end local v5    # "holderWidth":I
    .end local v6    # "w":I
    :catch_0
    move-exception v2

    .line 1261
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->releaseMediaPlayer()V

    .line 500
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->doCleanUp()V

    .line 501
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 505
    :cond_0
    return-void
.end method

.method public finalizeimage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 699
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    :cond_1
    return-void
.end method

.method public getA_media()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    return-object v0
.end method

.method public getA_publisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getA_section()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCountImage(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "nCount"    # I

    .prologue
    .line 1537
    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1538
    .local v0, "asset":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 1539
    .local v5, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1541
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v7, "click_icon.png"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 1542
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1543
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v7, 0xa0

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1544
    iget-object v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1545
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1546
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1547
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1556
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 1551
    :catch_0
    move-exception v4

    .line 1553
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1551
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public getDevicePx()I
    .locals 6

    .prologue
    .line 1504
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1505
    .local v0, "defaultDisplay":Landroid/view/Display;
    const/4 v2, 0x0

    .line 1506
    .local v2, "displayWith":I
    const/4 v1, 0x0

    .line 1507
    .local v1, "displayHeight":I
    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1509
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1511
    :cond_0
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1512
    .local v3, "ori":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1515
    .end local v2    # "displayWith":I
    :goto_0
    return v2

    .restart local v2    # "displayWith":I
    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public getGapDensty()I
    .locals 3

    .prologue
    .line 1281
    const/4 v1, 0x0

    .line 1282
    .local v1, "ngap":I
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1283
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_0

    .line 1302
    const/16 v1, 0x14

    .line 1307
    :goto_0
    return v1

    .line 1287
    :sswitch_0
    const/16 v1, 0xa

    .line 1289
    goto :goto_0

    .line 1291
    :sswitch_1
    const/16 v1, 0x10

    .line 1293
    goto :goto_0

    .line 1295
    :sswitch_2
    const/16 v1, 0x14

    .line 1297
    goto :goto_0

    .line 1283
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_2
    .end sparse-switch
.end method

.method public getGapDensty(I)I
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/16 v5, 0x14

    const/16 v3, 0x10

    const/16 v4, 0xf

    const/16 v2, 0xa

    const/4 v7, 0x1

    .line 1311
    const/4 v0, 0x0

    .line 1313
    .local v0, "npx":I
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getDevicePx()I

    move-result v1

    .line 1314
    .local v1, "resol":I
    sparse-switch v1, :sswitch_data_0

    .line 1331
    const/16 v6, 0x140

    if-le v1, v6, :cond_0

    .line 1332
    if-ne p1, v7, :cond_a

    move v0, v2

    .line 1333
    :cond_0
    :goto_0
    const/16 v2, 0x320

    if-le v1, v2, :cond_1

    .line 1334
    if-ne p1, v7, :cond_b

    move v0, v4

    .line 1335
    :cond_1
    :goto_1
    const/16 v2, 0x2d0

    if-le v1, v2, :cond_2

    .line 1336
    if-ne p1, v7, :cond_c

    move v0, v5

    .line 1337
    :cond_2
    :goto_2
    const/16 v2, 0x438

    if-le v1, v2, :cond_3

    .line 1338
    if-ne p1, v7, :cond_d

    const/16 v0, 0x1e

    .line 1339
    :cond_3
    :goto_3
    const/16 v2, 0x5a0

    if-le v1, v2, :cond_4

    .line 1340
    if-ne p1, v7, :cond_e

    const/16 v0, 0x2d

    .line 1345
    :cond_4
    :goto_4
    return v0

    .line 1316
    :sswitch_0
    if-ne p1, v7, :cond_5

    move v0, v2

    .line 1317
    :goto_5
    goto :goto_4

    :cond_5
    move v0, v3

    .line 1316
    goto :goto_5

    .line 1319
    :sswitch_1
    if-ne p1, v7, :cond_6

    move v0, v4

    .line 1320
    :goto_6
    goto :goto_4

    .line 1319
    :cond_6
    const/16 v0, 0x18

    goto :goto_6

    .line 1322
    :sswitch_2
    if-ne p1, v7, :cond_7

    move v0, v5

    .line 1323
    :goto_7
    goto :goto_4

    .line 1322
    :cond_7
    const/16 v0, 0x20

    goto :goto_7

    .line 1325
    :sswitch_3
    if-ne p1, v7, :cond_8

    const/16 v0, 0x1e

    .line 1326
    :goto_8
    goto :goto_4

    .line 1325
    :cond_8
    const/16 v0, 0x30

    goto :goto_8

    .line 1328
    :sswitch_4
    if-ne p1, v7, :cond_9

    const/16 v0, 0x2d

    .line 1329
    :goto_9
    goto :goto_4

    .line 1328
    :cond_9
    const/16 v0, 0x48

    goto :goto_9

    :cond_a
    move v0, v3

    .line 1332
    goto :goto_0

    .line 1334
    :cond_b
    const/16 v0, 0x18

    goto :goto_1

    .line 1336
    :cond_c
    const/16 v0, 0x20

    goto :goto_2

    .line 1338
    :cond_d
    const/16 v0, 0x30

    goto :goto_3

    .line 1340
    :cond_e
    const/16 v0, 0x48

    goto :goto_4

    .line 1314
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x2d0 -> :sswitch_2
        0x320 -> :sswitch_1
        0x438 -> :sswitch_3
        0x5a0 -> :sswitch_4
    .end sparse-switch
.end method

.method public getImgSize(IZ)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "isskip"    # Z

    .prologue
    const/16 v6, 0x8e

    const/16 v5, 0x66

    const/16 v4, 0x4c

    const/16 v3, 0x34

    const/16 v2, 0x2c

    .line 1387
    const/4 v1, 0x0

    .line 1388
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getDevicePx()I

    move-result v0

    .line 1389
    .local v0, "resol":I
    sparse-switch v0, :sswitch_data_0

    .line 1428
    const/16 v7, 0x140

    if-le v0, v7, :cond_0

    .line 1429
    if-eqz p2, :cond_15

    .line 1430
    iget v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v7, :cond_14

    const/16 v1, 0x74

    .line 1434
    :cond_0
    :goto_0
    const/16 v2, 0x320

    if-le v0, v2, :cond_1

    .line 1435
    if-eqz p2, :cond_18

    .line 1436
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_17

    const/16 v1, 0xaf

    .line 1440
    :cond_1
    :goto_1
    const/16 v2, 0x2d0

    if-le v0, v2, :cond_2

    .line 1442
    if-eqz p2, :cond_1b

    .line 1443
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_1a

    const/16 v1, 0xfc

    .line 1447
    :cond_2
    :goto_2
    const/16 v2, 0x438

    if-le v0, v2, :cond_3

    .line 1448
    if-eqz p2, :cond_1e

    .line 1449
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_1d

    const/16 v1, 0x150

    .line 1453
    :cond_3
    :goto_3
    const/16 v2, 0x5a0

    if-le v0, v2, :cond_4

    .line 1454
    if-eqz p2, :cond_21

    .line 1455
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_20

    const/16 v1, 0x1be

    .line 1463
    :cond_4
    :goto_4
    return v1

    .line 1391
    :sswitch_0
    if-eqz p2, :cond_6

    .line 1392
    iget v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v3, :cond_5

    const/16 v1, 0x74

    :goto_5
    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5

    .line 1394
    :cond_6
    iget v3, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v3, :cond_7

    const/16 v1, 0xd8

    .line 1396
    :goto_6
    goto :goto_4

    :cond_7
    move v1, v2

    .line 1394
    goto :goto_6

    .line 1399
    :sswitch_1
    if-eqz p2, :cond_9

    .line 1400
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_8

    const/16 v1, 0xaf

    :goto_7
    goto :goto_4

    :cond_8
    move v1, v3

    goto :goto_7

    .line 1402
    :cond_9
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_a

    const/16 v1, 0x13a

    .line 1404
    :goto_8
    goto :goto_4

    :cond_a
    move v1, v3

    .line 1402
    goto :goto_8

    .line 1407
    :sswitch_2
    if-eqz p2, :cond_c

    .line 1408
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_b

    const/16 v1, 0xfc

    :goto_9
    goto :goto_4

    :cond_b
    move v1, v4

    goto :goto_9

    .line 1410
    :cond_c
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_d

    const/16 v1, 0x1e6

    .line 1412
    :goto_a
    goto :goto_4

    :cond_d
    move v1, v4

    .line 1410
    goto :goto_a

    .line 1414
    :sswitch_3
    if-eqz p2, :cond_f

    .line 1415
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_e

    const/16 v1, 0x150

    :goto_b
    goto :goto_4

    :cond_e
    move v1, v5

    goto :goto_b

    .line 1417
    :cond_f
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_10

    const/16 v1, 0x25e

    .line 1419
    :goto_c
    goto :goto_4

    :cond_10
    move v1, v5

    .line 1417
    goto :goto_c

    .line 1421
    :sswitch_4
    if-eqz p2, :cond_12

    .line 1422
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_11

    const/16 v1, 0x1be

    :goto_d
    goto :goto_4

    :cond_11
    move v1, v6

    goto :goto_d

    .line 1424
    :cond_12
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_13

    const/16 v1, 0x376

    .line 1426
    :goto_e
    goto :goto_4

    :cond_13
    move v1, v6

    .line 1424
    goto :goto_e

    :cond_14
    move v1, v2

    .line 1430
    goto/16 :goto_0

    .line 1432
    :cond_15
    iget v7, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v7, :cond_16

    const/16 v1, 0xd8

    :goto_f
    goto/16 :goto_0

    :cond_16
    move v1, v2

    goto :goto_f

    :cond_17
    move v1, v3

    .line 1436
    goto/16 :goto_1

    .line 1438
    :cond_18
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_19

    const/16 v1, 0x13a

    :goto_10
    goto/16 :goto_1

    :cond_19
    move v1, v3

    goto :goto_10

    :cond_1a
    move v1, v4

    .line 1443
    goto/16 :goto_2

    .line 1445
    :cond_1b
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_1c

    const/16 v1, 0x1e6

    :goto_11
    goto/16 :goto_2

    :cond_1c
    move v1, v4

    goto :goto_11

    :cond_1d
    move v1, v5

    .line 1449
    goto/16 :goto_3

    .line 1451
    :cond_1e
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_1f

    const/16 v1, 0x25e

    :goto_12
    goto/16 :goto_3

    :cond_1f
    move v1, v5

    goto :goto_12

    :cond_20
    move v1, v6

    .line 1455
    goto/16 :goto_4

    .line 1457
    :cond_21
    iget v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    if-ne p1, v2, :cond_22

    const/16 v1, 0x376

    :goto_13
    goto/16 :goto_4

    :cond_22
    move v1, v6

    goto :goto_13

    .line 1389
    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x2d0 -> :sswitch_2
        0x320 -> :sswitch_1
        0x438 -> :sswitch_3
        0x5a0 -> :sswitch_4
    .end sparse-switch
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerSecond()I
    .locals 3

    .prologue
    .line 1686
    const/4 v1, 0x0

    .line 1687
    .local v1, "second":I
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1688
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1689
    .local v0, "currentPosition":I
    div-int/lit16 v1, v0, 0x3e8

    .line 1691
    .end local v0    # "currentPosition":I
    :cond_0
    if-lez v1, :cond_1

    .line 1694
    .end local v1    # "second":I
    :goto_0
    return v1

    .restart local v1    # "second":I
    :cond_1
    iget v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    goto :goto_0
.end method

.method public getTextPx(I)I
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/16 v5, 0x15

    const/16 v4, 0x12

    const/16 v3, 0xe

    const/16 v2, 0xc

    const/4 v7, 0x1

    .line 1467
    const/4 v0, 0x0

    .line 1468
    .local v0, "npx":I
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getDevicePx()I

    move-result v1

    .line 1469
    .local v1, "resol":I
    sparse-switch v1, :sswitch_data_0

    .line 1486
    const/16 v6, 0x140

    if-le v1, v6, :cond_0

    .line 1487
    if-ne p1, v7, :cond_a

    move v0, v2

    .line 1488
    :cond_0
    :goto_0
    const/16 v2, 0x320

    if-le v1, v2, :cond_1

    .line 1489
    if-ne p1, v7, :cond_b

    move v0, v4

    .line 1490
    :cond_1
    :goto_1
    const/16 v2, 0x2d0

    if-le v1, v2, :cond_2

    .line 1491
    if-ne p1, v7, :cond_c

    const/16 v0, 0x1b

    .line 1492
    :cond_2
    :goto_2
    const/16 v2, 0x438

    if-le v1, v2, :cond_3

    .line 1493
    if-ne p1, v7, :cond_d

    const/16 v0, 0x28

    .line 1494
    :cond_3
    :goto_3
    const/16 v2, 0x5a0

    if-le v1, v2, :cond_4

    .line 1495
    if-ne p1, v7, :cond_e

    const/16 v0, 0x36

    .line 1500
    :cond_4
    :goto_4
    return v0

    .line 1471
    :sswitch_0
    if-ne p1, v7, :cond_5

    move v0, v2

    .line 1472
    :goto_5
    goto :goto_4

    :cond_5
    move v0, v3

    .line 1471
    goto :goto_5

    .line 1474
    :sswitch_1
    if-ne p1, v7, :cond_6

    move v0, v4

    .line 1475
    :goto_6
    goto :goto_4

    :cond_6
    move v0, v5

    .line 1474
    goto :goto_6

    .line 1477
    :sswitch_2
    if-ne p1, v7, :cond_7

    const/16 v0, 0x1b

    .line 1478
    :goto_7
    goto :goto_4

    .line 1477
    :cond_7
    const/16 v0, 0x20

    goto :goto_7

    .line 1480
    :sswitch_3
    if-ne p1, v7, :cond_8

    const/16 v0, 0x28

    .line 1481
    :goto_8
    goto :goto_4

    .line 1480
    :cond_8
    const/16 v0, 0x2f

    goto :goto_8

    .line 1483
    :sswitch_4
    if-ne p1, v7, :cond_9

    const/16 v0, 0x36

    .line 1484
    :goto_9
    goto :goto_4

    .line 1483
    :cond_9
    const/16 v0, 0x3f

    goto :goto_9

    :cond_a
    move v0, v3

    .line 1487
    goto :goto_0

    :cond_b
    move v0, v5

    .line 1489
    goto :goto_1

    .line 1491
    :cond_c
    const/16 v0, 0x20

    goto :goto_2

    .line 1493
    :cond_d
    const/16 v0, 0x2f

    goto :goto_3

    .line 1495
    :cond_e
    const/16 v0, 0x3f

    goto :goto_4

    .line 1469
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x2d0 -> :sswitch_2
        0x320 -> :sswitch_1
        0x438 -> :sswitch_3
        0x5a0 -> :sswitch_4
    .end sparse-switch
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 428
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 394
    const-string v0, ""

    .line 395
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 396
    .local v1, "uuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&s_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getUserAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCurrentDuration()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1730
    :try_start_0
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1731
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1736
    :cond_0
    :goto_0
    return v1

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initView()V
    .locals 14

    .prologue
    .line 535
    :try_start_0
    new-instance v9, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    .line 536
    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x1000000

    invoke-direct {p0, v9, v10, v11}, Lcom/mapps/android/view/AdVideoPlayer;->rootLayoutSetting(III)V

    .line 537
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->addView(Landroid/view/View;)V

    .line 538
    new-instance v9, Landroid/view/SurfaceView;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    .line 539
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 540
    .local v3, "gprogress":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xd

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 541
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    .line 542
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 543
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-ge v9, v10, :cond_0

    .line 544
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 546
    :cond_0
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 547
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 548
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 550
    new-instance v9, Landroid/widget/ProgressBar;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    .line 551
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 552
    .local v7, "pgrams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 554
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 555
    .local v6, "pgramADcount":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 556
    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 557
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 558
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    .line 559
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    .line 560
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 561
    .local v4, "lparam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const-string v10, "#99000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 563
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const-string v10, "#ffffff"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 565
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 566
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/high16 v10, 0x40400000    # 3.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "#000000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 567
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 568
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    iget v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    iget v11, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v11

    iget v12, p0, Lcom/mapps/android/view/AdVideoPlayer;->percent:I

    mul-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 572
    :try_start_1
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    if-eqz v9, :cond_1

    .line 573
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    invoke-virtual {v9}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v1

    .line 574
    .local v1, "adListLen":I
    if-lez v1, :cond_1

    .line 575
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTMovie;->getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;

    move-result-object v0

    .line 576
    .local v0, "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getSkipoffset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, ""

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getSkipoffset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 577
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getSkipoffset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v9, v10

    iput v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    .line 581
    :goto_0
    iget v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v9, :cond_4

    .line 582
    new-instance v8, Landroid/text/SpannableStringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\uad11\uace0 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\ucd08"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 583
    .local v8, "sps":Landroid/text/SpannableStringBuilder;
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v10, 0x3

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    const/16 v12, 0x21

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 584
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 595
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v1    # "adListLen":I
    .end local v8    # "sps":Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_1
    :try_start_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 596
    .local v5, "pgramADclick":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 597
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 598
    const/4 v9, 0x2

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getId()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 599
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/mapps/android/view/AdVideoPlayer;->getGapDensty(I)I

    move-result v10

    add-int/2addr v10, v9

    iget v11, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    iget v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lez v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p0, v11, v9}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v9

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 600
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    .line 601
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v9, "\uad11\uace0\uc815\ubcf4 \ub354\ubcf4\uae30"

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 602
    .restart local v8    # "sps":Landroid/text/SpannableStringBuilder;
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/16 v12, 0x21

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 603
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/mapps/android/view/AdVideoPlayer;->getTextPx(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 605
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 606
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const-string v10, "#99000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 607
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    iget v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->width:I

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 608
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 609
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    iget v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->height:I

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/mapps/android/view/AdVideoPlayer;->getImgSize(IZ)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHeight(I)V

    .line 610
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const-string v10, "#f7f524"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 612
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    .line 614
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    const/high16 v10, 0x40400000    # 3.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "#000000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 616
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v9, v10, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->blayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->progressbar_buffer:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v10, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdClick:Landroid/widget/TextView;

    new-instance v10, Lcom/mapps/android/view/AdVideoPlayer$12;

    invoke-direct {v10, p0}, Lcom/mapps/android/view/AdVideoPlayer$12;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_AdCount:Landroid/widget/TextView;

    new-instance v10, Lcom/mapps/android/view/AdVideoPlayer$13;

    invoke-direct {v10, p0}, Lcom/mapps/android/view/AdVideoPlayer$13;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    new-instance v9, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    invoke-direct {v9, p0}, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 653
    :try_start_3
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    .line 654
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->tm:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/mapps/android/view/AdVideoPlayer;->phoneStateListener:Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;

    const/16 v11, 0x20

    invoke-virtual {v9, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 659
    :goto_3
    :try_start_4
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    if-nez v9, :cond_2

    .line 660
    const/4 v9, -0x1

    invoke-direct {p0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    .line 661
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 663
    :cond_2
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->handlerErr:Landroid/os/Handler;

    new-instance v10, Lcom/mapps/android/view/AdVideoPlayer$14;

    invoke-direct {v10, p0}, Lcom/mapps/android/view/AdVideoPlayer$14;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 672
    const-wide/16 v12, 0x1388

    .line 663
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 680
    .end local v3    # "gprogress":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "pgramADclick":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "pgramADcount":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "pgrams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "sps":Landroid/text/SpannableStringBuilder;
    :goto_4
    return-void

    .line 579
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v1    # "adListLen":I
    .restart local v3    # "gprogress":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "pgramADcount":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7    # "pgrams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v9, 0x0

    :try_start_5
    iput v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 592
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v1    # "adListLen":I
    :catch_0
    move-exception v2

    .line 593
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 673
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gprogress":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "pgramADcount":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "pgrams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_1
    move-exception v2

    .line 675
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const/4 v9, -0x1

    invoke-direct {p0, v9}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    .line 677
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    goto :goto_4

    .line 586
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v1    # "adListLen":I
    .restart local v3    # "gprogress":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "pgramADcount":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7    # "pgrams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    :try_start_7
    iget-object v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->adbean:Lcom/mezzo/common/network/data/DataNTMovie;

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getDuration()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 587
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getDuration()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mapps/android/share/ShareUtil;->getHHtoSec(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v9, v10

    iput v9, p0, Lcom/mapps/android/view/AdVideoPlayer;->viewOver:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 599
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v1    # "adListLen":I
    .restart local v5    # "pgramADclick":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 655
    .restart local v8    # "sps":Landroid/text/SpannableStringBuilder;
    :catch_2
    move-exception v2

    .line 657
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 1702
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 1644
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 792
    iput p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->Buffper:I

    .line 793
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 770
    iput v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    .line 771
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataTracking;->getEvent_traking()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_complete_api:Lcom/mezzo/common/network/data/DataTracking;

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 777
    :cond_0
    invoke-direct {p0, v2}, Lcom/mapps/android/view/AdVideoPlayer;->progressSend(Z)V

    .line 778
    invoke-direct {p0, v2}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    .line 779
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 780
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1647
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1649
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$21;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$21;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    .line 1656
    .local v0, "runable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1659
    .end local v0    # "runable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1635
    invoke-static {}, Lcom/mapps/android/network/TraceGPS;->GpsTraceStop()V

    .line 1636
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 1638
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalize()V

    .line 363
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalizeimage()V

    .line 364
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 365
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 784
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mapps/android/listner/AdVideoPlayerErrorListener;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mapps/android/listner/AdVideoPlayerErrorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mapps/android/listner/AdVideoPlayerErrorListener;->onError(Landroid/media/MediaPlayer;II)V

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1629
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    .line 1631
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 761
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 762
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    if-nez v0, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback()V

    .line 766
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    .line 1624
    iget v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    .line 1625
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 714
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 715
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$15;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$15;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 747
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    .line 751
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 752
    iget-boolean v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mbStartMediaPlay:Z

    if-nez v0, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback()V

    goto :goto_0
.end method

.method public playVideo()V
    .locals 3

    .prologue
    .line 1198
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1199
    invoke-direct {p0}, Lcom/mapps/android/view/AdVideoPlayer;->doCleanUp()V

    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->misStart:Z

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->getMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1203
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1204
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->mVideoURI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1206
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1207
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1208
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1209
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1210
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1211
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1212
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1213
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :cond_1
    :goto_0
    return-void

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, -0x320

    invoke-direct {p0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    .line 1216
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    goto :goto_0
.end method

.method public selfDestoryPlayer()V
    .locals 2

    .prologue
    .line 1613
    :try_start_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1614
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->setfinish()V

    .line 1620
    return-void

    .line 1616
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAccount:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setAdVideoPlayerErrorListner(Lcom/mapps/android/listner/AdVideoPlayerErrorListener;)V
    .locals 0
    .param p1, "mpErrorListner"    # Lcom/mapps/android/listner/AdVideoPlayerErrorListener;

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerErrorListner:Lcom/mapps/android/listner/AdVideoPlayerErrorListener;

    .line 517
    :cond_0
    return-void
.end method

.method public setAdVideoPlayerListner(Lcom/mapps/android/listner/AdVideoPlayerListener;)V
    .locals 0
    .param p1, "mpListner"    # Lcom/mapps/android/listner/AdVideoPlayerListener;

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 509
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mapps/android/listner/AdVideoPlayerListener;

    .line 511
    :cond_0
    return-void
.end method

.method public setAdVideoPlayerStartListner(Lcom/mapps/android/listner/AdVideoPlayerListenerStart;)V
    .locals 0
    .param p1, "listener"    # Lcom/mapps/android/listner/AdVideoPlayerListenerStart;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerStartListner:Lcom/mapps/android/listner/AdVideoPlayerListenerStart;

    .line 521
    return-void
.end method

.method public setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publisher"    # Ljava/lang/String;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_publisher:Ljava/lang/String;

    .line 422
    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_media:Ljava/lang/String;

    .line 423
    iput-object p3, p0, Lcom/mapps/android/view/AdVideoPlayer;->a_section:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setCateContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cate"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate:Ljava/lang/String;

    .line 403
    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_Cate_content:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserMail:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setLoaction(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 471
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$10;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdVideoPlayer$10;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 478
    const-string/jumbo v2, "setLoaction"

    .line 471
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    return-void
.end method

.method public setPakageInfo(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 482
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$11;

    invoke-direct {v1, p0, p1}, Lcom/mapps/android/view/AdVideoPlayer$11;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 489
    const-string/jumbo v2, "setPakageInfo"

    .line 482
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 490
    return-void
.end method

.method public setPause()V
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1708
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1714
    :cond_0
    return-void
.end method

.method public setRestart()V
    .locals 4

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1719
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1722
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mPreview:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1726
    :cond_0
    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserAge"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserAge:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserGender"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mUserGender:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setVcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 466
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 467
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->m_vcode:Ljava/lang/String;

    .line 468
    :cond_0
    return-void
.end method

.method public setVideoMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1267
    iput p1, p0, Lcom/mapps/android/view/AdVideoPlayer;->mScreenMode:I

    .line 1268
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->handler_surface:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$19;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdVideoPlayer$19;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1278
    :cond_0
    return-void
.end method

.method public setfinish()V
    .locals 0

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalize()V

    .line 494
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalizeimage()V

    .line 495
    return-void
.end method

.method public setloction(Ljava/lang/String;I)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cal"    # I

    .prologue
    .line 1025
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/mapps/android/view/AdVideoPlayer$18;-><init>(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1129
    return-void
.end method

.method public showAd()V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->finalize()V

    .line 202
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mapps/android/view/AdVideoPlayer$7;

    invoke-direct {v3, p0}, Lcom/mapps/android/view/AdVideoPlayer$7;-><init>(Lcom/mapps/android/view/AdVideoPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const/16 v0, -0x64

    invoke-direct {p0, v0}, Lcom/mapps/android/view/AdVideoPlayer;->onAdPlayerReceive(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 728
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 732
    if-eqz p1, :cond_0

    .line 733
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/mapps/android/view/AdVideoPlayer;->playVideo()V

    .line 737
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 742
    return-void
.end method
