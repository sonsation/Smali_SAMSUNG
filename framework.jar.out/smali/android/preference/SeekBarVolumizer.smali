.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$Callback;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Observer;,
        Landroid/preference/SeekBarVolumizer$Receiver;
    }
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final DISPLAY_PROFILE_EDIT:I = 0x1

.field private static final DISPLAY_SOUND_SETTING:I = 0x0

.field private static final DUAL_SIM:Z

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final SUPPORT_FINEVOLUME:Z = true

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private final SIM_CHANGED_ACTION:Ljava/lang/String;

.field private final VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private isRingerUpdatedToAudio:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSimSlot:I

.field private mDefaultUri:Landroid/net/Uri;

.field private mDisplayType:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mLastAudibleStreamVolume:I

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationOrRing:Z

.field private mOriginalLastAudibleStreamVolume:I

.field private mOriginalNotificationVolume:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private mOriginalSystemVolume:I

.field private mProfileMode:I

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private final mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mSystemSampleStarted:Z

.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    return v0
.end method

.method static synthetic -get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get11(Landroid/preference/SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic -get12(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic -get2(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get5(Landroid/preference/SeekBarVolumizer;)I
    .locals 1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return v0
.end method

.method static synthetic -get6(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return v0
.end method

.method static synthetic -get7(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get8(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    return v0
.end method

.method static synthetic -get9(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic -set0(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set1(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p1
.end method

.method static synthetic -set2(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic -set3(Landroid/preference/SeekBarVolumizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return p1
.end method

.method static synthetic -set4(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mProgressBgColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set5(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mProgressColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set6(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    return p1
.end method

.method static synthetic -set7(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mThumbColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set8(Landroid/preference/SeekBarVolumizer;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set9(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/preference/SeekBarVolumizer;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/preference/SeekBarVolumizer;I)Z
    .locals 1
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/preference/SeekBarVolumizer;->DUAL_SIM:Z

    .line 62
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Landroid/preference/SeekBarVolumizer$H;

    invoke-direct {v1, p0, v4}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$H;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    .line 80
    new-instance v1, Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v4}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    .line 97
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 100
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 103
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 104
    iput-object v4, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 118
    iput-boolean v7, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 120
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 121
    const-string/jumbo v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->SIM_CHANGED_ACTION:Ljava/lang/String;

    .line 137
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 138
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 139
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 140
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    .line 141
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isVoiceCapable()Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    .line 142
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 143
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 144
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_5

    .line 145
    const/16 v1, 0x5dc

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 146
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 151
    :goto_0
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    .line 152
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    .line 155
    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    .line 156
    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    .line 157
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_waiting_tone"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 158
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    .line 159
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 160
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    .line 161
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 164
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 165
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    .line 167
    if-nez p3, :cond_2

    .line 168
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_6

    .line 169
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object p3

    .line 176
    :cond_2
    :goto_1
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 178
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_8

    .line 179
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    .line 186
    :cond_3
    :goto_2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_4

    .line 187
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    const v2, 0x106011d

    .line 187
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 189
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    const v2, 0x106011c

    .line 189
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mProgressBgColor:Landroid/content/res/ColorStateList;

    .line 191
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 192
    const v2, 0x1060126

    .line 191
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    .line 193
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 194
    const v2, 0x1060125

    .line 193
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 136
    :cond_4
    return-void

    .line 148
    .end local v0    # "subId":I
    :cond_5
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 149
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_0

    .line 170
    .restart local v0    # "subId":I
    :cond_6
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 171
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object p3

    goto/16 :goto_1

    .line 173
    :cond_7
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 180
    :cond_8
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v7, :cond_9

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_9

    .line 181
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    goto/16 :goto_2

    .line 182
    :cond_9
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    goto/16 :goto_2
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    new-array v0, v2, [[I

    .line 200
    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 202
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    .line 203
    aput p1, v2, v3

    .line 202
    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getDefaultNotificationUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    return-object v0

    .line 219
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getDefaultRingtoneUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    return-object v0

    .line 211
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getImpliedLevel(I)I
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x0

    .line 476
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v1, v2, -0x1

    .line 477
    .local v1, "n":I
    if-nez p1, :cond_0

    .line 479
    .local v0, "level":I
    :goto_0
    return v0

    .line 478
    .end local v0    # "level":I
    :cond_0
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    div-int/lit8 v0, v2, 0x64

    goto :goto_0

    :cond_1
    int-to-float v2, p1

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method private getImpliedMediaVolumeLevel(I)I
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 483
    div-int/lit8 p1, p1, 0xa

    .line 484
    if-nez p1, :cond_0

    .line 485
    const/4 p1, 0x1

    .line 487
    :cond_0
    return p1
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 664
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 665
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 666
    const-string/jumbo v1, "SeekBarVolumizer"

    const-string/jumbo v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    return-object v0
.end method

.method private isNotificationOrRing(I)Z
    .locals 3
    .param p1, "stream"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    .line 225
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 227
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isUserInCall(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 631
    const/4 v2, 0x0

    .line 632
    .local v2, "isVoiceCall":Z
    const/4 v1, 0x0

    .line 633
    .local v1, "isVoIP":Z
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 634
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 636
    :goto_0
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 637
    .local v0, "audioMode":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 639
    :goto_1
    if-nez v2, :cond_3

    .end local v1    # "isVoIP":Z
    :goto_2
    return v1

    .line 634
    .end local v0    # "audioMode":I
    .restart local v1    # "isVoIP":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 637
    .restart local v0    # "audioMode":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 639
    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private isVoiceCapable()Z
    .locals 4

    .prologue
    .line 853
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 854
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "ims_mdmn_type":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Softphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isZenMuted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 250
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 4

    .prologue
    .line 346
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 349
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 351
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 350
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 345
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception happens in onInitSample() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onStartSample()V
    .locals 6

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-nez v3, :cond_4

    .line 369
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v3, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 373
    :cond_0
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 376
    :try_start_1
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "opPackageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 379
    :try_start_2
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v3

    .line 379
    if-eqz v3, :cond_2

    .line 381
    :cond_1
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 382
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 389
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    .line 390
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsFmRadioActive()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    .end local v2    # "opPackageName":Ljava/lang/String;
    :cond_3
    :goto_0
    monitor-exit p0

    .line 367
    :cond_4
    return-void

    .line 391
    .restart local v2    # "opPackageName":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "sample : mRingtone.play()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 395
    const/16 v5, 0xc0

    .line 393
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 398
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 400
    .end local v2    # "opPackageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error playing ringtone, stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 373
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 416
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 603
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 599
    return-void
.end method

.method private postStartSample()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 361
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->isUserInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 364
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e8

    :goto_0
    int-to-long v4, v0

    .line 363
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    return-void

    .line 364
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 409
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    return-void
.end method

.method private stopToneGenerator()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 593
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 590
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 5

    .prologue
    .line 743
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    .line 744
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 745
    .local v2, "volume":I
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 746
    .local v0, "lastAudibleVolume":I
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 747
    .local v1, "mute":Z
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    invoke-virtual {v3, v2, v0, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 742
    .end local v0    # "lastAudibleVolume":I
    .end local v1    # "mute":Z
    .end local v2    # "volume":I
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 680
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 681
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 682
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 683
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 679
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 340
    const-string/jumbo v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    :goto_0
    return v5

    .line 319
    :pswitch_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 320
    iput-boolean v5, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 322
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 325
    :cond_1
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 337
    :pswitch_3
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 643
    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 687
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 688
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 689
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 690
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 691
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 686
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 694
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 695
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 696
    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 491
    if-eqz p3, :cond_3

    .line 492
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v7, :cond_5

    .line 493
    if-eqz p2, :cond_0

    .line 494
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result p2

    .line 499
    :cond_0
    :goto_0
    const-string/jumbo v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged : stream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v8, :cond_1

    .line 501
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 506
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 508
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 509
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportPhoneProfile"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    if-ne v2, v6, :cond_2

    .line 511
    if-ge p2, v6, :cond_2

    .line 512
    const/4 p2, 0x1

    .line 516
    :cond_2
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->setSeekBarVolume(I)V

    .line 577
    :goto_2
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v8, :cond_3

    .line 578
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 585
    :cond_3
    :goto_3
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v2, :cond_4

    .line 586
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/preference/SeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 490
    :cond_4
    return-void

    .line 497
    :cond_5
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result p2

    goto :goto_0

    .line 502
    :cond_6
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v7, :cond_1

    .line 503
    :cond_7
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    goto :goto_1

    .line 517
    :cond_8
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_c

    .line 518
    if-nez p2, :cond_9

    .line 519
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 521
    :cond_9
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 522
    if-nez p2, :cond_a

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 525
    :cond_a
    :goto_4
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_2

    .line 522
    :cond_b
    iget-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v2, :cond_a

    .line 523
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 527
    :cond_c
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v6, :cond_12

    .line 528
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "******onProgressChanged*****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v2, :cond_d

    .line 530
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    invoke-interface {v2, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 532
    :cond_d
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 535
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "opPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_f

    .line 538
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v2

    .line 537
    if-eqz v2, :cond_f

    .line 539
    :cond_e
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_5
    const-string/jumbo v2, "SeekBarVolumizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 542
    :cond_f
    :try_start_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-nez v2, :cond_11

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v2, p2, :cond_11

    .line 543
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    int-to-float v3, p2

    const/16 v4, 0x64

    invoke-virtual {v2, v4, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 544
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    .line 545
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "sample : playSoundEffect()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_10
    :goto_6
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 546
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_11
    :try_start_2
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ne v2, p2, :cond_10

    .line 547
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 555
    .end local v1    # "opPackageName":Ljava/lang/String;
    :cond_12
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v8, :cond_14

    .line 556
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_waiting_tone"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_13

    .line 561
    new-instance v2, Landroid/media/ToneGenerator;

    invoke-direct {v2, v8, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 563
    :cond_13
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 564
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v3, 0x16

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 565
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_2

    .line 566
    :cond_14
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v7, :cond_16

    .line 567
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v2, v7, :cond_15

    .line 568
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7, p2, v5}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    .line 569
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_2

    .line 571
    :cond_15
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_2

    .line 574
    :cond_16
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_2

    .line 579
    :cond_17
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v2, v7, :cond_3

    .line 580
    :cond_18
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 708
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 709
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 710
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 711
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 707
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 701
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 702
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 703
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 700
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 607
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 611
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    if-eqz v3, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "opPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v2

    .line 615
    .local v2, "progress":I
    :try_start_0
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_3

    .line 616
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v3

    .line 615
    if-eqz v3, :cond_3

    .line 617
    :cond_2
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "[onStopTrackingTouch]don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SeekBarVolumizer"

    const-string/jumbo v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 619
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 620
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    int-to-float v4, v2

    const/16 v5, 0x64

    invoke-virtual {v3, v5, v4}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 621
    const-string/jumbo v3, "SeekBarVolumizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onStopTrackingTouch]sample : playSoundEffect() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public revertVolume()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000000

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 454
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    :goto_0
    return-void

    .line 456
    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_2

    .line 458
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 460
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 463
    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 466
    :cond_4
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_6

    .line 467
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_5

    .line 468
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 469
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 471
    :cond_6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method public setDisplayType(I)V
    .locals 0
    .param p1, "displayType"    # I

    .prologue
    .line 312
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mDisplayType:I

    .line 311
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 235
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 238
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 239
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 240
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 246
    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 231
    return-void

    .line 240
    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 243
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    goto :goto_1
.end method

.method public setSeekBarVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 306
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 441
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    return-void

    .line 442
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 444
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 445
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 446
    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 447
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 448
    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 449
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    const/4 v4, 0x0

    .line 447
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 450
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 440
    return-void
.end method

.method public startSample()V
    .locals 4

    .prologue
    .line 649
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "opPackageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_1

    .line 652
    :try_start_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    :cond_0
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SeekBarVolumizer"

    const-string/jumbo v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 648
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 427
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 428
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 430
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 432
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 433
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 434
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 435
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 436
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 437
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 424
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 671
    return-void
.end method

.method protected updateSeekBar()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 255
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    .line 256
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    .line 258
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    if-eq v1, v6, :cond_1

    .line 259
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_4

    .line 265
    :cond_2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_6

    .line 266
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v0

    .line 267
    .local v0, "media_volume":I
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 268
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v1, v0, :cond_3

    .line 269
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 270
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 272
    :cond_3
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    if-ne v1, v6, :cond_5

    .line 273
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 260
    .end local v0    # "media_volume":I
    :cond_4
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v1, v5, :cond_2

    .line 261
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    if-eq v1, v6, :cond_2

    .line 262
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 279
    .restart local v0    # "media_volume":I
    :cond_5
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 281
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 282
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 286
    .end local v0    # "media_volume":I
    :cond_6
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 287
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 289
    :cond_7
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 290
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 291
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 292
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 291
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 292
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 291
    if-ne v1, v2, :cond_9

    .line 293
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 297
    :goto_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 299
    :cond_8
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    if-ne v1, v6, :cond_0

    .line 300
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_0

    .line 295
    :cond_9
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method
