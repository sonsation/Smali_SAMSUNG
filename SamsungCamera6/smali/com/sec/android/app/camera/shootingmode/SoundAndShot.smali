.class public Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
.super Ljava/lang/Object;
.source "SoundAndShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;,
        Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;
    }
.end annotation


# static fields
.field private static final NUM_OF_EQBAR:I = 0x14

.field private static final NUM_OF_EQ_LEVEL_MAX:I = 0xe

.field private static final SOUNDANDSHOT_SCREEN_ADD_VOICE:I = 0x1

.field private static final SOUNDANDSHOT_SCREEN_PREVIEWING:I = 0x0

.field private static final SOUND_RECORD_INDICATOR_UPDATE_DURATION:I = 0x32

.field private static final SOUND_RECORD_INDICATOR_UPDATE_TIMER:I = 0x1

.field private static final SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I = 0x9

.field private static final SOUND_RECORD_PROGRESS_INCREASE_DURATION:I = 0x3e8

.field private static final SOUND_RECORD_PROGRESS_INCREASE_TIMER:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "SoundAndShot"

.field private static final UPDATE_REC_MICIMAGE_MSG:I = 0x1


# instance fields
.field private final INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

.field private final INDICATOR_EQBAR_BAND_SPACING:I

.field private final INDICATOR_EQBAR_BAND_WIDTH:I

.field private final INDICATOR_EQBAR_MIC_WIDTH:I

.field private final INDICATOR_EQBAR_POS_X_START:I

.field private final INDICATOR_EQBAR_POS_Y:I

.field private final PROGRESS_BAR_ADD_VOICE_HEIGHT:I

.field private final PROGRESS_BAR_ADD_VOICE_POS_Y:I

.field private final PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

.field private final PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

.field private final PROGRESS_BAR_HEIGHT:I

.field private final PROGRESS_BAR_MARGIN_0_180:I

.field private final PROGRESS_BAR_MARGIN_90_270:I

.field private final PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

.field private final PROGRESS_BAR_SEQ_POS_Y:I

.field private final PROGRESS_BAR_SEQ_SPACING:I

.field private final PROGRESS_BAR_SEQ_WIDTH:I

.field private final PROGRESS_BAR_WIDTH:I

.field private final PROGRESS_GROUP_HEIGHT:I

.field private final PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

.field private final PROGRESS_GROUP_WIDTH:I

.field private final PROGRESS_TEXT_FONT_SIZE:I

.field private final PROGRESS_TEXT_HEIGHT:I

.field private final PROGRESS_TEXT_POS_Y:I

.field private final PROGRESS_TEXT_STROKE_COLOR:I

.field private final PROGRESS_TEXT_STROKE_WIDTH:I

.field private final PROGRESS_TEXT_WIDTH:I

.field private RecordedTime:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private eqBandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private eqBandListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private isRecordKeyReleased:Z

.field private mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mEqValueArray:[I

.field private mFull:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMicImage:Lcom/samsung/android/glview/GLImage;

.field private final mMicImageArray:[I

.field private mProgessBarSeqFullImage:I

.field private mProgessBarSeqImage:I

.field private mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressText:Lcom/samsung/android/glview/GLText;

.field private mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

.field private mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecProgressBarBG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

.field private mRecordProgressCounter:I

.field private mRecording:Z

.field private mReviewImage:Lcom/samsung/android/glview/GLImage;

.field private mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

.field private mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

.field private mSoundAndShotMode:I

.field private mSoundAndShotScreen:I

.field private mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

.field private mUpdateCnt:I

.field private qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

.field private rec_audio:[B


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    const v0, 0x7f0b0203

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    const v0, 0x7f0b0202

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    const v0, 0x7f0b0200

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

    const v0, 0x7f0b0201

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    const v0, 0x7f0b01fd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    const v0, 0x7f0b01fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    const v0, 0x7f0b01ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    const v0, 0x7f0b01f8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    const v0, 0x7f0b01f7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    const v0, 0x7f0b01f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    const v0, 0x7f0b01d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_WIDTH:F

    const v0, 0x7f0b02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_Y:I

    const v0, 0x7f0b01f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_X_START:I

    const v0, 0x7f0b01f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_Y:I

    const v0, 0x7f0b01ee

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    const v0, 0x7f0b01ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_SPACING:I

    const v0, 0x7f0b01ec

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    const v0, 0x7f0b01ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_MIC_WIDTH:I

    const v0, 0x7f0b01f4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_POS_Y:I

    const v0, 0x7f0b01f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_HEIGHT:I

    const v0, 0x7f0b01f6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

    const v0, 0x7f0b01f5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

    const v0, 0x7f0b01fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_POS_Y:I

    const v0, 0x7f0b01f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_FONT_SIZE:I

    const v0, 0x7f0b01fc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    const v0, 0x7f0b01fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_HEIGHT:I

    const v0, 0x7f0c0019

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0e000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_COLOR:I

    const v0, 0x7f0c004a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    mul-int/lit8 v0, v0, 0x9

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEqValueArray:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImageArray:[I

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    const v0, 0x7f0202c2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    const v0, 0x7f0202c3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 4
        0x7f0202a7
        0x7f0202a8
        0x7f0202a9
        0x7f0202aa
        0x7f0202ab
        0x7f0202ac
        0x7f0202ad
        0x7f0202ae
        0x7f0202af
        0x7f0202b0
        0x7f0202b1
        0x7f0202b2
        0x7f0202b3
        0x7f0202b4
        0x7f0202b5
    .end array-data

    :array_1
    .array-data 4
        0x7f0202b6
        0x7f0202b7
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setHRMsensor(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->clear()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecMicImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addAudio(Ljava/io/File;)V
    .locals 5

    const-string v1, "SoundAndShot"

    const-string v2, "addAudio"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    :try_start_0
    const-string v1, "SoundShot_Meta_Info"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    const/16 v3, 0x800

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndShotAddVoiceCompleted()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SoundAndShot"

    const-string v2, "Error while addAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->access$500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->access$600(Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    :cond_1
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicatorlevel([I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordingAmplitude([I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordProgressIncreased()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hideProgressBar()V
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private hideSoundRecordProgressBar()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "SoundAndShot"

    const-string v1, "hideSoundRecordProgressBar"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_0
    return-void
.end method

.method private initAddVoice()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const-string v0, "SoundAndShot"

    const-string v1, "initAddVoice"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    return-void
.end method

.method private isAddVoiceScreen()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecorded()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "SoundAndShot"

    const-string v2, "isRecorded"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSoundScene(Ljava/io/File;)Z
    .locals 4

    const-string v2, "SoundAndShot"

    const-string v3, "isSoundScene"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x800

    invoke-static {p0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const-string v2, "SoundShot_Meta_Info"

    invoke-static {p0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetManualMode()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x4

    const-string v1, "SoundAndShot"

    const-string v2, "resetManualMode"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a022b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_1
    const/16 v1, 0xb

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordingAmplitude([I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private resetProgressBar()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SoundAndShot"

    const-string v2, "resetProgressBar"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->stopRecorder()V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private saveAudio(Ljava/lang/String;)V
    .locals 6

    const-string v1, "SoundAndShot"

    const-string v2, "saveAudio"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "SoundShot_Meta_Info"

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    const/16 v4, 0x800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndShotAddVoiceCompleted()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while addAudio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAudioRecordIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setRecording()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private setAudioRecordIndicatorlevel([I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setRecordingAmplitude([I)V

    goto :goto_0
.end method

.method private setHRMsensor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setProgressBar(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :cond_0
    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setProgressBar(IZ)V
    .locals 3

    if-nez p2, :cond_2

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_1
.end method

.method private setRecordProgressIncreased()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "SoundAndShot"

    const-string v2, "setRecordProgressIncreased - Handler or Context is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    if-ge v1, v6, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v0, v1, 0x1

    if-gt v0, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a022b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(I)V

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v9, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private setRecordingAmplitude([I)V
    .locals 7

    const/16 v6, 0x14

    const/16 v5, 0xe

    new-array v0, v6, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_6

    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    if-le v3, v5, :cond_2

    div-int/lit8 v3, v1, 0x2

    aput v5, p1, v3

    :cond_2
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_3

    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    aput v3, v0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    if-eqz v3, :cond_4

    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    if-ne v3, v5, :cond_5

    :cond_4
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    aput v3, v0, v1

    goto :goto_3

    :cond_5
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method private setReviewImage(Landroid/graphics/Bitmap;IZ)V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "SoundAndShot"

    const-string v1, "showReviewImage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    :cond_0
    if-eqz p3, :cond_2

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb4

    invoke-static {p1, v0, v8}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setSoundAndShotType(I)V
    .locals 3

    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundAndShotMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->resetProgressBar()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    goto :goto_0
.end method

.method private showProgressBar()V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private showSoundRecordProgress()V
    .locals 2

    const-string v0, "SoundAndShot"

    const-string v1, "showSoundRecordProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private soundAndShotAddVoiceCompleted()V
    .locals 6

    const-string v1, "SoundAndShot"

    const-string v2, "soundAndShotAddVoiceCompleted()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB update : getLastContentData().getFilePath() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->updatePostSavingFile(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Path"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private soundAndshotAddVoiceRecordingFinished()V
    .locals 3

    const-string v1, "SoundAndShot"

    const-string v2, "soundAndshotAddVoiceRecordingFinished()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isSoundScene(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->addAudio(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private soundAndshotAddVoiceRecordingPaused()V
    .locals 3

    const-string v1, "SoundAndShot"

    const-string v2, "soundAndshotAddVoiceRecordingPaused()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isSoundScene(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SoundAndShot"

    const-string v2, "the sound file is not stored. store it again"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecordingByExternalEvent(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private startMicAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private startRecordingByCreateButton()V
    .locals 2

    const-string v0, "SoundAndShot"

    const-string v1, "startRecordingByCreateButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showSoundRecordProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startMicAnimation()V

    return-void
.end method

.method private startSoundRecording()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "SoundAndShot"

    const-string v1, "startSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    const-string v0, "SoundAndShot"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isAudioRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SoundAndShot"

    const-string v1, "Audio record not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->startRecorder()V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isMicrophonePlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01fd

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicator(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showProgressBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordProgressIncreased()V

    goto :goto_0
.end method

.method private stopMicAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    return-void
.end method

.method private stopSoundRecording()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_0

    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecording : not recording state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    const-string v0, "SoundAndShot"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->stopRecorder()V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_2

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicator(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->hideProgressBar()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->hideSoundRecordProgressBar()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->resetManualMode()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private stopSoundRecordingByExternalEvent(Ljava/io/File;)V
    .locals 5

    const-string v1, "SoundAndShot"

    const-string v2, "stopSoundRecordingByExternalEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    :try_start_0
    const-string v1, "SoundShot_Meta_Info"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    const/16 v3, 0x800

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SoundAndShot"

    const-string v2, "Error stopSoundRecordingByExternalEvent while saveAudioJPEG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchScreen(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScreen : screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_1

    const-string v0, "SoundAndShot"

    const-string v1, "switchScreen()- It will show normal menu"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SoundAndShot"

    const-string v1, "switchScreen()- It will show addvoice menu"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLayoutForRatio()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    const-string v1, "SoundAndShot"

    const-string v2, "Error occurred"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v0, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_1

    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLayoutForRatio(), SoundAndShotMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLayoutForRatio(), SoundAndShotMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0
.end method

.method private updateRecMicImage()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->removeMessages(I)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImageArray:[I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private updateRecordingAmplevel()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private waitForAudioThread()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->waitForAudioThread()V

    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5

    const/16 v4, 0x4d

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x4

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0xc
        0x4d
    .end array-data

    :array_1
    .array-data 4
        0x3
        0xc
        0x4d
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3

    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged: menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->resetProgressBar()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setSoundAndShotType(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x4d -> :sswitch_1
    .end sparse-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 5

    const/16 v4, 0x7530

    const/16 v3, 0x3a98

    const/16 v1, 0x1f40

    const/4 v2, 0x1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_EFFECT_PREVIEW_FPS_MAX:I

    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    :goto_0
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    return-void

    :cond_0
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_EFFECT_PREVIEW_FPS_MAX:I

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    :goto_2
    const-string v0, "effect_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SoundAndShot"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SoundAndShot"

    const-string v2, "mCaptureStopButton onClicked"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 17

    const-string v2, "SoundAndShot"

    const-string v3, "SoundAndShot"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v7

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v15

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, v15

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v11, v2, :cond_2

    if-nez v11, :cond_0

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f0202c4

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    if-ne v11, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    add-int v14, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

    add-int v16, v2, v3

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    add-int v14, v2, v3

    goto/16 :goto_1

    :cond_2
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    const v5, 0x7f0202b8

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v7

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f0200ef

    const v7, 0x7f0200f1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    :goto_2
    const/16 v2, 0x14

    if-ge v11, v2, :cond_6

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_X_START:I

    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    :goto_4
    const/16 v2, 0xe

    if-gt v12, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_Y:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEqValueArray:[I

    aget v6, v6, v12

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    const/16 v2, 0xa

    if-ne v11, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v13, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_MIC_WIDTH:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v10, v2, v3

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_SPACING:I

    add-int v10, v2, v3

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    int-to-float v4, v13

    const/4 v5, 0x0

    const v6, 0x7f0202b6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_POS_Y:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    :goto_5
    const/16 v2, 0x9

    if-ge v11, v2, :cond_8

    if-nez v11, :cond_7

    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    const/4 v5, 0x0

    const v6, 0x7f0202c4

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

    add-int v14, v2, v3

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_POS_Y:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v7, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0/9 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a022b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_FONT_SIZE:I

    int-to-float v9, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->initAddVoice()V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecorded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sef_file_type"

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-eqz v0, :cond_1

    const-string v0, "date_modified"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onHRMShutterDetected()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-eqz v0, :cond_0

    const-string v0, "SoundAndShot"

    const-string v1, "onHRMShutterDetected returned - Recording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isAddVoiceScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->onShutterKeyReleased(I)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "SoundAndShot"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/ContentData;->getReviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setReviewImage(Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showSoundAndShowAddVoice()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    :cond_1
    return v4

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->saveAudio(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 4

    const/16 v3, 0x4d

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingPaused()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->waitForAudioThread()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    :cond_0
    :goto_1
    return v0

    :sswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SoundAndShot"

    const-string v2, "return sound and shot recording"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "SoundAndShot"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-ne v1, v0, :cond_3

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0

    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0

    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showSoundAndShowAddVoice()V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    const-string v2, "SoundAndShot"

    const-string v3, "showSoundAndShowAddVoice()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x200

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, -0x181

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SoundAndShot"

    const-string v3, "stop onShow by pausing main activity"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_1
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordingAmplitude([I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startRecordingByCreateButton()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
