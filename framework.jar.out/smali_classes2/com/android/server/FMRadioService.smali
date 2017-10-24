.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$10;,
        Lcom/android/server/FMRadioService$11;,
        Lcom/android/server/FMRadioService$12;,
        Lcom/android/server/FMRadioService$13;,
        Lcom/android/server/FMRadioService$14;,
        Lcom/android/server/FMRadioService$15;,
        Lcom/android/server/FMRadioService$16;,
        Lcom/android/server/FMRadioService$17;,
        Lcom/android/server/FMRadioService$1;,
        Lcom/android/server/FMRadioService$2;,
        Lcom/android/server/FMRadioService$3;,
        Lcom/android/server/FMRadioService$4;,
        Lcom/android/server/FMRadioService$5;,
        Lcom/android/server/FMRadioService$6;,
        Lcom/android/server/FMRadioService$7;,
        Lcom/android/server/FMRadioService$8;,
        Lcom/android/server/FMRadioService$9;,
        Lcom/android/server/FMRadioService$ListenerRecord;,
        Lcom/android/server/FMRadioService$ScanThread;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_APP_LOCK_CHANGED:Ljava/lang/String; = "com.samsung.applock.intent.action.APP_LOCK_CHANGED"

.field private static final ACTION_BACKGROUND_PLAY:Ljava/lang/String; = "com.android.backgroung.playing"

.field private static final ACTION_CAMERA_START:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_START"

.field private static final ACTION_DNS_PAUSE_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.pause_internet_stream"

.field private static final ACTION_DNS_RESUME_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.resume_internet_stream"

.field private static final ACTION_DNS_STOP_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.stop_internet_stream"

.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final ACTION_SAVE_FMRECORDING_ONLY:Ljava/lang/String; = "com.samsung.media.save_fmrecording_only"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.sec.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.sec.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DELAY_WAITING_STREAM_STOPPED:I = 0x96

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final FACTORY_APP_NAME:Ljava/lang/String; = "com.sec.factory.app.fm"

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.sec.android.fm.return_back_volume"

.field private static final KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final NEXTRADIO_NAME:Ljava/lang/String; = "com.nextradioapp.nextradio"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field private static final PACKAGE_NAME_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final PARAMETER_AFRMSSI_SAMPLES:Ljava/lang/String; = "AFRMSSISamples"

.field private static final PARAMETER_AFRMSSI_TH:Ljava/lang/String; = "AFRMSSIThreshold"

.field private static final PARAMETER_AF_TH:Ljava/lang/String; = "AF_th"

.field private static final PARAMETER_AF_VALID_TH:Ljava/lang/String; = "AFValid_th"

.field private static final PARAMETER_BLEND_RMSSI:Ljava/lang/String; = "BlendRmssi"

.field private static final PARAMETER_BLEND_SINR:Ljava/lang/String; = "BlendSinr"

.field private static final PARAMETER_CFO_TH:Ljava/lang/String; = "CFOTh12"

.field private static final PARAMETER_CURRENT_RSSI:Ljava/lang/String; = "CurrentRSSI"

.field private static final PARAMETER_CURRENT_SNR:Ljava/lang/String; = "CurrentSNR"

.field private static final PARAMETER_DE_CONSTANT:Ljava/lang/String; = "DEConstant"

.field private static final PARAMETER_FIRST_CNT_TH:Ljava/lang/String; = "Cnt_th"

.field private static final PARAMETER_FIRST_RSSI_TH:Ljava/lang/String; = "RSSI_th"

.field private static final PARAMETER_FIRST_SNR_TH:Ljava/lang/String; = "SNR_th"

.field public static final PARAMETER_FREQUENCY_OFFSET_TH:Ljava/lang/String; = "FrequencyOffset_th"

.field private static final PARAMETER_GOOD_CH_RMSSI_TH:Ljava/lang/String; = "GoodChannelRMSSIThreshold"

.field private static final PARAMETER_HYBRID_SEARCH:Ljava/lang/String; = "HybridSearch"

.field public static final PARAMETER_IF_COUNT_1:Ljava/lang/String; = "IFCount1"

.field public static final PARAMETER_IF_COUNT_2:Ljava/lang/String; = "IFCount2"

.field public static final PARAMETER_NOISE_POWER_TH:Ljava/lang/String; = "NoisePower_th"

.field private static final PARAMETER_OFF_CHANNEL_TH:Ljava/lang/String; = "OffChannelThreshold"

.field private static final PARAMETER_ON_CHANNEL_TH:Ljava/lang/String; = "OnChannelThreshold"

.field public static final PARAMETER_PILOT_POWER_TH:Ljava/lang/String; = "PilotPower_th"

.field private static final PARAMETER_RMSSI_FIRST_STAGE:Ljava/lang/String; = "RMSSIFirstStage"

.field private static final PARAMETER_SEARCH_ALGO_TYPE:Ljava/lang/String; = "SearchAlgoType"

.field private static final PARAMETER_SECOND_CNT_TH:Ljava/lang/String; = "Cnt_th_2"

.field private static final PARAMETER_SECOND_RSSI_TH:Ljava/lang/String; = "RSSI_th_2"

.field private static final PARAMETER_SECOND_SNR_TH:Ljava/lang/String; = "SNR_th_2"

.field private static final PARAMETER_SEEK_DC:Ljava/lang/String; = "SeekDC"

.field private static final PARAMETER_SEEK_QA:Ljava/lang/String; = "SeekQA"

.field private static final PARAMETER_SEEK_RSSI:Ljava/lang/String; = "SeekRSSI"

.field private static final PARAMETER_SEEK_SNR:Ljava/lang/String; = "SeekSNR"

.field private static final PARAMETER_SINR_FIRST_STAGE:Ljava/lang/String; = "SINRFirstStage"

.field private static final PARAMETER_SINR_SAMPLES:Ljava/lang/String; = "SINRSamples"

.field private static final PARAMETER_SINR_TH:Ljava/lang/String; = "SINRThreshold"

.field private static final PARAMETER_SKIP_TUNNING_VALUE:Ljava/lang/String; = "SkipTuningValue"

.field public static final PARAMETER_SOFTMUTE_COEFF:Ljava/lang/String; = "SoftMuteCoeff"

.field public static final PARAMETER_SOFT_STEREO_BLEND_COEFF:Ljava/lang/String; = "SoftStereoBlendCoeff"

.field public static final PAUSED:I = 0xb

.field private static final RECORDING_END:I = 0x0

.field private static final RECORDING_START:I = 0x1

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "fm_radio_mute=1"

.field private static final audioUnMute:Ljava/lang/String; = "fm_radio_mute=0"

.field private static curFreq:J

.field private static final mFMRadioServiceLock:Ljava/lang/Object;

.field private static mIsSetWakeKey:Z

.field private static mIsTransientPaused:Z


# instance fields
.field private SetPropertyPermission:Ljava/lang/String;

.field private VolumePropertyname:Ljava/lang/String;

.field private alarmTTSPlay:Z

.field private bmObserver:Landroid/database/ContentObserver;

.field private fos:Ljava/io/FileOutputStream;

.field private isFMBackGroundPlaying:Z

.field private mAFEnable:Z

.field private mAfRmssisampleCnt_th:I

.field private mAfRmssith_th:I

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field final mAudioFocusHandler:Landroid/os/Handler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBand:I

.field private mBikeMode:Z

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mChipVendor:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private mDNSEnable:Z

.field private final mEmergencyReceiver:Landroid/content/BroadcastReceiver;

.field private mFmOff:Ljava/lang/String;

.field private mFmOn:Ljava/lang/String;

.field private mFreqOffset_th:I

.field final mHandler:Landroid/os/Handler;

.field private mInternetStreamingMode:Z

.field public mIsAudioFocusAlive:Z

.field private mIsBatteryLow:Z

.field private mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsSeeking:Z

.field private mIsSkipTunigVal:Z

.field private mIsTestMode:Z

.field private mIsTvOutPlugged:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMarvell_cmi:I

.field private mMarvell_rssi:I

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mNoisePwr_th:I

.field private mOnProgress:Z

.field private mPilotPwr_th:I

.field private mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mQualcomm_af_rmssisamplecnt:I

.field private mQualcomm_af_rmssith:I

.field private mQualcomm_cfoth12:I

.field private mQualcomm_offchannel:I

.field private mQualcomm_onchannel:I

.field private mQualcomm_rmssi_firststate:I

.field private mQualcomm_sinr_samplecnt:I

.field private mRDSEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mReturnBackVolume:I

.field private mRichwave_rssi:I

.field private mRichwave_seekDC:I

.field private mRichwave_seekQA:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private mScanVolume:I

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSilicon_cnt:I

.field private mSilicon_rssi:I

.field private mSilicon_snr:I

.field private mSlsi_blendcoeff:J

.field private mSlsi_ifcount1:I

.field private mSlsi_ifcount2:I

.field private mSlsi_rssi:I

.field private mSlsi_softmutecoeff:J

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver2:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpKeyFileName:Ljava/lang/String;

.field private mWakeUpKeyFilePath:Ljava/lang/String;

.field private mgoodChrmssi_th:I

.field private platform:Ljava/lang/String;

.field private volumeLock:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/FMRadioService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic -get17(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide v0
.end method

.method static synthetic -get21(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static synthetic -get22(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static synthetic -get25(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/FMRadioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/FMRadioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/FMRadioService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide p1
.end method

.method static synthetic -set12(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/FMRadioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mScanVolume:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/FMRadioService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/FMRadioService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/server/FMRadioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/FMRadioService;ZIZ)Z
    .locals 1
    .param p1, "isModeToSet"    # Z
    .param p2, "reasonCode"    # I
    .param p3, "needToRemoveFocusListener"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleBikeMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/FMRadioService;IJ)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseAudioSystemMute()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/FMRadioService;I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/FMRadioService;I)V
    .locals 0
    .param p1, "focusEvent"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/FMRadioService;III)V
    .locals 0
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->stopInternetStreaming()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    .line 144
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/server/FMRadioService;->curFreq:J

    .line 151
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    .line 262
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    .line 62
    return-void

    :cond_0
    move v0, v1

    .line 65
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1355
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    .line 131
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 139
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    .line 141
    const-wide/16 v6, -0x2

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 152
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 157
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    .line 158
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    .line 160
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->isFMBackGroundPlaying:Z

    .line 222
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    .line 226
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    .line 231
    const-string/jumbo v2, "com.sec.android.app.fm.permission.setproperty"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    .line 232
    const-string/jumbo v2, "service.brcm.fm.volumetable"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    .line 234
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 235
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 236
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 237
    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 238
    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 239
    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 240
    iput v3, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 241
    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 242
    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 243
    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 244
    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    .line 245
    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 246
    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 247
    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    .line 249
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 250
    iput v9, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 251
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 256
    iput-object v5, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 257
    const-string/jumbo v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 258
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 259
    const-string/jumbo v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 260
    const-string/jumbo v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 265
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 270
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 273
    iput v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    .line 276
    iput v4, p0, Lcom/android/server/FMRadioService;->mSilicon_rssi:I

    .line 277
    iput v8, p0, Lcom/android/server/FMRadioService;->mSilicon_snr:I

    .line 278
    iput v3, p0, Lcom/android/server/FMRadioService;->mSilicon_cnt:I

    .line 279
    const/16 v2, -0x71

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    .line 280
    const/16 v2, 0x6d

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    .line 281
    const/16 v2, 0x73

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    .line 282
    iput v9, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    .line 283
    const/16 v2, 0x3a98

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    .line 284
    const/16 v2, 0x35

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    .line 285
    const/16 v2, 0x50

    iput v2, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    .line 286
    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_rssi:I

    .line 287
    iput v4, p0, Lcom/android/server/FMRadioService;->mMarvell_cmi:I

    .line 288
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    .line 289
    const/16 v2, 0x40

    iput v2, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 290
    const/16 v2, 0x50

    iput v2, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    .line 291
    const/16 v2, 0x92

    iput v2, p0, Lcom/android/server/FMRadioService;->mSlsi_rssi:I

    .line 292
    const/16 v2, 0x1388

    iput v2, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 293
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 294
    const-wide/16 v6, 0xc64

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 295
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    .line 297
    new-instance v2, Lcom/android/server/FMRadioService$1;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 445
    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 467
    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    .line 476
    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    .line 678
    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 699
    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 722
    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver2:Landroid/content/BroadcastReceiver;

    .line 752
    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    .line 792
    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    new-instance v2, Lcom/android/server/FMRadioService$12;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 862
    new-instance v2, Lcom/android/server/FMRadioService$13;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    .line 891
    new-instance v2, Lcom/android/server/FMRadioService$14;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    .line 919
    new-instance v2, Lcom/android/server/FMRadioService$15;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 947
    new-instance v2, Lcom/android/server/FMRadioService$16;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    .line 2111
    iput-object v5, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 3317
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 3329
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    .line 3352
    new-instance v2, Lcom/android/server/FMRadioService$17;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    .line 1356
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    .line 1357
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readChipVendor()V

    .line 1359
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v2, v8, :cond_0

    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    .line 1360
    :cond_0
    new-instance v2, Lcom/android/server/FMPlayerNativeBRCM;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNativeBRCM;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    .line 1365
    :goto_0
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 1366
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1368
    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1370
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v5, "FMRadio Service"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1373
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1374
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1375
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1377
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1380
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v1, "intentFilterVol":Landroid/content/IntentFilter;
    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1382
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1385
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.sec.android.fm.volume_lock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1386
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1388
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.sec.android.fm.volume_unlock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1389
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1392
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1393
    const-string/jumbo v5, "airplane_mode_on"

    .line 1392
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    .line 1394
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAirPlaneEnabled flag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1395
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1396
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1398
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1399
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1401
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1402
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1403
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1404
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1406
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    .line 1408
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    .line 1411
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    .line 1412
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    .line 1415
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "isBikeMode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1416
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "isBikeMode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 1418
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1421
    iget-object v2, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1422
    const-string/jumbo v2, "exynos4"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "msm8960"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1423
    :cond_1
    const-string/jumbo v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1424
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1425
    const-string/jumbo v2, "102,114,115,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1426
    const-string/jumbo v2, "102,116,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .line 1355
    :cond_2
    :goto_3
    return-void

    .line 1362
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    :cond_3
    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    goto/16 :goto_0

    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    :cond_4
    move v2, v4

    .line 1392
    goto/16 :goto_1

    :cond_5
    move v3, v4

    .line 1416
    goto :goto_2

    .line 1427
    :cond_6
    const-string/jumbo v2, "msm7627a"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "msm7k"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1428
    :cond_7
    const-string/jumbo v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1429
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1430
    const-string/jumbo v2, "1"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1431
    const-string/jumbo v2, "0"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_3

    .line 1432
    :cond_8
    const-string/jumbo v2, "montblanc"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1433
    const-string/jumbo v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1434
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1435
    const-string/jumbo v2, "114,115,172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1436
    const-string/jumbo v2, "172"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_3

    .line 1437
    :cond_9
    const-string/jumbo v2, "mrvl"

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1438
    const-string/jumbo v2, "/sys/devices/platform/pxa27x-keypad/power/"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1439
    const-string/jumbo v2, "wakeup"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    .line 1440
    const-string/jumbo v2, "enabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 1441
    const-string/jumbo v2, "disabled"

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    goto :goto_3
.end method

.method private SkipTuning_Value()V
    .locals 2

    .prologue
    .line 2534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2535
    const-string/jumbo v0, "FMRadioService"

    const-string/jumbo v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1942
    const-string/jumbo v0, "Lock is held"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1938
    :cond_0
    return-void
.end method

.method private checkForWakeLockRelease()V
    .locals 1

    .prologue
    .line 2228
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-nez v0, :cond_0

    .line 2229
    const-string/jumbo v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2230
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    goto :goto_0
.end method

.method private clearMessageQueue()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    return-void
.end method

.method private closeFile()V
    .locals 2

    .prologue
    .line 3104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 3105
    iget-object v1, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3102
    :cond_0
    :goto_0
    return-void

    .line 3107
    :catch_0
    move-exception v0

    .line 3109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .locals 4
    .param p1, "longObArray"    # [Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 2484
    if-eqz p1, :cond_1

    .line 2485
    array-length v2, p1

    new-array v1, v2, [J

    .line 2486
    .local v1, "longArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2487
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2489
    :cond_0
    return-object v1

    .line 2492
    .end local v0    # "i":I
    .end local v1    # "longArray":[J
    :cond_1
    return-object v2
.end method

.method private getAFRMSSISamples()I
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method private getAFRMSSIThreshold()I
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getAFValid_th()I
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFValid_th()I

    move-result v0

    return v0
.end method

.method private getAF_th()I
    .locals 1

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAF_th()I

    move-result v0

    return v0
.end method

.method private getBlendRmssi()I
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendRmssi()I

    move-result v0

    return v0
.end method

.method private getBlendSinr()I
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendSinr()I

    move-result v0

    return v0
.end method

.method private getCFOTh12()I
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method private getCnt_th()I
    .locals 1

    .prologue
    .line 2547
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method private getCnt_th_2()I
    .locals 1

    .prologue
    .line 2559
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method private getFrequencyOffsetThreshold()I
    .locals 1

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0
.end method

.method private getGoodChannelRMSSIThreshold()I
    .locals 1

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getHybridSearch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIFCount1()I
    .locals 1

    .prologue
    .line 2759
    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    return v0
.end method

.method private getIFCount2()I
    .locals 1

    .prologue
    .line 2763
    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    return v0
.end method

.method private getNoisePowerThreshold()I
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getNoisePowerThreshold()I

    move-result v0

    return v0
.end method

.method private getOffChannelThreshold()I
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getOnChannelThreshold()I
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getPilotPowerThreshold()I
    .locals 1

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getPilotPowerThreshold()I

    move-result v0

    return v0
.end method

.method private getPropertyProductName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3338
    const/4 v0, 0x0

    .line 3339
    .local v0, "productName":Ljava/lang/String;
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3340
    .local v0, "productName":Ljava/lang/String;
    return-object v0
.end method

.method private getRMSSIFirstStage()I
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method private getRSSI_th()I
    .locals 1

    .prologue
    .line 2539
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method private getRSSI_th_2()I
    .locals 1

    .prologue
    .line 2551
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method private getSINRFirstStage()I
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method private getSINRSamples()I
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method private getSINRThreshold()I
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method private getSNR_th()I
    .locals 1

    .prologue
    .line 2543
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method private getSNR_th_2()I
    .locals 1

    .prologue
    .line 2555
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method private getSearchAlgoType()I
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method private getSeekDC()I
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekDC()I

    move-result v0

    return v0
.end method

.method private getSeekQA()I
    .locals 1

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekQA()I

    move-result v0

    return v0
.end method

.method private getSoftMuteCoeff()J
    .locals 2

    .prologue
    .line 2781
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    return-wide v0
.end method

.method private getSoftStereoBlendCoeff()J
    .locals 2

    .prologue
    .line 2772
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    return-wide v0
.end method

.method private handleBikeMode()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3343
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 3344
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    if-eqz v0, :cond_1

    .line 3345
    const-string/jumbo v0, "bike mode enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3346
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 3342
    :goto_0
    return-void

    .line 3348
    :cond_1
    const-string/jumbo v0, "bike mode disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isValidPackage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1699
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1700
    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1701
    .local v2, "pkgName":[Ljava/lang/String;
    aget-object v1, v2, v5

    .line 1703
    .local v1, "mPackageName":Ljava/lang/String;
    const-string/jumbo v3, "com.sec.android.app.fm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.nextradioapp.nextradio"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1708
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 1703
    :cond_1
    const-string/jumbo v3, "com.sec.factory.app.fm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown App is trying to turn on Radio. So just return. mPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1705
    return v5
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1348
    const-string/jumbo v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void
.end method

.method private declared-synchronized offInternal(ZIZ)Z
    .locals 12
    .param p1, "isModeToSet"    # Z
    .param p2, "reasonCode"    # I
    .param p3, "needToRemoveFocusListener"    # Z

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 1957
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: reasonCode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1960
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v4, :cond_1

    .line 1962
    if-eqz p3, :cond_0

    .line 1963
    const-string/jumbo v4, "offInternal :: remove audiofocus "

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1964
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit p0

    .line 1966
    return v6

    .line 1970
    :cond_1
    if-eqz p3, :cond_a

    move v4, v5

    :goto_0
    :try_start_1
    sput-boolean v4, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 1971
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1972
    if-eqz p1, :cond_b

    .line 1973
    iget v4, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    if-eq v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semIsRadioSpeakerOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: mReturnBackVolume="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1975
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v7

    iget v8, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 1976
    const/4 v9, 0x0

    .line 1975
    invoke-virtual {v4, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1977
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/FMRadioService;->mReturnBackVolume:I

    .line 1979
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v4, :cond_3

    .line 1980
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    .line 1983
    :cond_3
    const-string/jumbo v2, "fmradio_turnon=false"

    .line 1984
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1986
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_4

    .line 1987
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    .line 1990
    :cond_4
    const-string/jumbo v4, "offInternal Turning off FM radio"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1996
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_c

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 1998
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v4, v10, :cond_5

    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v11, :cond_d

    :cond_5
    const/4 v4, 0x3

    if-ne p2, v4, :cond_d

    .line 1999
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNativeBase;->offFMService()V

    .line 2004
    :goto_3
    const-string/jumbo v4, "off returned from native"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2005
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2006
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2007
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2008
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 2009
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2011
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    if-nez v4, :cond_7

    .line 2012
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMusicCommandRec()V

    .line 2013
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    .line 2016
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v4, :cond_6

    .line 2017
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    .line 2019
    :cond_6
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    .line 2020
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2021
    if-eqz p3, :cond_7

    .line 2022
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterEmegencyStateChangedListener()V

    .line 2024
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 2026
    if-eqz p3, :cond_8

    .line 2027
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2029
    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x6

    invoke-virtual {p0, v7, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2032
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V

    .line 2036
    iget-object v4, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v7, "mrvl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2037
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 2038
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v4}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 2039
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2059
    :cond_9
    :goto_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 2053
    return v6

    :cond_a
    move v4, v6

    .line 1970
    goto/16 :goto_0

    .line 1993
    :cond_b
    :try_start_3
    const-string/jumbo v4, "offInternal NOT Turning off FM radio"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2059
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 2061
    return v5

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    move v4, v6

    .line 1996
    goto/16 :goto_2

    .line 2001
    :cond_d
    :try_start_6
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNativeBase;->off()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 2057
    :catchall_0
    move-exception v4

    .line 2059
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2057
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2041
    :cond_e
    :try_start_8
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    .line 2042
    const-string/jumbo v7, "input"

    .line 2041
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 2043
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v7, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eq v4, v7, :cond_9

    if-eqz v1, :cond_9

    .line 2045
    :try_start_9
    const-string/jumbo v4, "com.sec.android.app.fm"

    iget-boolean v7, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string/jumbo v8, "114,115"

    invoke-virtual {v1, v4, v7, v8}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2049
    :goto_5
    :try_start_a
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v4, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    goto :goto_4

    .line 2046
    :catch_1
    move-exception v3

    .line 2047
    .local v3, "se":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5
.end method

.method private declared-synchronized on(Z)Z
    .locals 11
    .param p1, "isAudioFocusNeeded"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    .line 1712
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    .line 1713
    return v8

    .line 1715
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    .line 1716
    return v8

    .line 1718
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit p0

    .line 1719
    return v8

    .line 1721
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    .line 1723
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    monitor-exit p0

    .line 1724
    return v8

    .line 1727
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v3, v9, :cond_5

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    monitor-exit p0

    .line 1729
    return v8

    .line 1728
    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 1732
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1733
    const-string/jumbo v3, "UPSM Enabling : On failed"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 1734
    return v8

    .line 1737
    :cond_6
    :try_start_6
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_7

    monitor-exit p0

    .line 1738
    return v8

    .line 1741
    :cond_7
    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_8

    monitor-exit p0

    .line 1742
    return v9

    .line 1745
    :cond_8
    if-nez p1, :cond_9

    :try_start_8
    sget-boolean v3, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v3, :cond_9

    .line 1750
    const-string/jumbo v3, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1753
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1754
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_15

    .line 1755
    const-string/jumbo v3, "on returned from native"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1756
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1757
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1758
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1759
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v3, :cond_a

    .line 1760
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 1761
    return v8

    .line 1746
    :cond_9
    :try_start_9
    const-string/jumbo v3, "AudioFocusListener registered"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1747
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    .line 1748
    const/4 v6, 0x1

    .line 1747
    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 1852
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1854
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1855
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1856
    const-string/jumbo v3, "on is failed by exception :: remove audiofocus "

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1857
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1858
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 1859
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 1861
    return v8

    .line 1762
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_b
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 1763
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semIsRadioSpeakerOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->semSetRadioSpeakerOn(Z)V

    .line 1764
    const-string/jumbo v3, "setRadioSpeakerOn() is called."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1766
    :cond_b
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1768
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v9, :cond_c

    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v3, v10, :cond_d

    .line 1769
    :cond_c
    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    if-nez v3, :cond_d

    .line 1770
    const-string/jumbo v3, "set softmute : false"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1771
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 1776
    :cond_d
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v3, v10, :cond_10

    .line 1777
    iget v3, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    .line 1778
    iget v3, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    .line 1779
    iget v3, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    .line 1780
    iget v3, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    .line 1781
    iget v3, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    .line 1782
    iget v3, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setOffChannelThreshold(I)V

    .line 1783
    iget v3, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    .line 1784
    iget v3, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    .line 1785
    iget v3, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    .line 1786
    iget v3, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    .line 1787
    iget v3, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    .line 1810
    :cond_e
    :goto_1
    iget v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->setBand(I)V

    .line 1811
    iget v3, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    .line 1812
    iget v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    .line 1814
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMusicCommandRec()V

    .line 1816
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    .line 1817
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    .line 1818
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    .line 1819
    const-string/jumbo v6, "com.android.backgroung.playing"

    .line 1818
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1820
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerEmergencyStateChangedListener()V

    .line 1824
    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/FMRadioService;->platform:Ljava/lang/String;

    const-string/jumbo v4, "mrvl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1825
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->openFile()V

    .line 1826
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->writeFile(Z)V

    .line 1827
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->closeFile()V

    .line 1841
    :cond_f
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    .line 1843
    return v9

    .line 1788
    :cond_10
    :try_start_c
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11

    .line 1789
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_rssi:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 1790
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    .line 1791
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1792
    :cond_11
    :try_start_d
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_12

    .line 1793
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 1794
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    .line 1795
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    .line 1796
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    goto/16 :goto_1

    .line 1797
    :cond_12
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_13

    .line 1798
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 1799
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    .line 1800
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    invoke-virtual {v3, v4}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    .line 1801
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    .line 1802
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    .line 1803
    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_e

    .line 1804
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    goto/16 :goto_1

    .line 1806
    :cond_13
    iget v3, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v5, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    goto/16 :goto_1

    .line 1829
    :cond_14
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    .line 1830
    const-string/jumbo v4, "input"

    .line 1829
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 1831
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sget-boolean v4, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eq v3, v4, :cond_f

    if-eqz v1, :cond_f

    .line 1833
    :try_start_e
    const-string/jumbo v3, "com.sec.android.app.fm"

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string/jumbo v5, "114,115"

    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1837
    :goto_3
    :try_start_f
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    sput-boolean v3, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    goto/16 :goto_2

    .line 1834
    :catch_1
    move-exception v2

    .line 1835
    .local v2, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1845
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_15
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 1846
    const-string/jumbo v3, "on is failed :: remove audiofocus "

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1847
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1849
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    .line 1850
    return v8
.end method

.method private openFile()V
    .locals 5

    .prologue
    .line 3083
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mWakeUpKeyFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3085
    .local v2, "fileFMRadio":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3087
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3095
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3082
    :goto_1
    return-void

    .line 3088
    :catch_0
    move-exception v1

    .line 3090
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3096
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3098
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private queueUpdate(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1329
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1330
    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1327
    return-void
.end method

.method private readChipVendor()V
    .locals 2

    .prologue
    .line 978
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChipVendor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method private readParametersForCurrentRegion()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1274
    :try_start_0
    const-string/jumbo v1, "87500_108000"

    .line 1275
    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 1274
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1287
    :goto_0
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v1, :sswitch_data_0

    .line 1297
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1303
    :goto_1
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    sparse-switch v1, :sswitch_data_1

    .line 1313
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 1272
    :goto_2
    return-void

    .line 1277
    :cond_0
    const-string/jumbo v1, "76000_108000"

    .line 1278
    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 1277
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1279
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1321
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1322
    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1323
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    .line 1280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "76000_90000"

    .line 1281
    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 1280
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1282
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    .line 1284
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    .line 1289
    :sswitch_0
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    .line 1293
    :sswitch_1
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_1

    .line 1305
    :sswitch_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_2

    .line 1309
    :sswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/FMRadioService;->mDEConstant:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1287
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 1303
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_2
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private readTuningParameters()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 983
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v8, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getPropertyProductName()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "productName":Ljava/lang/String;
    const-string/jumbo v4, "zerolte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 986
    const-string/jumbo v4, "service.brcm.fm.start_snr"

    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    .end local v1    # "productName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_BROADCOM_START_MUTE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "start_mute":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 995
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_BROADCOM_START_SNR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "start_snr":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1001
    const-string/jumbo v4, "service.brcm.fm.start_snr"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_2
    const-string/jumbo v4, ""

    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1006
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_5

    .line 1008
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1007
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1010
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1009
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1012
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1011
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 981
    :cond_3
    :goto_1
    return-void

    .line 988
    .end local v2    # "start_mute":Ljava/lang/String;
    .end local v3    # "start_snr":Ljava/lang/String;
    .restart local v1    # "productName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "j2lte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    .end local v1    # "productName":Ljava/lang/String;
    .restart local v2    # "start_mute":Ljava/lang/String;
    .restart local v3    # "start_snr":Ljava/lang/String;
    :cond_5
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v8, :cond_6

    .line 1015
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1014
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1017
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1019
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1018
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1

    .line 1020
    :cond_6
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v10, :cond_7

    .line 1022
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1023
    iput v6, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1025
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MARVEL_CMI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1024
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto :goto_1

    .line 1026
    :cond_7
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_8

    .line 1028
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1027
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1030
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_ALGO_TYPE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1029
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1032
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_SINR_FIRSTSTAGE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1033
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1034
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1035
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1036
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1037
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1038
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1039
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1041
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1040
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1042
    :cond_8
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 1044
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1046
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1045
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 1048
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1047
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_1

    .line 1049
    :cond_9
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    .line 1051
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1053
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1052
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1055
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1054
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1057
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    .line 1058
    :cond_a
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 1060
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1059
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1062
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1061
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1064
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1063
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1066
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1065
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_1

    .line 1069
    :cond_b
    sget-object v4, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "Local_Tunning_vals":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tuning value size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1072
    array-length v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tuning value size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1075
    :pswitch_0
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_c

    .line 1076
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1078
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1077
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1080
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1079
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    .line 1081
    :cond_c
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v8, :cond_d

    .line 1082
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1085
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1088
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1087
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1090
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1089
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    .line 1091
    :cond_d
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_e

    .line 1092
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1094
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_ALGO_TYPE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1093
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1096
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_SINR_FIRSTSTAGE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1095
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1097
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1098
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1099
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1100
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1101
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1102
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1103
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1105
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1106
    :cond_e
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_f

    .line 1107
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1109
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1108
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 1111
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1110
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_1

    .line 1112
    :cond_f
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_10

    .line 1113
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v6

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1116
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1119
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1118
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1121
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1123
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1122
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    .line 1124
    :cond_10
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 1125
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1127
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1126
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1129
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1128
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1131
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1130
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_1

    .line 1137
    :pswitch_1
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v7, :cond_11

    .line 1138
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1139
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1141
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_CNT_OR_COS"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1140
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    .line 1142
    :cond_11
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_3

    .line 1143
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1144
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1146
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_ALGO_TYPE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1148
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_SINR_FIRSTSTAGE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1147
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1149
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1150
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1151
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1152
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1153
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1154
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1156
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1162
    :pswitch_2
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_12

    .line 1163
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1164
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 1165
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_1

    .line 1166
    :cond_12
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_13

    .line 1167
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1168
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1169
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1171
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1170
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_1

    .line 1173
    :cond_13
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1174
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1175
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    goto/16 :goto_1

    .line 1181
    :pswitch_3
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_14

    .line 1182
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1183
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1184
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1185
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1186
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1187
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1188
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1189
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1190
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1191
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1193
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1192
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_1

    .line 1194
    :cond_14
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_15

    .line 1195
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1196
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1197
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1198
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_1

    .line 1199
    :cond_15
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    .line 1200
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1201
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1202
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1203
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_1

    .line 1205
    :cond_16
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1206
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1207
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1208
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v8, :cond_3

    .line 1209
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v10

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1217
    :pswitch_4
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v9, :cond_17

    .line 1218
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1219
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1220
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1221
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1222
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    .line 1223
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1224
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1225
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1226
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1227
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1228
    iget v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v4, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    goto/16 :goto_1

    .line 1229
    :cond_17
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_18

    .line 1230
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1231
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1232
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1233
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    .line 1234
    const-string/jumbo v4, "service.brcm.fm.start_mute"

    aget-object v5, v0, v9

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1236
    :cond_18
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_19

    .line 1237
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1238
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1239
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1240
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 1241
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    goto/16 :goto_1

    .line 1243
    :cond_19
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1244
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1245
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1246
    iget v4, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v4, v8, :cond_3

    .line 1247
    const-string/jumbo v4, "service.brcm.fm.start_snr"

    aget-object v5, v0, v10

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string/jumbo v4, "service.brcm.fm.stop_snr"

    aget-object v5, v0, v9

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string/jumbo v4, "service.brcm.fm.set_blndmute"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1256
    :pswitch_5
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1257
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1258
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1259
    aget-object v4, v0, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1260
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1261
    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    goto/16 :goto_1

    .line 1072
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .locals 3

    .prologue
    .line 937
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 938
    .local v0, "intentAlarmFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 940
    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method private registerAllSoundOffListener()V
    .locals 3

    .prologue
    .line 908
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 909
    .local v0, "intentAllSoundOffFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 911
    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method private registerBatteryListener()V
    .locals 3

    .prologue
    .line 1447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1448
    .local v0, "intentFilterBattery":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1449
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1450
    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1446
    return-void
.end method

.method private registerEmergencyStateChangedListener()V
    .locals 3

    .prologue
    .line 966
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 967
    .local v0, "intentEmergencyFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 969
    const-string/jumbo v1, "registering Emergency State Changed Listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method private registerMusicCommandRec()V
    .locals 3

    .prologue
    .line 1865
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1866
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1867
    const-string/jumbo v1, "music command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method private registerSetPropertyListener()V
    .locals 5

    .prologue
    .line 1479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1480
    .local v0, "intentFilterSetProperty":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1481
    const-string/jumbo v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1483
    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method private registerSystemListener()V
    .locals 3

    .prologue
    .line 1459
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1460
    .local v0, "intentSystemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1463
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1464
    .restart local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1465
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1466
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1467
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1468
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1469
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1470
    .restart local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.applock.intent.action.APP_LOCK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1458
    return-void
.end method

.method private releaseAudioSystemMute()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 817
    const-string/jumbo v1, "releaseAudioSystemMute "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 820
    .local v0, "ringermode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v5, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 823
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v5, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 816
    .end local v0    # "ringermode":I
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1934
    const-string/jumbo v0, "Lock is released"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1931
    :cond_0
    return-void
.end method

.method private remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 2096
    sget-object v4, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2097
    :try_start_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    monitor-exit v4

    .line 2098
    return-void

    .line 2100
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2101
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2102
    .local v2, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 2103
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2104
    .local v0, "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 2105
    return-void

    .line 2100
    .end local v0    # "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_3
    monitor-exit v4

    .line 2094
    return-void

    .line 2096
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private respondAudioFocusChangeForDns(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respondAudioFocusChangeForDns()-focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 541
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v1, :cond_0

    .line 542
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x0

    .line 544
    .local v0, "action":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 558
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 538
    return-void

    .line 546
    .restart local v0    # "action":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "com.sec.android.app.dns.action.stop_internet_stream"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 550
    .local v0, "action":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "com.sec.android.app.dns.action.pause_internet_stream"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 553
    .local v0, "action":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "com.sec.android.app.dns.action.resume_internet_stream"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private responedFocusEvent(I)V
    .locals 9
    .param p1, "focusEvent"    # I

    .prologue
    const/16 v8, 0xc8

    const/16 v5, 0x11

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 563
    packed-switch p1, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 566
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_1

    .line 568
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 573
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_2

    .line 574
    const-string/jumbo v1, "AUDIOFOCUS_LOSS - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 575
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 581
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 582
    invoke-direct {p0, v6, v7, v6}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1

    .line 579
    :cond_2
    const-string/jumbo v1, "AUDIOFOCUS_LOSS - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 583
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_0

    .line 584
    const-string/jumbo v1, "still in progress"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 592
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 593
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_5

    .line 594
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 598
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_4

    .line 599
    const-string/jumbo v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 600
    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 602
    :cond_4
    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 603
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto :goto_0

    .line 596
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_3

    .line 605
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 612
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v1, :cond_7

    .line 614
    const-string/jumbo v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 616
    :cond_7
    const-string/jumbo v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 617
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_8

    .line 618
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 622
    :goto_4
    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    .line 623
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    goto/16 :goto_0

    .line 620
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_4

    .line 630
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v1, :cond_0

    .line 631
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V

    .line 632
    invoke-direct {p0, v7}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 634
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 633
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->semSetRadioSpeakerOn(Z)V

    .line 637
    sget-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v1, :cond_b

    .line 638
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowly increase the volume till :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 640
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    .line 641
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    .line 642
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 643
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 644
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 649
    :goto_5
    sput-boolean v7, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 658
    :goto_6
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_9

    .line 659
    const-wide/32 v2, 0x155cc

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 661
    :cond_9
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    .line 662
    iget-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 666
    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto/16 :goto_0

    .line 646
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    .line 647
    iget-wide v4, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v3, v4

    .line 646
    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_5

    .line 651
    :cond_b
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    .line 652
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 651
    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_6

    .line 668
    :cond_c
    const-string/jumbo v1, "Not able to resume FM player"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .locals 2

    .prologue
    .line 2067
    const-string/jumbo v1, "Sending broadcast FM is in OFF state"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2068
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2069
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2070
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2066
    return-void
.end method

.method private setAFRMSSISamples(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSISamples(I)V

    .line 2663
    return-void
.end method

.method private setAFRMSSIThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSIThreshold(I)V

    .line 2655
    return-void
.end method

.method private setAFValid_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFValid_th(I)V

    .line 2570
    return-void
.end method

.method private setAF_th(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAF_th(I)V

    .line 2562
    return-void
.end method

.method private setBlendRmssi(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendRmssi(I)V

    .line 2687
    return-void
.end method

.method private setBlendSinr(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendSinr(I)V

    .line 2695
    return-void
.end method

.method private setCFOTh12(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setCFOTh12(I)V

    .line 2631
    return-void
.end method

.method private setCnt_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2518
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 2517
    return-void
.end method

.method private setCnt_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2530
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 2529
    return-void
.end method

.method private setDEConstant(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setDEConstant(J)V

    .line 2495
    return-void
.end method

.method private setFrequencyOffsetThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    .line 2705
    return-void
.end method

.method private setGoodChannelRMSSIThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setGoodChannelRMSSIThreshold(I)V

    .line 2671
    return-void
.end method

.method private setHybridSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setHybridSearch(Ljava/lang/String;)V

    .line 2679
    return-void
.end method

.method private setIFCount1(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2749
    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 2750
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    .line 2748
    return-void
.end method

.method private setIFCount2(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2754
    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 2755
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    .line 2753
    return-void
.end method

.method private setNoisePowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    .line 2721
    return-void
.end method

.method private setOffChannelThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    .line 2615
    return-void
.end method

.method private setOnChannelThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOnChannelThreshold(I)V

    .line 2607
    return-void
.end method

.method private setPilotPowerThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    .line 2713
    return-void
.end method

.method private setRMSSIFirstStage(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRMSSIFirstStage(I)V

    .line 2639
    return-void
.end method

.method private setRSSI_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2510
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 2509
    return-void
.end method

.method private setRSSI_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2522
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 2521
    return-void
.end method

.method private setSINRFirstStage(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRFirstStage(I)V

    .line 2647
    return-void
.end method

.method private setSINRSamples(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRSamples(I)V

    .line 2599
    return-void
.end method

.method private setSINRThreshold(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRThreshold(I)V

    .line 2623
    return-void
.end method

.method private setSNR_th(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2514
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 2513
    return-void
.end method

.method private setSNR_th_2(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 2526
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 2525
    return-void
.end method

.method private setSearchAlgoType(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSearchAlgoType(I)V

    .line 2591
    return-void
.end method

.method private setSeekDC(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    .line 2730
    return-void
.end method

.method private setSeekQA(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V

    .line 2738
    return-void
.end method

.method private setSeekRSSI(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekRSSI(J)V

    .line 2501
    return-void
.end method

.method private setSeekSNR(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekSNR(J)V

    .line 2505
    return-void
.end method

.method private setSignalSetting(III)V
    .locals 1
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .prologue
    .line 3156
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_0

    .line 3157
    return-void

    .line 3159
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 3160
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNativeBase;->setSNR_th(I)V

    .line 3161
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNativeBase;->setCnt_th(I)V

    .line 3155
    return-void
.end method

.method private setSoftMuteCoeff(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2776
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    .line 2777
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    .line 2775
    return-void
.end method

.method private setSoftStereoBlendCoeff(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2767
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 2768
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    .line 2766
    return-void
.end method

.method private stopInternetStreaming()V
    .locals 4

    .prologue
    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopInternetStreaming() - streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 528
    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-eqz v1, :cond_0

    .line 529
    return-void

    .line 531
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.dns.action.stop_internet_stream"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private unRegisterBatteryListener()V
    .locals 2

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1455
    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .locals 2

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2091
    const-string/jumbo v0, "music command reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2089
    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1488
    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method private unregisterAlarmListener()V
    .locals 2

    .prologue
    .line 944
    const-string/jumbo v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 943
    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .locals 2

    .prologue
    .line 915
    const-string/jumbo v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 914
    return-void
.end method

.method private unregisterEmegencyStateChangedListener()V
    .locals 2

    .prologue
    .line 973
    const-string/jumbo v0, "Unregistering Emergency State Changed Listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 972
    return-void
.end method

.method private unregisterSystemListener()V
    .locals 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1474
    return-void
.end method

.method private writeFile(Z)V
    .locals 5
    .param p1, "isFmRadioOn"    # Z

    .prologue
    .line 3114
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOn:Ljava/lang/String;

    .line 3116
    .local v2, "value":Ljava/lang/String;
    :goto_0
    sget-boolean v3, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    .line 3117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3120
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    .line 3121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3123
    .local v0, "bvalue":[B
    iget-object v3, p0, Lcom/android/server/FMRadioService;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3113
    .end local v0    # "bvalue":[B
    :cond_1
    :goto_1
    return-void

    .line 3114
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFmOff:Ljava/lang/String;

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3125
    :catch_0
    move-exception v1

    .line 3126
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public SetIsOn(Z)V
    .locals 0
    .param p1, "IsOn"    # Z

    .prologue
    .line 1951
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1950
    return-void
.end method

.method public cancelAFSwitching()V
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelAFSwitching()V

    .line 2251
    return-void
.end method

.method public cancelScan()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2139
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_1

    .line 2140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2141
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    .line 2143
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 2149
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method public cancelSeek()V
    .locals 1

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    .line 1591
    return-void
.end method

.method public disableAF()V
    .locals 1

    .prologue
    .line 2222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2223
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableAF()V

    .line 2224
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2221
    return-void
.end method

.method public disableDNS()V
    .locals 1

    .prologue
    .line 2202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2203
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableDNS()V

    .line 2204
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2201
    return-void
.end method

.method public disableRDS()V
    .locals 2

    .prologue
    .line 2185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2186
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableRDS()V

    .line 2187
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2188
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2184
    return-void
.end method

.method public enableAF()V
    .locals 1

    .prologue
    .line 2212
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_0

    .line 2213
    const-string/jumbo v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2214
    return-void

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableAF()V

    .line 2217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2218
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    .line 2211
    return-void
.end method

.method public enableDNS()V
    .locals 1

    .prologue
    .line 2192
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    if-eqz v0, :cond_0

    .line 2193
    const-string/jumbo v0, "DNS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2194
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableDNS()V

    .line 2197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    .line 2198
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    .line 2191
    return-void
.end method

.method public enableRDS()V
    .locals 2

    .prologue
    .line 2174
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_0

    .line 2175
    const-string/jumbo v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2176
    return-void

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableRDS()V

    .line 2179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2180
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2181
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    .line 2173
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3132
    invoke-super {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->finalize()V

    .line 3134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3135
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3137
    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    .line 3138
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    .line 3140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 3141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 3143
    sget-object v1, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 3144
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    .line 3146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    .line 3147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    .line 3148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 3131
    :goto_0
    return-void

    .line 3143
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 3150
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Error;
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .locals 2

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .locals 2

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .locals 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntegerTunningParameter(Ljava/lang/String;I)I
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 2907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIntegerTunningParameter: parameterName- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2908
    const-string/jumbo v0, "RSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th()I

    move-result v0

    return v0

    .line 2908
    :cond_0
    const-string/jumbo v0, "SNR_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2912
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th()I

    move-result v0

    return v0

    .line 2908
    :cond_1
    const-string/jumbo v0, "Cnt_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2914
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th()I

    move-result v0

    return v0

    .line 2916
    :cond_2
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 2917
    const-string/jumbo v0, "SeekDC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2919
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekDC()I

    move-result v0

    return v0

    .line 2917
    :cond_3
    const-string/jumbo v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2921
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSeekQA()I

    move-result v0

    return v0

    .line 2923
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2994
    :goto_0
    return p2

    .line 2925
    :cond_5
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    .line 2926
    const-string/jumbo v0, "SearchAlgoType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2928
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSearchAlgoType()I

    move-result v0

    return v0

    .line 2926
    :cond_6
    const-string/jumbo v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2930
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRSamples()I

    move-result v0

    return v0

    .line 2926
    :cond_7
    const-string/jumbo v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2932
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOnChannelThreshold()I

    move-result v0

    return v0

    .line 2926
    :cond_8
    const-string/jumbo v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2934
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getOffChannelThreshold()I

    move-result v0

    return v0

    .line 2926
    :cond_9
    const-string/jumbo v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2936
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRThreshold()I

    move-result v0

    return v0

    .line 2926
    :cond_a
    const-string/jumbo v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2938
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCFOTh12()I

    move-result v0

    return v0

    .line 2926
    :cond_b
    const-string/jumbo v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2940
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRMSSIFirstStage()I

    move-result v0

    return v0

    .line 2926
    :cond_c
    const-string/jumbo v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2942
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSINRFirstStage()I

    move-result v0

    return v0

    .line 2926
    :cond_d
    const-string/jumbo v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2944
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSIThreshold()I

    move-result v0

    return v0

    .line 2926
    :cond_e
    const-string/jumbo v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2946
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFRMSSISamples()I

    move-result v0

    return v0

    .line 2926
    :cond_f
    const-string/jumbo v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2948
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0

    .line 2926
    :cond_10
    const-string/jumbo v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2950
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getRSSI_th_2()I

    move-result v0

    return v0

    .line 2926
    :cond_11
    const-string/jumbo v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2952
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSNR_th_2()I

    move-result v0

    return v0

    .line 2926
    :cond_12
    const-string/jumbo v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2954
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getCnt_th_2()I

    move-result v0

    return v0

    .line 2926
    :cond_13
    const-string/jumbo v0, "BlendRmssi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2956
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendRmssi()I

    move-result v0

    return v0

    .line 2926
    :cond_14
    const-string/jumbo v0, "BlendSinr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2958
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getBlendSinr()I

    move-result v0

    return v0

    .line 2960
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2962
    :cond_16
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 2963
    const-string/jumbo v0, "AF_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2965
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAF_th()I

    move-result v0

    return v0

    .line 2963
    :cond_17
    const-string/jumbo v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2967
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getAFValid_th()I

    move-result v0

    return v0

    .line 2969
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2971
    :cond_19
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1d

    .line 2972
    const-string/jumbo v0, "FrequencyOffset_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2974
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0

    .line 2972
    :cond_1a
    const-string/jumbo v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2976
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getNoisePowerThreshold()I

    move-result v0

    return v0

    .line 2972
    :cond_1b
    const-string/jumbo v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2978
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getPilotPowerThreshold()I

    move-result v0

    return v0

    .line 2980
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2982
    :cond_1d
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_20

    .line 2983
    const-string/jumbo v0, "IFCount1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2985
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getIFCount1()I

    move-result v0

    return v0

    .line 2983
    :cond_1e
    const-string/jumbo v0, "IFCount2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2987
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getIFCount2()I

    move-result v0

    return v0

    .line 2989
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2992
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getLastScanResult()[J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1533
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1536
    .local v0, "arryL":[Ljava/lang/Long;
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    return-object v1

    .line 1538
    .end local v0    # "arryL":[Ljava/lang/Long;
    :cond_0
    const-string/jumbo v1, "getLastScanResult - mScanChannelList null"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1539
    return-object v2
.end method

.method public getLongTunningParameter(Ljava/lang/String;J)J
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 3028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long getLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3029
    const-string/jumbo v0, "CurrentSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0

    .line 3029
    :cond_0
    const-string/jumbo v0, "CurrentRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3033
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0

    .line 3035
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3037
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 3038
    const-string/jumbo v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3040
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendCoeff()J

    move-result-wide v0

    return-wide v0

    .line 3038
    :cond_2
    const-string/jumbo v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3042
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftMuteCoeff()J

    move-result-wide v0

    return-wide v0

    .line 3045
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3048
    :cond_4
    return-wide p2
.end method

.method public getMaxVolume()J
    .locals 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayedFreq()J
    .locals 2

    .prologue
    .line 2499
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    return-wide v0
.end method

.method public getSoftMuteMode()Z
    .locals 1

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSoftMuteMode()Z

    move-result v0

    return v0
.end method

.method public getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 3067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3068
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3069
    const-string/jumbo v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3071
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3073
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3078
    :goto_0
    return-object p2

    .line 3076
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVolume()J
    .locals 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .locals 1

    .prologue
    .line 2248
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isBatteryLow()Z
    .locals 1

    .prologue
    .line 1613
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .locals 1

    .prologue
    .line 1598
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    .line 1599
    const/4 v0, 0x1

    return v0

    .line 1601
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isDNSEnable()Z
    .locals 1

    .prologue
    .line 2208
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mDNSEnable:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .locals 1

    .prologue
    .line 2244
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 2122
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 2126
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .locals 1

    .prologue
    .line 1609
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1518
    if-eqz p1, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1521
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOn()V

    .line 1522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 1515
    :goto_0
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    .line 1525
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_0
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .locals 23
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2264
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 2265
    const-string/jumbo v16, "fmradio_turnon=true"

    .line 2266
    .local v16, "keyValuePairs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2267
    const-string/jumbo v2, "notifyEvent Turning on FM radio"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2271
    if-eqz p2, :cond_0

    move-object/from16 v2, p2

    .line 2272
    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/FMRadioService;->sendFMStatusBroadcast(Ljava/lang/Long;)V

    .line 2275
    .end local v16    # "keyValuePairs":Ljava/lang/String;
    :cond_0
    sget-object v22, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v22

    .line 2276
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    monitor-exit v22

    .line 2278
    return-void

    .line 2280
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Total listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v21

    .line 2282
    .local v21, "size":I
    add-int/lit8 v15, v21, -0x1

    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_11

    .line 2283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifying listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2285
    packed-switch p1, :pswitch_data_0

    .line 2282
    :cond_3
    :goto_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 2288
    :pswitch_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2288
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioEnabled()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2471
    :catch_0
    move-exception v11

    .line 2472
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2473
    const-string/jumbo v3, "FMRadioService"

    .line 2474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we loose "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " listener--ignore it :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .line 2474
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2473
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 2477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove done go for next i\'s value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2275
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v21    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v22

    throw v2

    .line 2294
    .restart local v15    # "i":I
    .restart local v21    # "size":I
    :pswitch_1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2294
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2296
    const/16 v19, -0x1

    .line 2297
    .local v19, "reasonCode":I
    if-eqz p2, :cond_4

    .line 2298
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 2299
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDisabled(I)V

    goto/16 :goto_1

    .line 2304
    .end local v19    # "reasonCode":I
    :pswitch_2
    const-wide/16 v12, 0x0

    .line 2305
    .local v12, "freq":J
    if-eqz p2, :cond_5

    .line 2306
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2308
    :cond_5
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_6

    .line 2309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2310
    const-string/jumbo v3, " : with freq:"

    .line 2309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2310
    const-string/jumbo v3, "-->"

    .line 2309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2309
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2312
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V

    goto/16 :goto_1

    .line 2316
    .end local v12    # "freq":J
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2316
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_1

    .line 2325
    :pswitch_4
    if-eqz p2, :cond_8

    .line 2326
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2327
    .local v9, "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v14

    .line 2328
    .local v14, "freqArry":[J
    const/4 v10, 0x0

    .line 2329
    .local v10, "count":I
    if-eqz v14, :cond_7

    .line 2330
    array-length v10, v14

    .line 2333
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2334
    const-string/jumbo v3, " : with data array:"

    .line 2333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2334
    const-string/jumbo v3, "-->"

    .line 2333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2333
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v14}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_1

    .line 2338
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v10    # "count":I
    .end local v14    # "freqArry":[J
    :cond_8
    const-string/jumbo v2, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2343
    :pswitch_5
    if-eqz p2, :cond_a

    .line 2344
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2345
    .restart local v9    # "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v14

    .line 2346
    .restart local v14    # "freqArry":[J
    const/4 v10, 0x0

    .line 2347
    .restart local v10    # "count":I
    if-eqz v14, :cond_9

    .line 2348
    array-length v10, v14

    .line 2351
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2352
    const-string/jumbo v3, " : with data array:"

    .line 2351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2352
    const-string/jumbo v3, "-->"

    .line 2351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2351
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v14}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_1

    .line 2356
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v10    # "count":I
    .end local v14    # "freqArry":[J
    :cond_a
    const-string/jumbo v2, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2361
    :pswitch_6
    if-eqz p2, :cond_c

    .line 2362
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2363
    .restart local v12    # "freq":J
    sput-wide v12, Lcom/android/server/FMRadioService;->curFreq:J

    .line 2364
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_b

    .line 2365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2366
    const-string/jumbo v3, " : with data array:"

    .line 2365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2366
    const-string/jumbo v3, "-->"

    .line 2365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2365
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2368
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onTuned(J)V

    goto/16 :goto_1

    .line 2370
    .end local v12    # "freq":J
    :cond_c
    const-string/jumbo v2, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2375
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2375
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetConnected()V

    goto/16 :goto_1

    .line 2381
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2381
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetDisconnected()V

    goto/16 :goto_1

    .line 2387
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2387
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2389
    if-eqz p2, :cond_d

    .line 2390
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNativeBase$RDSData;

    move-object/from16 v18, v0

    .line 2391
    .local v18, "rdsData":Lcom/android/server/FMPlayerNativeBase$RDSData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    .line 2392
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    .line 2391
    invoke-interface {v2, v4, v5, v3, v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2394
    .end local v18    # "rdsData":Lcom/android/server/FMPlayerNativeBase$RDSData;
    :cond_d
    const-string/jumbo v2, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2399
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2399
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2401
    if-eqz p2, :cond_e

    .line 2402
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;

    move-object/from16 v20, v0

    .line 2403
    .local v20, "rtplusData":Lcom/android/server/FMPlayerNativeBase$RTPlusData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType1:I

    .line 2404
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos1:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen1:I

    .line 2405
    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType2:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos2:I

    .line 2406
    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen2:I

    .line 2403
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_1

    .line 2408
    .end local v20    # "rtplusData":Lcom/android/server/FMPlayerNativeBase$RTPlusData;
    :cond_e
    const-string/jumbo v2, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2413
    :pswitch_b
    if-eqz p2, :cond_f

    .line 2414
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNativeBase$PIECCData;

    move-object/from16 v17, v0

    .line 2415
    .local v17, "pieccData":Lcom/android/server/FMPlayerNativeBase$PIECCData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mPI:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mECC:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    .line 2416
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    if-eqz v2, :cond_3

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 2418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2419
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3

    goto/16 :goto_1

    .line 2418
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2423
    .end local v17    # "pieccData":Lcom/android/server/FMPlayerNativeBase$PIECCData;
    :cond_f
    const-string/jumbo v2, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2428
    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2428
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemEnabled()V

    goto/16 :goto_1

    .line 2434
    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2434
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemDisabled()V

    goto/16 :goto_1

    .line 2440
    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2440
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyStarted()V

    goto/16 :goto_1

    .line 2446
    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2446
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2448
    if-eqz p2, :cond_10

    .line 2449
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2450
    .restart local v12    # "freq":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_1

    .line 2452
    .end local v12    # "freq":J
    :cond_10
    const-string/jumbo v2, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2457
    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2457
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onVolumeLocked()V

    goto/16 :goto_1

    .line 2463
    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2463
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRecordingFinished()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :cond_11
    monitor-exit v22

    .line 2262
    return-void

    .line 2285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public notifyRecFinish()V
    .locals 3

    .prologue
    .line 3331
    const-string/jumbo v1, "notifyRecFinish EVENT_REC_FINISH"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3332
    const-string/jumbo v0, "fmradio_recoding=off"

    .line 3333
    .local v0, "keyValuePairs":Ljava/lang/String;
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 3334
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3330
    return-void
.end method

.method public off()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2086
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .locals 1

    .prologue
    .line 1691
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1692
    const/4 v0, 0x0

    return v0

    .line 1693
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized on_in_testmode()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    .line 1650
    :try_start_0
    const-string/jumbo v3, "factory"

    const-string/jumbo v4, "ro.factory.factory_binary"

    const-string/jumbo v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1651
    .local v1, "isFactoryBinary":Z
    if-nez v1, :cond_0

    .line 1652
    const-string/jumbo v3, "on_in_testmode is called with normal binary. This function is only for Factory binary. So just return"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1653
    return v8

    .line 1657
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    .line 1658
    return v8

    .line 1660
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v9, :cond_2

    .line 1661
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_2
    monitor-exit p0

    .line 1662
    return v8

    .line 1664
    :cond_3
    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit p0

    .line 1665
    return v9

    .line 1667
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 1668
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 1669
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 1670
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 1671
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1672
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1674
    const-string/jumbo v2, "fmradio_turnon=true"

    .line 1675
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1676
    const-string/jumbo v3, "on_in_testmode Turning on FM radio"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 1677
    return v9

    .line 1680
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 1681
    return v8

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1685
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 1687
    return v8

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isFactoryBinary":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1640
    if-nez p1, :cond_0

    .line 1641
    return-void

    .line 1642
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 1638
    return-void
.end method

.method public scan()V
    .locals 1

    .prologue
    .line 2114
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    .line 2115
    return-void

    .line 2116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2117
    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 2118
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2113
    return-void
.end method

.method public searchAll()J
    .locals 2

    .prologue
    .line 2163
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchAll()J

    move-result-wide v0

    return-wide v0

    .line 2165
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchDown()J
    .locals 2

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .locals 2

    .prologue
    .line 2156
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchUp()J

    move-result-wide v0

    return-wide v0

    .line 2158
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public seekDown()J
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1568
    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1571
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v7, :cond_1

    .line 1572
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1578
    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNativeBase;->seekDown()J

    move-result-wide v0

    .line 1581
    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v7, :cond_0

    .line 1582
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 1583
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1586
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1587
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1588
    return-wide v0

    .line 1574
    .end local v0    # "freq":J
    :cond_1
    const-string/jumbo v2, "fmradio_turnon=false"

    .line 1575
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekUp()J
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1544
    iput-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1547
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v7, :cond_1

    .line 1548
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1554
    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNativeBase;->seekUp()J

    move-result-wide v0

    .line 1557
    .local v0, "freq":J
    iget v3, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v3, v7, :cond_0

    .line 1558
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 1559
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1562
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1563
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1564
    return-wide v0

    .line 1550
    .end local v0    # "freq":J
    :cond_1
    const-string/jumbo v2, "fmradio_turnon=false"

    .line 1551
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendFMStatusBroadcast(Ljava/lang/Long;)V
    .locals 5
    .param p1, "freq"    # Ljava/lang/Long;

    .prologue
    .line 2074
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 2075
    .local v0, "currentFreq":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 2076
    const/high16 v0, 0x42af0000    # 87.5f

    .line 2077
    :cond_0
    sget-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 2078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending broadcast tune currentFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2079
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.fm.player_lock.tune.channel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2081
    const-string/jumbo v2, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2073
    return-void
.end method

.method public setBand(I)V
    .locals 1
    .param p1, "band"    # I

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBand(I)V

    .line 2236
    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 2234
    return-void
.end method

.method public setChannelSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setChannelSpacing(I)V

    .line 2239
    return-void
.end method

.method public setFMIntenna(Z)V
    .locals 1
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFMIntenna(Z)V

    .line 2578
    return-void
.end method

.method public setIntegerTunningParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter:  parameterName- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  value:- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2787
    const-string/jumbo v0, "RSSI_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2789
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th(I)V

    .line 2790
    return-void

    .line 2787
    :cond_0
    const-string/jumbo v0, "SNR_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2792
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th(I)V

    .line 2793
    return-void

    .line 2787
    :cond_1
    const-string/jumbo v0, "Cnt_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2795
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th(I)V

    .line 2796
    return-void

    .line 2787
    :cond_2
    const-string/jumbo v0, "SkipTuningValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2798
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->SkipTuning_Value()V

    .line 2799
    return-void

    .line 2801
    :cond_3
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 2802
    const-string/jumbo v0, "SeekDC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2804
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekDC(I)V

    .line 2785
    :goto_0
    return-void

    .line 2802
    :cond_4
    const-string/jumbo v0, "SeekQA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2807
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSeekQA(I)V

    goto :goto_0

    .line 2810
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2812
    :cond_6
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 2813
    const-string/jumbo v0, "SearchAlgoType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2815
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    goto :goto_0

    .line 2813
    :cond_7
    const-string/jumbo v0, "SINRSamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2818
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    goto :goto_0

    .line 2813
    :cond_8
    const-string/jumbo v0, "OnChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2821
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    goto :goto_0

    .line 2813
    :cond_9
    const-string/jumbo v0, "OffChannelThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2824
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    goto :goto_0

    .line 2813
    :cond_a
    const-string/jumbo v0, "SINRThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2827
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    goto :goto_0

    .line 2813
    :cond_b
    const-string/jumbo v0, "CFOTh12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2830
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    goto/16 :goto_0

    .line 2813
    :cond_c
    const-string/jumbo v0, "RMSSIFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2833
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    goto/16 :goto_0

    .line 2813
    :cond_d
    const-string/jumbo v0, "SINRFirstStage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2836
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    goto/16 :goto_0

    .line 2813
    :cond_e
    const-string/jumbo v0, "AFRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2839
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    goto/16 :goto_0

    .line 2813
    :cond_f
    const-string/jumbo v0, "AFRMSSISamples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2842
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    goto/16 :goto_0

    .line 2813
    :cond_10
    const-string/jumbo v0, "GoodChannelRMSSIThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2845
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    goto/16 :goto_0

    .line 2813
    :cond_11
    const-string/jumbo v0, "RSSI_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2848
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setRSSI_th_2(I)V

    goto/16 :goto_0

    .line 2813
    :cond_12
    const-string/jumbo v0, "SNR_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2851
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setSNR_th_2(I)V

    goto/16 :goto_0

    .line 2813
    :cond_13
    const-string/jumbo v0, "Cnt_th_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2854
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setCnt_th_2(I)V

    goto/16 :goto_0

    .line 2813
    :cond_14
    const-string/jumbo v0, "BlendRmssi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2857
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendRmssi(I)V

    goto/16 :goto_0

    .line 2813
    :cond_15
    const-string/jumbo v0, "BlendSinr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2860
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setBlendSinr(I)V

    goto/16 :goto_0

    .line 2863
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2865
    :cond_17
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 2866
    const-string/jumbo v0, "AF_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2868
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAF_th(I)V

    goto/16 :goto_0

    .line 2866
    :cond_18
    const-string/jumbo v0, "AFValid_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2871
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setAFValid_th(I)V

    goto/16 :goto_0

    .line 2874
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2876
    :cond_1a
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    .line 2877
    const-string/jumbo v0, "FrequencyOffset_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2879
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFrequencyOffsetThreshold(I)V

    goto/16 :goto_0

    .line 2877
    :cond_1b
    const-string/jumbo v0, "NoisePower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2882
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setNoisePowerThreshold(I)V

    goto/16 :goto_0

    .line 2877
    :cond_1c
    const-string/jumbo v0, "PilotPower_th"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2885
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setPilotPowerThreshold(I)V

    goto/16 :goto_0

    .line 2888
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2890
    :cond_1e
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_21

    .line 2891
    const-string/jumbo v0, "IFCount1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2893
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setIFCount1(I)V

    goto/16 :goto_0

    .line 2891
    :cond_1f
    const-string/jumbo v0, "IFCount2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2896
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setIFCount2(I)V

    goto/16 :goto_0

    .line 2899
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2902
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setInternetStreamingMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 3320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInternetStreamingMode :: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3321
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    .line 3322
    if-eqz p1, :cond_0

    .line 3323
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 3319
    :goto_0
    return-void

    .line 3325
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[FMRadioService] setListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1626
    if-eqz p1, :cond_1

    .line 1627
    sget-object v2, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1628
    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 1629
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 1631
    :cond_0
    new-instance v0, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .line 1632
    .local v0, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no of listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1624
    .end local v0    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_1
    return-void

    .line 1627
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setLongTunningParameter(Ljava/lang/String;J)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long setLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2999
    const-string/jumbo v0, "SeekRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3001
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekRSSI(J)V

    .line 3012
    :goto_0
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3013
    const-string/jumbo v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3015
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendCoeff(J)V

    .line 2997
    :cond_0
    :goto_1
    return-void

    .line 2999
    :cond_1
    const-string/jumbo v0, "SeekSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3004
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekSNR(J)V

    goto :goto_0

    .line 2999
    :cond_2
    const-string/jumbo v0, "DEConstant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3007
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    goto :goto_0

    .line 3010
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3013
    :cond_4
    const-string/jumbo v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3018
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftMuteCoeff(J)V

    goto :goto_1

    .line 3022
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMono()V
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setMono()V

    .line 2259
    return-void
.end method

.method public setRecordMode(Z)V
    .locals 2
    .param p1, "isRecord"    # Z

    .prologue
    .line 1921
    const/4 v0, 0x0

    .line 1922
    .local v0, "value":I
    if-eqz p1, :cond_0

    .line 1923
    const/4 v0, 0x1

    .line 1924
    :cond_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1, v0}, Lcom/android/server/FMPlayerNativeBase;->setRecordMode(I)V

    .line 1920
    return-void
.end method

.method public setSoftmute(Z)V
    .locals 1
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute(Z)V

    .line 2582
    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 1
    .param p1, "bSpeakerOn"    # Z

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSpeakerOn(Z)V

    .line 1916
    return-void
.end method

.method public setStereo()V
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    .line 2255
    return-void
.end method

.method public setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3053
    iget v0, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3054
    const-string/jumbo v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3056
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setHybridSearch(Ljava/lang/String;)V

    .line 3051
    :goto_0
    return-void

    .line 3059
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for chip vendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3062
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 9
    .param p1, "val"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 1871
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v2, :cond_0

    .line 1872
    return-void

    .line 1874
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v2, :cond_1

    .line 1875
    const-string/jumbo v2, "setVolume :: unset on ScanProgress"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1876
    return-void

    .line 1880
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mInternetStreamingMode:Z

    if-nez v2, :cond_5

    .line 1881
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    .line 1882
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 1885
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "all_sound_off"

    const/4 v4, 0x0

    .line 1884
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1887
    .local v0, "IsEnabledAllSoundOff":I
    if-ne v0, v5, :cond_3

    .line 1888
    const-string/jumbo v2, "setVolume :: AllSoundOff is enabled. So FMRadio is muted."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1889
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_2

    .line 1890
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1870
    .end local v0    # "IsEnabledAllSoundOff":I
    :cond_2
    :goto_0
    return-void

    .line 1892
    .restart local v0    # "IsEnabledAllSoundOff":I
    :cond_3
    iget v2, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 1893
    cmp-long v2, p1, v6

    if-gtz v2, :cond_4

    .line 1894
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1906
    .end local v0    # "IsEnabledAllSoundOff":I
    :catch_0
    move-exception v1

    .line 1907
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1908
    return-void

    .line 1895
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "IsEnabledAllSoundOff":I
    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v2, :cond_2

    .line 1896
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1897
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    goto :goto_0

    .line 1901
    .end local v0    # "IsEnabledAllSoundOff":I
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v2, :cond_2

    .line 1902
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    .line 1903
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public tune(J)V
    .locals 7
    .param p1, "freq"    # J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1492
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-eq v1, v5, :cond_1

    .line 1493
    const-string/jumbo v1, "tune mute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1494
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "fm_radio_mute=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1500
    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    .line 1503
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v4}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "all_sound_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 1505
    const-string/jumbo v1, "tune unmute - "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1506
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "fm_radio_mute=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1507
    iget v1, p0, Lcom/android/server/FMRadioService;->mChipVendor:I

    if-ne v1, v5, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    .line 1512
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1490
    return-void

    .line 1496
    :cond_1
    const-string/jumbo v0, "fmradio_turnon=false"

    .line 1497
    .local v0, "keyValuePairs":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
