.class public Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
.super Ljava/lang/Object;
.source "CameraSettingsImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings;
.implements Landroid/os/Parcelable;
.implements Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;,
        Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;
    }
.end annotation


# static fields
.field protected static final CAMERA_SETTINGS_NOTIFICATION:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/camera/setting/CameraSettingsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_BACK_BEAUTY_LEVEL:I = 0x0

.field private static final DEFAULT_BEAUTY_LEVEL:I

.field private static DEFAULT_FONT_SCALE:F = 0.0f

.field private static MAX_FONT_SCALE:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"


# instance fields
.field private mAntiFogLevel:I

.field private mAttachBackVideoFixedResolution:I

.field private mAttachFrontVideoFixedResolution:I

.field private mAttachImageMode:Z

.field private mAttachVideoMode:Z

.field private mAutoNightDetection:I

.field private mBackBeautyLevel:I

.field private mBackCameraShootingModeOrder:Ljava/lang/String;

.field private mBackEffect:I

.field private mBackEffectStrengthLevel:I

.field private mBackEffectVignetteLevel:I

.field private mBackShootingMode:I

.field private mBeautyLevel:I

.field private mBeautyMode:I

.field private mCallStatus:I

.field private mCamcorderAntiShake:I

.field private mCamcorderAudioRecording:I

.field private mCamcorderResolution:I

.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraFacing:I

.field private mCameraId:I

.field private mCameraResolutionChanged:Z

.field private mColorTune:I

.field private mCoverCamera:Z

.field private mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

.field private mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

.field private mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDualEffect:I

.field private mDualMode:I

.field private mEasyCamera:Z

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mEyeEnlargeLevel:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFloatingCameraButton:I

.field private mFocusLength:I

.field private mFocusMode:I

.field private mFontScale:F

.field private mFoodBlurType:I

.field private mFoodColorTuneValue:I

.field private mFrontCameraShootingModeOrder:Ljava/lang/String;

.field private mFrontEffect:I

.field private mFrontEffectStrengthLevel:I

.field private mFrontEffectVignetteLevel:I

.field private mFrontFlashMode:I

.field private mFrontShootingMode:I

.field private mGPS:I

.field private mGestureControlMode:I

.field private mGuideLine:I

.field private mHDR:I

.field private mHRMShutter:I

.field private mISO:I

.field private mInitialShootingMode:I

.field private mInterval:I

.field private mIsCamcorderResolutionOverridden:Z

.field private mIsFirstLaunchCameraByHomeKey:Z

.field private mIsTemperatureHighToRecord:Z

.field private mIsTemperatureHighToUseFlash:Z

.field private mIsTemperatureLowToUseFlash:Z

.field private mKelvin:I

.field private mKeyboardCoverCamera:Z

.field private mListenersForAllChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersForSpecifiedChanges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLowBattery:Z

.field private mManualExposureMeter:I

.field private mManualExposureValue:I

.field private mManualFocusLength:I

.field private mManualISO:I

.field private mManualMultiAF:I

.field private mManualShutterSpeed:I

.field private mManualWhiteBalance:I

.field private mMotionPanoramaMode:I

.field private mMotionPhoto:I

.field private mMotionSpeed:I

.field private mMotionWideSelfieMode:I

.field private mMultiAFMode:I

.field private mMultiWindowMode:I

.field private mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

.field private mObjectTrackingAF:I

.field private mOverriddenFocusMode:I

.field private mPictureFormat:I

.field private mPreviousShootingModeForRecording:I

.field private mQRCodeDetection:I

.field private mQuality:I

.field private mRearLensDistortionCorrection:I

.field private mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

.field private mRequestedRecordingDurationLimit:I

.field private mRequestedRecordingSizeLimit:J

.field private mRequestedSaveUri:Landroid/net/Uri;

.field private mResolution:I

.field private mReview:I

.field private mSaveRichTone:I

.field private mSecureCamera:Z

.field private final mSecureSnapshotUriListLock:Ljava/lang/Object;

.field private final mSecureUriListLock:Ljava/lang/Object;

.field private mSeparatedShootingModeName:Ljava/lang/String;

.field private mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private mShapeCorrectionMode:I

.field private mShootingMode:I

.field private mShutterSound:I

.field private mShutterSpeed:I

.field private mSilverCamera:Z

.field private mSimpleCamera:Z

.field private mSkinColorLevel:I

.field private mSlimFaceLevel:I

.field private mSoundAndShotMode:I

.field private mSpotlightLevel:I

.field private mSpotlightPosition:I

.field private mStatusLoggingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStorage:I

.field private mTapToTakePictures:I

.field private mTimer:I

.field private mTorchLight:I

.field private mVideoCollageRecordingTime:I

.field private mVideoCollageType:I

.field private mViewModePreview:I

.field private mVoiceCommand:I

.field private mVolumeKeyAs:I

.field private mWB:I

.field private mWatermarkCategory:I

.field private mWatermarkId:I

.field private mWatermarkInputText:Ljava/lang/String;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DEFAULT_LIVE_BEAUTY_LEVEL:I

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureUriListLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureSnapshotUriListLock:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    iput v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSilverCamera:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    const/16 v0, 0x238c

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const-string v0, "Create CameraSettings"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    return-void
.end method

.method private getCameraIdFromName(Ljava/lang/String;)I
    .locals 1

    const-string v0, "front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCameraIdFromPreferences()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_id_key"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getCoverCamcorderResolution()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getDefaultAutoNightDetectionMode()I
    .locals 5

    const/4 v0, 0x1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "csc_pref_camera_autonightdetection_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultAutoNightDetectionMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultCamcorderAntishake()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BACK_CAMCORDER_ANTISHAKE:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I

    goto :goto_0
.end method

.method private getDefaultCameraResolution(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultCameraResolution : wrong cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check camera ids : Back = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Front = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultDualTrackRecordingMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultFlashMode()I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFlashMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private getDefaultFrontFlashMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultMotionPanoramaMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultMotionWideSelfieMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultStorage()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getEasyCamcorderResolution()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getEasyCameraHDR()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_SUPPORT_COMPANION_CHIP:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x37 -> :sswitch_1
    .end sparse-switch
.end method

.method private getEasyCameraResolution()I
    .locals 3

    const/16 v2, 0x2e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-ne v0, v2, :cond_4

    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_6

    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getKeyboardCoverCamcorderResolution()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKeyboardCoverCameraResolution()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_BACK_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_FRONT_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getQuickLaunchType()I
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "double_tab_launch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getShootingModeIdByModeName(Ljava/lang/String;)I
    .locals 7

    const/16 v4, 0xe

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    const-string v6, "Animated GIF"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string v6, "Anti-fog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_2
    const-string v6, "Aqua"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v6, "Auto"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "Beauty face"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "Panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "Continuous shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "Dual Camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_8
    const-string v6, "Tag shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "Fast motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "Food"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "Hyperlapse"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :sswitch_c
    const-string v6, "Night"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "Pro"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "Rear-cam selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "HDR (Rich tone)"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "Selective focus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "Selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "Shot & more"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "Slow motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "Sound & shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "Sports"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "Video Collage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "Virtual shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "Wide selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x3a

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x31

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_3
    move v0, v1

    goto/16 :goto_1

    :pswitch_4
    move v0, v2

    goto/16 :goto_1

    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x48

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto/16 :goto_1

    :pswitch_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-nez v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x2f

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x43

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x40

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x44

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x4a

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x17

    goto/16 :goto_1

    :pswitch_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x3b

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x4b

    goto/16 :goto_1

    :pswitch_e
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_f
    move v0, v4

    goto/16 :goto_1

    :pswitch_10
    const/16 v0, 0x2d

    goto/16 :goto_1

    :pswitch_11
    const/16 v0, 0x37

    goto/16 :goto_1

    :pswitch_12
    const/16 v0, 0x2e

    goto/16 :goto_1

    :pswitch_13
    const/16 v0, 0x3f

    goto/16 :goto_1

    :pswitch_14
    const/16 v0, 0x23

    goto/16 :goto_1

    :pswitch_15
    const/16 v0, 0x28

    goto/16 :goto_1

    :pswitch_16
    const/16 v0, 0x45

    goto/16 :goto_1

    :pswitch_17
    const/16 v0, 0x3e

    goto/16 :goto_1

    :pswitch_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x4e

    goto/16 :goto_1

    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x34

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6c9bda78 -> :sswitch_11
        -0x6bff4c61 -> :sswitch_15
        -0x4c2de052 -> :sswitch_16
        -0x40b9e52b -> :sswitch_12
        -0x2d24e020 -> :sswitch_8
        -0x2511d74f -> :sswitch_f
        -0x23b798fb -> :sswitch_14
        -0x216450f1 -> :sswitch_17
        -0x1cfe899f -> :sswitch_b
        -0x1916580d -> :sswitch_1
        -0x628a20c -> :sswitch_10
        0x13a8d -> :sswitch_d
        0x1f42dc -> :sswitch_2
        0x1f51cf -> :sswitch_3
        0x21807e -> :sswitch_a
        0x47c73f8 -> :sswitch_c
        0x1930d735 -> :sswitch_18
        0x25b8a682 -> :sswitch_e
        0x34874b61 -> :sswitch_4
        0x3717414b -> :sswitch_6
        0x43a10a95 -> :sswitch_5
        0x4593d295 -> :sswitch_13
        0x47e34349 -> :sswitch_7
        0x483193c7 -> :sswitch_0
        0x503d17da -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method private getShootingModeResourceString(I)Ljava/lang/String;
    .locals 3

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isDownloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_19
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
        0xe -> :sswitch_5
        0x11 -> :sswitch_1
        0x17 -> :sswitch_4
        0x23 -> :sswitch_6
        0x27 -> :sswitch_4
        0x28 -> :sswitch_7
        0x2a -> :sswitch_8
        0x2d -> :sswitch_a
        0x2e -> :sswitch_b
        0x2f -> :sswitch_9
        0x31 -> :sswitch_14
        0x34 -> :sswitch_e
        0x37 -> :sswitch_c
        0x38 -> :sswitch_d
        0x3a -> :sswitch_13
        0x3b -> :sswitch_f
        0x3e -> :sswitch_11
        0x3f -> :sswitch_10
        0x40 -> :sswitch_12
        0x43 -> :sswitch_15
        0x44 -> :sswitch_17
        0x45 -> :sswitch_16
        0x48 -> :sswitch_2
        0x4a -> :sswitch_18
        0x4b -> :sswitch_f
        0x4d -> :sswitch_e
        0x4e -> :sswitch_e
        0x4f -> :sswitch_19
    .end sparse-switch
.end method

.method private getShootingModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private declared-synchronized handleNotification()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-gtz v3, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :cond_3
    :try_start_9
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized handleNotification(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;-><init>(IILcom/sec/android/app/camera/setting/CameraSettingsImpl$1;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    iget v6, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mMenuid:I

    iget v7, v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$SettingValue;->mModeid:I

    invoke-interface {v0, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(II)V

    goto :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :cond_4
    :try_start_9
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSettingValueList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0
.end method

.method private initializeBackCamera()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_6

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private initializeFrontCamera()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v0, :cond_0

    new-array v0, v4, [I

    const/4 v1, 0x5

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_2
    new-array v0, v4, [I

    const/16 v1, 0x7d

    aput v1, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSeparatedShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateIfResolutionChanged()V

    :cond_5
    return-void
.end method

.method private isSeparatedShootingMode(I)Z
    .locals 1

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const/16 v0, 0x46

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs loadFromPreferences([I)V
    .locals 6

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromPreferences - index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v0, :sswitch_data_0

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in loadFromPreferences : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEasyCameraFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFrontFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEasyCameraFrontFlashMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDualEffect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExposureValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mISO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExposureMeter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<fullview> loadFromPreferences mFullviewPreview : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHDR : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGPS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReview : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotionPhoto : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mShutterSound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStorage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlip : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCamcorderResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCamcorderAntiShake : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVoiceCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGuideLine : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mObjectTrackingAF : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRichToneMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGestureControlMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVolumeKeyAs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAutoNightDetection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBeautyLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlimFaceLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEyeEnlargeLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBackBeautyLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAntiFogLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInterval : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoCollageType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoCollageRecordingTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureFormat : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotionPanoramaMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotionWideSelfieMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mColorTune : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQRCodeDetection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFoodBlurType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFloatingCameraButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto/16 :goto_1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_21
        0x7 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_c
        0xe -> :sswitch_28
        0x11 -> :sswitch_e
        0x13 -> :sswitch_16
        0x14 -> :sswitch_d
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_17
        0x22 -> :sswitch_18
        0x26 -> :sswitch_12
        0x2a -> :sswitch_f
        0x47 -> :sswitch_15
        0x49 -> :sswitch_1a
        0x57 -> :sswitch_1b
        0x5a -> :sswitch_6
        0x6a -> :sswitch_3
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1c
        0x6e -> :sswitch_1d
        0x70 -> :sswitch_1e
        0x75 -> :sswitch_20
        0x7d -> :sswitch_19
        0x7f -> :sswitch_22
        0x83 -> :sswitch_23
        0x84 -> :sswitch_24
        0x87 -> :sswitch_26
        0x8d -> :sswitch_2a
        0xaa -> :sswitch_2
        0xad -> :sswitch_27
        0xb4 -> :sswitch_1f
        0xb5 -> :sswitch_2b
        0x138 -> :sswitch_b
        0x13b -> :sswitch_25
        0x13c -> :sswitch_29
        0xbb9 -> :sswitch_13
        0xbbf -> :sswitch_14
    .end sparse-switch
.end method

.method private notifyCameraSettingChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyCameraSettingChanged(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method private resetCameraGlobalSettings()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVolumeKeyAs(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraShutterSound(I)V

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_CAMERA_HDR:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraHDR(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setRearLensDistortionCorrection(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setObjectTrackingAF(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGuideline(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setReview(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setInterval(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGestureControlMode(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setAutoNightDetectionMode(I)V

    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSaveRichTone(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setViewMode(I)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageType(IZ)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setVideoCollageRecordingTime(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setPictureFormat(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setQRCodeDetection(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setHRMShutter(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFoodBlurType(I)V

    const/16 v0, 0x238c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWatermarkId(I)V

    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSelfFlip(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFlashMode(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontFlashMode(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setExposureValue(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setWhiteBalance(I)V

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-ne v0, v2, :cond_2

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraISO(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraExposureMeter(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAudioRecording(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderAntiShake(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setMotionPhoto(I)V

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBeautyLevel(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setSlimFaceLevel(I)V

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEyeEnlargeLevel(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraVoiceCommand(I)V

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(I)V

    goto :goto_0
.end method

.method private resetCommonGlobalSettings()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setGPS(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStorage(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateStorage(Z)V

    return-void
.end method

.method private resetEffectLevelSettingValue()V
    .locals 2

    const-string v0, "CameraSettings"

    const-string v1, "resetEffectLevelSettingValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectStrengthLevel(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setEffectVignetteLevel(I)V

    return-void
.end method

.method private setCameraFacing(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing - wrong camera facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    goto :goto_0
.end method

.method private setCameraIdByShootingModeId(II)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x23 -> :sswitch_0
        0x34 -> :sswitch_1
        0x37 -> :sswitch_1
        0x3e -> :sswitch_0
        0x45 -> :sswitch_0
        0x4d -> :sswitch_1
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method private setCameraResolutionForDual(II)Z
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraResolutionForDual : cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setDefaultFrontCameraShootingModeOrder()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultFrontCameraShootingModeOrderList()V

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultFrontCameraShootingModeOrder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDualMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    :cond_0
    return-void
.end method

.method private setManualExposureMeter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    return-void
.end method

.method private setManualExposureValue(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    return-void
.end method

.method private setManualFocusLength(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    return-void
.end method

.method private setManualISO(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    return-void
.end method

.method private setManualMultiAF(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    return-void
.end method

.method private setManualShutterSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    return-void
.end method

.method private setManualWhiteBalance(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    return-void
.end method

.method private updateDualCameraSetting(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDualCameraSetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDualCameraSetting set wrong resolution for back camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDualCameraSetting set wrong resolution for front camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAntiFogLevel()I
    .locals 3

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_anti_fog_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getAttachVideoFixedResolution()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    goto :goto_0
.end method

.method public getAutoNightDetectionMode()I
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBackBeautyLevel()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_back_camera_beauty_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBackCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBeautyLevel()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBeautyMode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_beauty_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    return v0
.end method

.method public getCamcorderAntiShake()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderAudioRecording()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCamcorderResolution()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCamcorderResolution()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoFixedResolution()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAttachVideoFixedResolution()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderVideoDurationInMS()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCameraDualEffect()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraDualEffect(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraExposureMeter()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_exposure_meter_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraFacing()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    return v0
.end method

.method public getCameraFocusMode()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    goto :goto_0
.end method

.method public getCameraHDR()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_CAMERA_HDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_hdr_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_CAMERA_HDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraISO()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_iso_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getKeyboardCoverCameraResolution()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraResolution()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraResolutionByCameraId(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_dual_front_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraResolutionChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraResolutionForDual()I
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraSingleEffect()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    goto :goto_0
.end method

.method public getCameraVoiceCommand()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_voice_control_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getColorTune()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_colortune"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCommandIdByCurrentShootingMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCommandIdByShootingMode(I)I

    move-result v0

    return v0
.end method

.method public getCommandIdByShootingMode(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x12c

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x13d

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x12d

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x133

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x12e

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x162

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x150

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x152

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x149

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x151

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x13f

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x14d

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x14e

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x14f

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x13a

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x157

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x154

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x156

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x166

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x167

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x158

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x164

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x15a

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x15b

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x15c

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x15d

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x15e

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x161

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x15f

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0x160

    goto :goto_0

    :pswitch_1f
    const/16 v0, 0x163

    goto :goto_0

    :pswitch_20
    const/16 v0, 0x155

    goto :goto_0

    :pswitch_21
    const/16 v0, 0x165

    goto :goto_0

    :pswitch_22
    const/16 v0, 0x168

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1b
        :pswitch_20
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_1a
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1e
        :pswitch_21
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1f
        :pswitch_16
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_22
    .end packed-switch
.end method

.method public getDefaultBackBeautyLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultBeautyLevel()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    return v0
.end method

.method public getDefaultCamcorderResolution()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "csc_pref_camcorder_resolution_key"

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "1920x1080"

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultShootingModeByCurrentCameraId()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectListType()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_effect_list_type"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_EFFECT_LIST_TYPE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_effect_list_type"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_EFFECT_LIST_TYPE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getEffectNameForLogging(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "None"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "None"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "None"

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEffectProcessorMode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchToCamcorderPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isEffectRecordingRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectProcessorMode - mShootingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectProcessorMode - getColorTune(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_0
        0x3b -> :sswitch_1
        0x44 -> :sswitch_3
        0x45 -> :sswitch_2
    .end sparse-switch
.end method

.method public getEffectStrengthLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    goto :goto_0
.end method

.method public getEffectVignetteLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    goto :goto_0
.end method

.method public getExposureValue()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getEyeEnlargeLevel()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_eyeenlarge_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "0020"

    goto :goto_0

    :sswitch_1
    const-string v0, "0040"

    goto :goto_0

    :sswitch_2
    const-string v0, "G008"

    goto :goto_0

    :sswitch_3
    const-string v0, "Z007"

    goto :goto_0

    :sswitch_4
    const-string v0, "Z010"

    goto :goto_0

    :sswitch_5
    const-string v0, "Z092"

    goto :goto_0

    :sswitch_6
    const-string v0, "Z012"

    goto :goto_0

    :sswitch_7
    const-string v0, "Z013"

    goto :goto_0

    :sswitch_8
    const-string v0, "Z014"

    goto :goto_0

    :sswitch_9
    const-string v0, "Z015"

    goto :goto_0

    :sswitch_a
    if-eqz p2, :cond_0

    const-string v0, "Z018"

    goto :goto_0

    :cond_0
    const-string v0, "Z017"

    goto :goto_0

    :sswitch_b
    if-eqz p2, :cond_1

    const-string v0, "Z020"

    goto :goto_0

    :cond_1
    const-string v0, "Z019"

    goto :goto_0

    :sswitch_c
    const-string v0, "Z022"

    goto :goto_0

    :sswitch_d
    const-string v0, "Z023"

    goto :goto_0

    :sswitch_e
    const-string v0, "Z024"

    goto :goto_0

    :sswitch_f
    const-string v0, "Z025"

    goto :goto_0

    :sswitch_10
    const-string v0, "Z083"

    goto :goto_0

    :sswitch_11
    const-string v0, "Z053"

    goto :goto_0

    :sswitch_12
    const-string v0, "Z054"

    goto :goto_0

    :sswitch_13
    const-string v0, "Z055"

    goto :goto_0

    :sswitch_14
    const-string v0, "Z056"

    goto :goto_0

    :sswitch_15
    const-string v0, "Z057"

    goto :goto_0

    :sswitch_16
    const-string v0, "Z058"

    goto :goto_0

    :sswitch_17
    const-string v0, "Z061"

    goto :goto_0

    :sswitch_18
    const-string v0, "Z104"

    goto :goto_0

    :sswitch_19
    const-string v0, "Z116"

    goto :goto_0

    :sswitch_1a
    const-string v0, "Z105"

    goto :goto_0

    :sswitch_1b
    const-string v0, "Z142"

    goto :goto_0

    :sswitch_1c
    const-string v0, "Z084"

    goto :goto_0

    :sswitch_1d
    const-string v0, "Z085"

    goto :goto_0

    :sswitch_1e
    const-string v0, "Z088"

    goto :goto_0

    :sswitch_1f
    const-string v0, "G007"

    goto :goto_0

    :sswitch_20
    const-string v0, "0013"

    goto :goto_0

    :sswitch_21
    const-string v0, "0037"

    goto :goto_0

    :sswitch_22
    const-string v0, "Z009"

    goto :goto_0

    :sswitch_23
    const-string v0, "Z034"

    goto :goto_0

    :sswitch_24
    const-string v0, "Z008"

    goto :goto_0

    :sswitch_25
    const-string v0, "0042"

    goto :goto_0

    :sswitch_26
    const-string v0, "Z134"

    goto :goto_0

    :sswitch_27
    const-string v0, "Z121"

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "Z122"

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "Z123"

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "Z124"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "Z125"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "Z126"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "Z127"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "Z128"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "Z129"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "Z080"

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "Z077"

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "Z078"

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "Z079"

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "Z076"

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "G004"

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "Z132"

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "Z144"

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "G009"

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "G002"

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "G006"

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "G019"

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "G020"

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "G021"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_a
        0x6 -> :sswitch_2
        0x7 -> :sswitch_7
        0x8 -> :sswitch_1
        0x9 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_17
        0xc -> :sswitch_3
        0x11 -> :sswitch_22
        0x13 -> :sswitch_1e
        0x14 -> :sswitch_24
        0x15 -> :sswitch_3b
        0x16 -> :sswitch_39
        0x18 -> :sswitch_4
        0x1d -> :sswitch_0
        0x1e -> :sswitch_36
        0x23 -> :sswitch_23
        0x24 -> :sswitch_38
        0x33 -> :sswitch_21
        0x47 -> :sswitch_20
        0x48 -> :sswitch_1f
        0x51 -> :sswitch_e
        0x54 -> :sswitch_1d
        0x6d -> :sswitch_30
        0x6e -> :sswitch_32
        0x6f -> :sswitch_33
        0x70 -> :sswitch_31
        0x71 -> :sswitch_35
        0x75 -> :sswitch_3c
        0x77 -> :sswitch_d
        0x78 -> :sswitch_19
        0x79 -> :sswitch_5
        0x7f -> :sswitch_1
        0x83 -> :sswitch_13
        0x84 -> :sswitch_12
        0x87 -> :sswitch_37
        0x89 -> :sswitch_1c
        0x90 -> :sswitch_3d
        0x91 -> :sswitch_18
        0x92 -> :sswitch_3a
        0xaa -> :sswitch_1b
        0xac -> :sswitch_34
        0xbb9 -> :sswitch_b
        0xbbf -> :sswitch_25
        0xbe0 -> :sswitch_14
        0x189e -> :sswitch_11
        0x1c24 -> :sswitch_f
        0x1c26 -> :sswitch_10
        0x1c27 -> :sswitch_c
        0x1c2b -> :sswitch_15
        0x1c2c -> :sswitch_16
        0x1c34 -> :sswitch_26
        0x1c35 -> :sswitch_27
        0x1c36 -> :sswitch_28
        0x1c37 -> :sswitch_29
        0x1c38 -> :sswitch_2a
        0x1c39 -> :sswitch_2b
        0x1c3a -> :sswitch_2c
        0x1c3b -> :sswitch_2d
        0x1c3c -> :sswitch_2e
        0x1c3d -> :sswitch_2f
    .end sparse-switch
.end method

.method public getFlashMode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFloatingCameraButton()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getFocusLength()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_focus_length"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFontScale()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    return v0
.end method

.method public getFoodBlurType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    return v0
.end method

.method public getFoodColorTuneValue()I
    .locals 3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_food_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getForcedShutterSound()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForcedShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :cond_0
    const-string v2, "CameraSettings"

    const-string v3, "Warning : sound policy not working normally in forced shutter sound"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getFrontCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrontFlashMode()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getGPS()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getGestureControlMode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_guideline_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getHRMShutter()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_hrm_shutter_key"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getInitialShootingMode()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultShootingModeByCurrentCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public getInterval()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_interval_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getKelvinValue()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    return v0
.end method

.method public getMenuIdByPreferenceKey(Ljava/lang/String;)I
    .locals 1

    const-string v0, "pref_global_camera_volume_key_as"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "camera_volume_key_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x49

    :goto_0
    return v0

    :cond_1
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "pref_camcorder_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camcorder_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/16 v0, 0xbb9

    goto :goto_0

    :cond_5
    const-string v0, "pref_global_setup_storage_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x16

    goto :goto_0

    :cond_6
    const-string v0, "pref_global_setup_voice_control_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x47

    goto :goto_0

    :cond_7
    const-string v0, "pref_global_camera_detection_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x7d

    goto :goto_0

    :cond_8
    const-string v0, "pref_global_camcorder_antishake_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xbbf

    goto :goto_0

    :cond_9
    const-string v0, "pref_global_rear_lens_distortion_correction_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x33

    goto :goto_0

    :cond_a
    const-string v0, "pref_global_setup_self_flip_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x26

    goto :goto_0

    :cond_b
    const-string v0, "pref_camera_guideline_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x13

    goto :goto_0

    :cond_c
    const-string v0, "pref_global_setup_object_trackingaf_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x17

    goto :goto_0

    :cond_d
    const-string v0, "pref_global_setup_gps_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_e
    const-string v0, "pref_global_setup_review_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_f
    const-string v0, "pref_global_motion_photo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x2a

    goto/16 :goto_0

    :cond_10
    const-string v0, "pref_global_camera_shutter_sound_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_11
    const-string v0, "pref_global_camera_fullpreview_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x138

    goto/16 :goto_0

    :cond_12
    const-string v0, "pref_global_camera_picture_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x13b

    goto/16 :goto_0

    :cond_13
    const-string v0, "pref_camera_qrcode_detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x13c

    goto/16 :goto_0

    :cond_14
    const-string v0, "pref_camera_tap_to_take_pictures_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x73

    goto/16 :goto_0

    :cond_15
    const-string v0, "pref_camera_hrm_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x74

    goto/16 :goto_0

    :cond_16
    const-string v0, "pref_camera_focus_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_17
    const-string v0, "pref_global_setup_floating_camera_button_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0xb5

    goto/16 :goto_0

    :cond_18
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getMotionPanoramaMode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionPanoramaMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMotionPhoto()I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_motion_photo_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMotionPhoto : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotionWideSelfieMode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionWideSelfieMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMultiAFMode()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_MULTI_AF_MODE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getMultiWindowMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    return v0
.end method

.method public getObjectTrackingAF()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_setup_object_trackingaf_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getPictureFormat()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_picture_format"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getQRCodeDetection()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getRearLensDistortionCorrection()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_rear_lens_distortion_correction_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getRecordingMotionSpeed()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_recording_motion_speed_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    return-object v0
.end method

.method public getRequestedRecordingDurationLimit()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    return v0
.end method

.method public getRequestedRecordingSizeLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    return-wide v0
.end method

.method public getRequestedSaveUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getReview()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_setup_review_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getSaveRichTone()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelfFlip()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_setup_self_flip_key"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getSeparatedShootingModeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingValue(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x7fff

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFlashMode()I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontFlashMode()I

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFocusMode()I

    move-result v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getExposureValue()I

    move-result v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraDualEffect()I

    move-result v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWhiteBalance()I

    move-result v0

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraISO()I

    move-result v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShutterSpeed()I

    move-result v0

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFocusLength()I

    move-result v0

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraExposureMeter()I

    move-result v0

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getViewMode()I

    move-result v0

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraQuality()I

    move-result v0

    goto :goto_0

    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getZoomValue()I

    move-result v0

    goto :goto_0

    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGuideline()I

    move-result v0

    goto :goto_0

    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v0

    goto :goto_0

    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGPS()I

    move-result v0

    goto :goto_0

    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getReview()I

    move-result v0

    goto :goto_0

    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPhoto()I

    move-result v0

    goto :goto_0

    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSelfFlip()I

    move-result v0

    goto :goto_0

    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraShutterSound()I

    move-result v0

    goto :goto_0

    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v0

    goto :goto_0

    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAudioRecording()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSaveRichTone()I

    move-result v0

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVolumeKeyAs()I

    move-result v0

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSoundAndShotMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getGestureControlMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAutoNightDetectionMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v0

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v0

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageRecordingTime()I

    move-result v0

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v0

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionPanoramaMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMotionWideSelfieMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShapeCorrection()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTapToTakePictures()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getHRMShutter()I

    move-result v0

    goto/16 :goto_0

    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFoodBlurType()I

    move-result v0

    goto/16 :goto_0

    :sswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMultiAFMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    goto/16 :goto_0

    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQRCodeDetection()I

    move-result v0

    goto/16 :goto_0

    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSlimFaceLevel()I

    move-result v0

    goto/16 :goto_0

    :sswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSpotlightLevel()I

    move-result v0

    goto/16 :goto_0

    :sswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEyeEnlargeLevel()I

    move-result v0

    goto/16 :goto_0

    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSkinColorLevel()I

    move-result v0

    goto/16 :goto_0

    :sswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackBeautyLevel()I

    move-result v0

    goto/16 :goto_0

    :sswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRearLensDistortionCorrection()I

    move-result v0

    goto/16 :goto_0

    :sswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAntiFogLevel()I

    move-result v0

    goto/16 :goto_0

    :sswitch_3c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkId()I

    move-result v0

    goto/16 :goto_0

    :sswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkCategory()I

    move-result v0

    goto/16 :goto_0

    :sswitch_3e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFloatingCameraButton()I

    move-result v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_d
        0xc -> :sswitch_f
        0xe -> :sswitch_2b
        0x10 -> :sswitch_10
        0x11 -> :sswitch_15
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_14
        0x15 -> :sswitch_18
        0x16 -> :sswitch_19
        0x17 -> :sswitch_13
        0x18 -> :sswitch_c
        0x1a -> :sswitch_24
        0x1f -> :sswitch_b
        0x22 -> :sswitch_1f
        0x24 -> :sswitch_1a
        0x26 -> :sswitch_17
        0x2a -> :sswitch_16
        0x33 -> :sswitch_3a
        0x47 -> :sswitch_1e
        0x49 -> :sswitch_20
        0x4d -> :sswitch_21
        0x57 -> :sswitch_23
        0x5a -> :sswitch_8
        0x6a -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_34
        0x6e -> :sswitch_35
        0x6f -> :sswitch_36
        0x70 -> :sswitch_37
        0x71 -> :sswitch_2d
        0x73 -> :sswitch_2e
        0x74 -> :sswitch_2f
        0x75 -> :sswitch_3b
        0x7a -> :sswitch_38
        0x7d -> :sswitch_22
        0x7f -> :sswitch_2c
        0x81 -> :sswitch_28
        0x83 -> :sswitch_25
        0x84 -> :sswitch_26
        0x87 -> :sswitch_29
        0x8d -> :sswitch_30
        0x91 -> :sswitch_31
        0xa0 -> :sswitch_3c
        0xa1 -> :sswitch_3d
        0xaa -> :sswitch_2
        0xad -> :sswitch_2a
        0xb4 -> :sswitch_39
        0xb5 -> :sswitch_3e
        0x138 -> :sswitch_e
        0x13b -> :sswitch_27
        0x13c -> :sswitch_33
        0xbb9 -> :sswitch_1b
        0xbbc -> :sswitch_1d
        0xbbf -> :sswitch_1c
        0x170d -> :sswitch_32
    .end sparse-switch
.end method

.method public getSettingValuesString(II)Ljava/lang/String;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    :sswitch_0
    packed-switch p2, :pswitch_data_0

    :sswitch_1
    packed-switch p2, :pswitch_data_1

    :sswitch_2
    packed-switch p2, :pswitch_data_2

    :sswitch_3
    packed-switch p2, :pswitch_data_3

    :sswitch_4
    packed-switch p2, :pswitch_data_4

    :sswitch_5
    packed-switch p2, :pswitch_data_5

    :sswitch_6
    packed-switch p2, :pswitch_data_6

    :sswitch_7
    packed-switch p2, :pswitch_data_7

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a025a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0258

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0259

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0256

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0257

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_1
        0x4d -> :sswitch_7
        0x6a -> :sswitch_0
        0x6c -> :sswitch_0
        0x87 -> :sswitch_4
        0x8d -> :sswitch_3
        0x91 -> :sswitch_2
        0xaa -> :sswitch_0
        0xad -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method public getShapeCorrection()I
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shapecorrection_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getShootingModeIdByActivityName(Ljava/lang/String;)I
    .locals 7

    const/16 v4, 0xe

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v0

    :goto_1
    :pswitch_0
    return v0

    :sswitch_0
    const-string v6, "com.sec.android.app.camera.shootingmode.animatedgif.AnimatedGifActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v6, "com.sec.android.app.camera.shootingmode.animatedgif"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v6, "com.sec.android.app.camera.Animated GIF"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_3
    const-string v6, "com.sec.android.app.camera.shootingmode.antifog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "com.sec.android.app.camera.Anti fog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "com.sec.android.app.camera.shootingmode.aqua"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "com.sec.android.app.camera.Aqua"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "com.sec.android.app.camera.shootingmode.auto"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_8
    const-string v6, "com.sec.android.app.camera.Auto"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v6, "com.sec.android.app.camera.shootingmode.beauty.BeautyActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_a
    const-string v6, "com.sec.android.app.camera.shootingmode.beauty"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_b
    const-string v6, "com.sec.android.app.camera.Beauty Face"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "com.sec.android.app.camera.shootingmode.panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "com.sec.android.app.camera.Panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "com.sec.android.app.camera.shootingmode.motionpanorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "com.sec.android.app.camera.Motion Panorama"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "com.sec.android.app.camera.shootingmode.continuous"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "com.sec.android.app.camera.Continuous shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "com.sec.android.app.camera.shootingmode.continuouslite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "com.sec.android.app.camera.Continuous shot Lite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "com.sec.android.app.camera.shootingmode.dual.DualActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "com.sec.android.app.camera.shootingmode.dual"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "com.sec.android.app.camera.Dual Camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "com.sec.android.app.camera.shootingmode.environment"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "com.sec.android.app.camera.Environment"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "com.sec.android.app.camera.shootingmode.fastmotion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "com.sec.android.app.camera.Fast motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v6, "com.sec.android.app.camera.shootingmode.food.FoodActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v6, "com.sec.android.app.camera.shootingmode.food"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v6, "com.sec.android.app.camera.Food"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v6, "com.sec.android.app.camera.shootingmode.hypermotion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v6, "com.sec.android.app.camera.Hyper motion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v6, "com.sec.android.app.camera.shootingmode.night"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v6, "com.sec.android.app.camera.Night shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v6, "com.sec.android.app.camera.shootingmode.nightscene"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v6, "com.sec.android.app.camera.Night scene"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v6, "com.sec.android.app.camera.shootingmode.pro"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v6, "com.sec.android.app.camera.Pro"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v6, "com.sec.android.app.camera.shootingmode.prolite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v6, "com.sec.android.app.camera.Pro Lite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v6, "com.sec.android.app.camera.shootingmode.rearcamselfie.RearCamSelfieActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v6, "com.sec.android.app.camera.shootingmode.rearcamselfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v6, "com.sec.android.app.camera.Smart Self shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v6, "com.sec.android.app.camera.shootingmode.richtone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v6, "com.sec.android.app.camera.Rich tone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v6, "com.sec.android.app.camera.shootingmode.selectivefocus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v6, "com.sec.android.app.camera.Selective Focus"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v6, "com.sec.android.app.camera.shootingmode.selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v6, "com.sec.android.app.camera.Selfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v6, "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v6, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v6, "com.sec.android.app.camera.Shot and more"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v6, "com.sec.android.app.camera.shootingmode.slowmotion"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v6, "com.sec.android.app.camera.Slow Video"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v6, "com.sec.android.app.camera.shootingmode.soundshot.SoundShotActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v6, "com.sec.android.app.camera.shootingmode.soundshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v6, "com.sec.android.app.camera.Sound and shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v6, "com.sec.android.app.camera.shootingmode.sports.SportsActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v6, "com.sec.android.app.camera.shootingmode.sports"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v6, "com.sec.android.app.camera.Sports"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v6, "com.sec.android.app.camera.shootingmode.videocollage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v6, "com.sec.android.app.camera.Clip movie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v6, "com.sec.android.app.camera.shootingmode.virtualshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v6, "com.sec.android.app.camera.Interactive shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x3f

    goto/16 :goto_0

    :sswitch_40
    const-string v6, "com.sec.android.app.camera.shootingmode.wideselfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x40

    goto/16 :goto_0

    :sswitch_41
    const-string v6, "com.sec.android.app.camera.Ultra wide shot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x41

    goto/16 :goto_0

    :sswitch_42
    const-string v6, "com.sec.android.app.camera.shootingmode.wideselfielite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x42

    goto/16 :goto_0

    :sswitch_43
    const-string v6, "com.sec.android.app.camera.Ultra wide shot Lite"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x43

    goto/16 :goto_0

    :sswitch_44
    const-string v6, "com.sec.android.app.camera.shootingmode.motionwideselfie"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x44

    goto/16 :goto_0

    :sswitch_45
    const-string v6, "com.sec.android.app.camera.shootingmode.productsearch"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string v6, "com.sec.android.app.camera.plb.Camera"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x46

    goto/16 :goto_0

    :pswitch_1
    const/16 v0, 0x3a

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x31

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x2a

    goto/16 :goto_1

    :pswitch_4
    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    move v0, v2

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x48

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_8
    move v0, v3

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x2f

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x43

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x40

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x44

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x4a

    goto/16 :goto_1

    :pswitch_e
    const/16 v0, 0x17

    goto/16 :goto_1

    :pswitch_f
    const/16 v0, 0x27

    goto/16 :goto_1

    :pswitch_10
    const/16 v0, 0x3b

    goto/16 :goto_1

    :pswitch_11
    const/16 v0, 0x4b

    goto/16 :goto_1

    :pswitch_12
    const/16 v0, 0x38

    goto/16 :goto_1

    :pswitch_13
    move v0, v4

    goto/16 :goto_1

    :pswitch_14
    const/16 v0, 0x2d

    goto/16 :goto_1

    :pswitch_15
    const/16 v0, 0x37

    goto/16 :goto_1

    :pswitch_16
    const/16 v0, 0x2e

    goto/16 :goto_1

    :pswitch_17
    const/16 v0, 0x3f

    goto/16 :goto_1

    :pswitch_18
    const/16 v0, 0x23

    goto/16 :goto_1

    :pswitch_19
    const/16 v0, 0x28

    goto/16 :goto_1

    :pswitch_1a
    const/16 v0, 0x45

    goto/16 :goto_1

    :pswitch_1b
    const/16 v0, 0x3e

    goto/16 :goto_1

    :pswitch_1c
    const/16 v0, 0x34

    goto/16 :goto_1

    :pswitch_1d
    const/16 v0, 0x4d

    goto/16 :goto_1

    :pswitch_1e
    const/16 v0, 0x4e

    goto/16 :goto_1

    :pswitch_1f
    const/16 v0, 0x4f

    goto/16 :goto_1

    :pswitch_20
    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x793d7854 -> :sswitch_34
        -0x7924a515 -> :sswitch_3f
        -0x78cc21ea -> :sswitch_16
        -0x70724d59 -> :sswitch_1a
        -0x6f6b8718 -> :sswitch_1b
        -0x6d5b208d -> :sswitch_4
        -0x6b2f25df -> :sswitch_2e
        -0x6770e092 -> :sswitch_0
        -0x671dafbd -> :sswitch_2b
        -0x66b968d3 -> :sswitch_3c
        -0x62648b40 -> :sswitch_18
        -0x61adf7b8 -> :sswitch_39
        -0x61474ef3 -> :sswitch_1e
        -0x50ebb62f -> :sswitch_33
        -0x47de59d7 -> :sswitch_22
        -0x46c4fe58 -> :sswitch_9
        -0x4478c165 -> :sswitch_30
        -0x43dc334e -> :sswitch_3b
        -0x3f16fa39 -> :sswitch_19
        -0x3c62c6a2 -> :sswitch_42
        -0x39dbfff2 -> :sswitch_43
        -0x3971ecd4 -> :sswitch_1
        -0x38f23e3c -> :sswitch_2a
        -0x349a22a3 -> :sswitch_32
        -0x2de826da -> :sswitch_44
        -0x2c47d9aa -> :sswitch_13
        -0x2c2c5268 -> :sswitch_11
        -0x27035bbd -> :sswitch_20
        -0x206d9ecf -> :sswitch_23
        -0x1da92639 -> :sswitch_38
        -0x1a0ca879 -> :sswitch_3
        -0x1594d420 -> :sswitch_46
        -0x109dd518 -> :sswitch_d
        -0xe7c0a3c -> :sswitch_10
        -0xd0bad66 -> :sswitch_2
        -0x81db8e -> :sswitch_12
        0x24b84af -> :sswitch_6
        0x24b93a2 -> :sswitch_8
        0x24dc251 -> :sswitch_1d
        0x3ca4a7e -> :sswitch_36
        0x5ff2646 -> :sswitch_26
        0xa672cf2 -> :sswitch_28
        0xe242423 -> :sswitch_2c
        0xf7869b5 -> :sswitch_21
        0xfe4a0e0 -> :sswitch_41
        0x11b29ba8 -> :sswitch_14
        0x21089bec -> :sswitch_f
        0x22024870 -> :sswitch_31
        0x28025d31 -> :sswitch_5
        0x28026c24 -> :sswitch_7
        0x2803c6f1 -> :sswitch_15
        0x28049ad3 -> :sswitch_1c
        0x31e2d5b1 -> :sswitch_a
        0x32d70198 -> :sswitch_24
        0x33532add -> :sswitch_1f
        0x3514f26a -> :sswitch_c
        0x38f66e13 -> :sswitch_3d
        0x3b0ebc31 -> :sswitch_2d
        0x3cec6882 -> :sswitch_45
        0x3e9685fe -> :sswitch_29
        0x476bb070 -> :sswitch_3e
        0x4880b734 -> :sswitch_37
        0x4ee9fe9d -> :sswitch_2f
        0x4f868cb4 -> :sswitch_3a
        0x5c121060 -> :sswitch_e
        0x5dd9112f -> :sswitch_35
        0x632bf25a -> :sswitch_25
        0x6ff68ad4 -> :sswitch_27
        0x73c95a4e -> :sswitch_b
        0x75ea60b0 -> :sswitch_40
        0x7d5a65fe -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public getShootingModeNameForLogging()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShootingModeResourceString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeResourceStringById(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeValueForISPset()I
    .locals 6

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/16 v0, 0xa

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShootingModeValueForISPset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_4
    move v0, v2

    goto :goto_0

    :sswitch_5
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_NIGHT_DETECTION:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_8
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x1c

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x1d

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x1e

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x1f

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x23

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x24

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x25

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_6
        0x3 -> :sswitch_2
        0x7 -> :sswitch_4
        0xe -> :sswitch_7
        0x17 -> :sswitch_0
        0x23 -> :sswitch_8
        0x27 -> :sswitch_a
        0x28 -> :sswitch_b
        0x2a -> :sswitch_c
        0x2d -> :sswitch_e
        0x2e -> :sswitch_d
        0x2f -> :sswitch_12
        0x31 -> :sswitch_16
        0x34 -> :sswitch_f
        0x37 -> :sswitch_5
        0x38 -> :sswitch_10
        0x3a -> :sswitch_9
        0x3b -> :sswitch_3
        0x3e -> :sswitch_11
        0x40 -> :sswitch_13
        0x44 -> :sswitch_0
        0x45 -> :sswitch_15
        0x48 -> :sswitch_6
        0x4a -> :sswitch_14
        0x4b -> :sswitch_3
        0x4d -> :sswitch_f
        0x4e -> :sswitch_f
    .end sparse-switch
.end method

.method public getShutterSpeed()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_speed_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSkinColorLevel()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_skincolor_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSlimFaceLevel()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_slimface_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSoundAndShotMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    return v0
.end method

.method public getSpotlightLevel()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_level_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSpotlightPosition()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_spotlight_position_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getStatusLoggingList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStatusLoggingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStorage()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTapToTakePictures()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_tap_to_take_pictures_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getTimer()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_timer_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getTorchLightStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    return v0
.end method

.method public getVideoCollageRecordingTime()I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_front_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoCollageRecordingTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_back_video_collage_recording_time"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getVideoCollageType()I
    .locals 3

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getViewMode()I
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0
.end method

.method public getVolumeKeyAs()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWatermarkCategory()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_watermark_category"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWatermarkId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatermarkSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x238c

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    goto :goto_0
.end method

.method public getWatermarkInputText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_white_balance_key"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getZoomValue()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    goto :goto_0
.end method

.method public initAttachVideoFixedResolution()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    return-void
.end method

.method public initRequestedMediaRecorderProfileInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    return-void
.end method

.method public initRequestedRecordingDurationLimit()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    return-void
.end method

.method public initRequestedRecordingSizeLimit()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    return-void
.end method

.method public initRequestedSaveUri()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    return-void
.end method

.method public initializeCamera()V
    .locals 2

    const-string v0, "CameraSettings"

    const-string v1, "initializeCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeBackCamera()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public initializeCameraId(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraFacing:I

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    goto :goto_0
.end method

.method public initializeCameraResolution()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const-string v2, "CameraSettings"

    const-string v3, "wrong back camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CameraSettings"

    const-string v3, "unsupported back camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const-string v2, "CameraSettings"

    const-string v3, "wrong front camera resolution value is changed to fixed resolution."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CameraSettings"

    const-string v3, "unsupported front camera resolution value is changed to default."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public initializeDefaultBackCameraShootingModeOrderList()V
    .locals 7

    const/16 v6, 0x14e

    const/16 v5, 0x149

    const/16 v4, 0x133

    const/16 v3, 0x161

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO_LITE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PANORAMA_SHOT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SLOW_MOTION:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_HYPER_MOTION:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x163

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FAST_MOTION:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_AQUA:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_TAG_SHOT:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRODUCT_SEARCH:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-nez v0, :cond_15

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_DUAL:Z

    if-nez v0, :cond_17

    const/16 v0, 0x150

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_18
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_REAR_SELFIE:Z

    if-nez v0, :cond_19

    const/16 v0, 0x157

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SPORTS_SCENE:Z

    if-nez v0, :cond_1b

    invoke-static {v6, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_1d

    const/16 v0, 0x15d

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1e
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_1f

    const/16 v0, 0x152

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_20
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_21

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_22
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-nez v0, :cond_23

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public initializeDefaultFrontCameraShootingModeOrderList()V
    .locals 6

    const/16 v5, 0x15d

    const/16 v4, 0x152

    const/16 v3, 0x149

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE_LITE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x167

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_LVB:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_CONTINUOUS_SHOT:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_NOT_SUPPORT_ZSL:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_NIGHT_SHOT_SCENE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_RICH_TONE:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_PRODUCT_SEARCH:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_ANIMATEDGIF:Z

    if-nez v0, :cond_f

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SHOT_AND_MORE:Z

    if-nez v0, :cond_11

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SOUND_AND_SHOT:Z

    if-nez v0, :cond_13

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isShootingModeExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x13d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public initializeShootingModeId(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getShootingModeIdByActivityName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraIdFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraIdByShootingModeId(II)V

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInitialShootingMode:I

    return v0
.end method

.method public initializeShootingModeWhenSwitchCamera()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public isAttachImageMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    return v0
.end method

.method public isAttachVideoFixedResolution()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachVideoMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    return v0
.end method

.method public isBackCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCamcorderAntiShakeSupported(I)Z
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_REAR_ANTISHAKE_QHD:Z

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_REAR_ANTISHAKE_FHD_60FPS:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x15 -> :sswitch_1
        0x28 -> :sswitch_0
        0x2a -> :sswitch_2
        0x34 -> :sswitch_0
    .end sparse-switch
.end method

.method public isCoverCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    return v0
.end method

.method public isCurrentSeparatedShootingMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultFrontShootingMode(I)Z
    .locals 1

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_FRONT_SHOOTINGMODE:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultRearShootingMode(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualBackCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualFrontCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    return v0
.end method

.method public isEffectRecordingRestricted()Z
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_GPU_EFFECT_RECORDING:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardCoverCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    return v0
.end method

.method public isNotificationExist()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mNotificationHandler:Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$NotificationHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isResetRequested()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_reset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isResizableCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    return v0
.end method

.method public isSilverCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSilverCamera:Z

    return v0
.end method

.method public isSingleEffect()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedBackCamcorderResolutionFeature(I)Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160:Z

    goto :goto_0

    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440:Z

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080:Z

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS:Z

    goto :goto_0

    :sswitch_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440:Z

    goto :goto_0

    :sswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1080:Z

    goto :goto_0

    :sswitch_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1072X1072:Z

    goto :goto_0

    :sswitch_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720:Z

    goto :goto_0

    :sswitch_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480:Z

    goto :goto_0

    :sswitch_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480:Z

    goto :goto_0

    :sswitch_a
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240:Z

    goto :goto_0

    :sswitch_b
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_176X144:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_9
        0xd -> :sswitch_2
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x15 -> :sswitch_1
        0x1f -> :sswitch_5
        0x28 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2f -> :sswitch_6
        0x34 -> :sswitch_4
    .end sparse-switch
.end method

.method public isSupportedBackCameraResolutionFeature(I)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupportedFrontCamcorderResolutionFeature(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440:Z

    goto :goto_0

    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080:Z

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440:Z

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720:Z

    goto :goto_0

    :sswitch_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1072X1072:Z

    goto :goto_0

    :sswitch_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480:Z

    goto :goto_0

    :sswitch_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480:Z

    goto :goto_0

    :sswitch_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240:Z

    goto :goto_0

    :sswitch_8
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_176X144:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xd -> :sswitch_1
        0xe -> :sswitch_3
        0xf -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_0
        0x2f -> :sswitch_4
        0x34 -> :sswitch_2
    .end sparse-switch
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTemperatureHighToRecord()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    return v0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public isTemperatureLowToUseFlash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    return v0
.end method

.method public onEmpty()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification()V

    return-void
.end method

.method public overrideCamcorderResolution(I)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideCamcorderResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    return-void
.end method

.method public overrideFocusMode(I)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    :cond_0
    return-void
.end method

.method public refreshButtonDimForCamera()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getStorage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbbf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderAntiShake()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTorchLightStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCallStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getObjectTrackingAF()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1770

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x13d

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x2

    invoke-interface {v0, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public refreshSettingValuesFromPreferencesWhenSwitchCamera()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->loadFromPreferences([I)V

    return-void
.end method

.method public registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetCameraEffect()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    return-void
.end method

.method public resetCameraSettingsInDual()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    const/16 v0, 0x12

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    const/4 v0, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    const/16 v0, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    const/16 v0, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraLocalSettings(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCommonGlobalSettings()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetCameraGlobalSettings()V

    return-void
.end method

.method public resetListeners()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public resetOverriddenCamcorderResolution()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    return-void
.end method

.method public resetOverriddenFocusMode()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    return-void
.end method

.method public resetShootingModeOrder()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultBackCameraShootingModeOrder()V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackCameraShootingModeOrder(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDefaultFrontCameraShootingModeOrder()V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBaseColumnIds(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    :cond_1
    return-void
.end method

.method public resetZoomValue()V
    .locals 2

    const-string v0, "CameraSettings"

    const-string v1, "resetZoomValue"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    return-void
.end method

.method public restoreDualResolution(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_rear_resolution_key"

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreDualResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    return-void
.end method

.method public restoreShootingModeAfterRecording()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    return v0
.end method

.method public setAntiFogLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAntiFogLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_anti_fog_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x75

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAntiFogLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setAttachImageMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAttachImageMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachImageMode:Z

    :cond_0
    return-void
.end method

.method public setAttachVideoFixedResolution(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachBackVideoFixedResolution:I

    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachFrontVideoFixedResolution:I

    return-void
.end method

.method public setAttachVideoMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAttachVideoMode:Z

    return-void
.end method

.method public setAutoNightDetectionMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoNightDetectionMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_auto_night_detection_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mAutoNightDetection:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setBackBeautyLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackBeautyLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0xb4

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setBackCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackCameraShootingModeOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBeautyLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_BEAUTY_LEVEL:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x6d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setBeautyMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_beauty_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_beauty_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x81

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBeautyMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setCallStatus(IZ)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCallStatus:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x136

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_2
    return-void
.end method

.method public setCamcorderAntiShake(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAntiShake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camcorder_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAntiShake:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0xbbf

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderAudioRecording:I

    :cond_0
    return-void
.end method

.method public setCamcorderResolution(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoFixedResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_overridden_camcorder_resolution"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderResolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsCamcorderResolutionOverridden:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_overridden_camcorder_resolution"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    const/16 v0, 0xbb9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_dual_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_dual_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camcorder_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCamcorderResolution:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public setCameraDualEffect(I)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraDualEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_DUAL_EFFECT:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    if-eq v0, p1, :cond_0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_dual_effect"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDualEffect:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setZoomValue(I)V

    :cond_1
    const/16 v0, 0x5a

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    return-void
.end method

.method public setCameraEffect(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraEffect(IZ)V

    return-void
.end method

.method public setCameraEffect(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffect:I

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetEffectLevelSettingValue()V

    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffect:I

    goto :goto_0
.end method

.method public setCameraExposureMeter(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureMeter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureMeter:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureMeter:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_meter_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_2
    return-void
.end method

.method public setCameraHDR(I)V
    .locals 4

    const/16 v3, 0xc

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getEasyCameraHDR()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraHDR()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraHDR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_rear_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHDR:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setCameraISO(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraISO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mISO:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualISO:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_iso_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_2
    return-void
.end method

.method public setCameraId(I)V
    .locals 6

    const/16 v5, 0x24

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-gez p1, :cond_1

    const-string v0, "CameraSettings"

    const-string v1, "wrong camera id, so return setCameraId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_5

    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraFacing(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    goto :goto_2
.end method

.method public setCameraQuality(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraQuality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQuality:I

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->handleNotification(II)V

    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v2, :cond_2

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for front dual camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for back dual camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for front camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wrong resolution for back camera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    :cond_7
    :goto_1
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resolution : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    if-eq v2, p1, :cond_1

    const-string v0, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pref_camera_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionChanged(Z)V

    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_rear_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_front_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCameraResolution(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pref_camera_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_front_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pref_camera_dual_front_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_camera_dual_rear_resolution_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pref_camera_dual_rear_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mResolution:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraResolutionChanged:Z

    return-void
.end method

.method public setCameraShutterSound(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getForcedShutterSound()I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v1, "CameraSettings"

    const-string v2, "In this model, shutter sound must be playbacked"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_camera_shutter_sound_key"

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSound:I

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v1, 0x15

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setCameraVoiceCommand(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraVoiceCommand()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraVoiceCommand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVoiceCommand:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_voice_control_key"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x47

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    :cond_3
    const-string v0, "CameraSettings"

    const-string v1, "setCameraVoiceCommand OFF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_1
.end method

.method public setColorTune(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getColorTune()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorTune "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mColorTune:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_colortune"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setCoverCamera(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x137

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eq v2, p1, :cond_0

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCoverCamera = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraChanged(Z)V

    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setDefaultBackCameraShootingModeOrder()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->initializeDefaultBackCameraShootingModeOrderList()V

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultBackCameraShootingModeOrder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEasyCamera(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eq v0, p1, :cond_1

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEasyCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    :cond_1
    return-void
.end method

.method public setEffectListType(I)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffectListType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_effect_list_type"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_effect_list_type"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setEffectStrengthLevel(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectStrengthLevel:I

    :goto_0
    mul-int/lit8 v1, p1, 0x5a

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    const/16 v1, 0x97

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectStrengthLevel:I

    goto :goto_0
.end method

.method public setEffectVignetteLevel(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontEffectVignetteLevel:I

    :goto_0
    const/16 v0, 0x98

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackEffectVignetteLevel:I

    goto :goto_0
.end method

.method public setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-void
.end method

.method public setExposureValue(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mExposureValue:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualExposureValue:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_exposure_value_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    :cond_2
    return-void
.end method

.method public setEyeEnlargeLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEyeEnlargeLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_eyeenlarge_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x70

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEyeEnlargeLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 5

    const/16 v4, 0x6c

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pref_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlashMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->updateDualCameraSetting(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCoverCamera:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setFloatingCameraButton(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFloatingCameraButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_floating_camera_button_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0xb5

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFloatingCameraButton:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setFocusLength(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_focus_length"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    if-eq v0, p1, :cond_3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->resetOverriddenFocusMode()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    if-gez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideFocusMode(I)V

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusLength:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualFocusLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_focus_length"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_3
    return-void
.end method

.method public setFocusMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setFocusMode(II)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode focusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", overriddenFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFocusMode:I

    iput p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mOverriddenFocusMode:I

    return-void
.end method

.method public setFontScale(F)V
    .locals 1

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->MAX_FONT_SCALE:F

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFontScale:F

    goto :goto_0
.end method

.method public setFoodBlurType(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFoodBlurType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    const/16 v0, 0x8d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodBlurType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setFoodColorTuneValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_food_level_key"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFoodColorTuneValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_food_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x76

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFoodColorTuneValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setFrontCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mDefaultFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontCameraShootingModeOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFrontFlashMode(I)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultFrontFlashMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    if-eq v0, p1, :cond_4

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontFlashMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontFlashMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_5

    :cond_3
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/16 v0, 0xaa

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setGPS(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_gps_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGPS:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setGestureControlMode(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGestureControlMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_detection_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x7d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGestureControlMode:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setGuideline(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGuideline "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x13

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mGuideLine:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setHRMShutter(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_hrm_shutter_key"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHRMShutter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_hrm_shutter_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mHRMShutter:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setInterval(I)V
    .locals 4

    const/16 v3, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_interval_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_0
    return-void
.end method

.method public setKelvinValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKelvin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKelvin:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_kelvin_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x23

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setKeyboardCoverCamera(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyboardCoverCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mKeyboardCoverCamera:Z

    :cond_0
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mLowBattery:Z

    return-void
.end method

.method public setManualSettings(I)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setManualSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureValue(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualShutterSpeed(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualISO(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualWhiteBalance(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualFocusLength(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualExposureMeter(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setManualMultiAF(I)V

    return-void
.end method

.method public setMotionPanoramaMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionPanoramaMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionPanoramaMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_panorama_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPanoramaMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x87

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setMotionPhoto(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_motion_photo_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionPhoto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_motion_photo_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x2a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionPhoto:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setMotionWideSelfieMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultMotionWideSelfieMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionWideSelfieMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_motion_wide_selfie_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionWideSelfieMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0xad

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setMultiAFMode(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_MULTI_AF_MODE:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMultiAFMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualMultiAF:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_multi_af_mode"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiAFMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const/16 v0, 0x91

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_2
    return-void
.end method

.method public setMultiWindowMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiWindowMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMultiWindowMode:I

    :cond_0
    return-void
.end method

.method public setObjectTrackingAF(I)V
    .locals 4

    const/16 v3, 0x17

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    if-eq v0, p1, :cond_1

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setObjectTrackingAF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_object_trackingaf_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mObjectTrackingAF:I

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public setPictureFormat(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureFormat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x13b

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPictureFormat:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setQRCodeDetection(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQRCodeDetection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_qrcode_detection"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x13c

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mQRCodeDetection:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setRearLensDistortionCorrection(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_rear_lens_distortion_correction_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRearLensDistortionCorrection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_rear_lens_distortion_correction_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRearLensDistortionCorrection:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getRecordingMotionSpeed()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMotionSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_recording_motion_speed_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x170d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mMotionSpeed:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    return-void
.end method

.method public setRequestedRecordingDurationLimit(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingDurationLimit:I

    return-void
.end method

.method public setRequestedRecordingSizeLimit(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedRecordingSizeLimit:J

    return-void
.end method

.method public setRequestedSaveUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mRequestedSaveUri:Landroid/net/Uri;

    return-void
.end method

.method public setResizableCamera(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eq v0, p1, :cond_1

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResizableCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setDualMode(I)V

    :cond_1
    return-void
.end method

.method public setReview(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEasyCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSimpleCamera:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_review_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x11

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mReview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setSaveRichTone(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSaveRichTone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_save_richtone_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSaveRichTone:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 4

    const/16 v3, 0x13d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eq v0, p1, :cond_1

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecureCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSecureCamera:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraId(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public setSelfFlip(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x26

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFlip:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v0, :cond_0

    const-string v0, "CameraSettings"

    const-string v1, "Cannot support Separated ShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeparatedShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setShapeCorrection(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shapecorrection_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShapeCorrection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shapecorrection_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x71

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShapeCorrectionMode:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    if-eq v0, p1, :cond_0

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSeparatedShootingModeName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_DUAL:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mBackShootingMode:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setShutterSpeed(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShutterSpeed:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualShutterSpeed:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_shutter_speed_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_2
    return-void
.end method

.method public setSkinColorLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkinColorLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_skincolor_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x7a

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSkinColorLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlimFaceLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_slimface_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x6e

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSlimFaceLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setSoundAndShotMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundAndShotMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    const/16 v0, 0x4d

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSoundAndShotMode:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setSpotlightLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_level_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpotlightLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x6f

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightLevel:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setSpotlightPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_position_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpotlightPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_spotlight_position_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x77

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mSpotlightPosition:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 4

    const/16 v3, 0x16

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultStorage()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStorage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mStorage:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setStorageStatus(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    return-void
.end method

.method public setTapToTakePictures(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_tap_to_take_pictures_key"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTapToTakePictures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_tap_to_take_pictures_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTapToTakePictures:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setTemperatureHighToRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToRecord:Z

    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureHighToUseFlash:Z

    return-void
.end method

.method public setTemperatureLowToUseFlash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mIsTemperatureLowToUseFlash:Z

    return-void
.end method

.method public setTimer(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x7f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_0
    return-void
.end method

.method public setTorchLightStatus(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x12c

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mTorchLight:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_0
    return-void
.end method

.method public setVideoCollageRecordingTime(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCollageRecordingTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_recording_time"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    const/16 v0, 0x84

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_recording_time"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_recording_time"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageRecordingTime:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setVideoCollageResolution()V
    .locals 5

    const-string v2, "CameraSettings"

    const-string v3, "setVideoCollageResolution()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    :goto_0
    const-string v0, "960x720"

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getVideoCollageType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v0, "640x480"

    :cond_1
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoCollageResolution() - camera="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " camcorder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolution(I)Z

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideCamcorderResolution(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    :goto_2
    const-string v0, "960x960"

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoCollageType(IZ)V
    .locals 3

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCollageType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_front_video_collage_type"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    if-eqz p2, :cond_0

    const/16 v0, 0x83

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_back_video_collage_type"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVideoCollageType:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setViewMode(I)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VIEW_MODE:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_fullpreview_key"

    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v0, 0x138

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mViewModePreview:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    goto :goto_0
.end method

.method public setVolumeKeyAs(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    sget v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeKeyAs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mVolumeKeyAs:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_volume_key_as"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setWatermarkCategory(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getWatermarkCategory()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_watermark_category"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0xa1

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkCategory:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public setWatermarkId(I)V
    .locals 4

    const/16 v3, 0xa0

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkId:I

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_0
    return-void
.end method

.method public setWatermarkInputText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWatermarkInputText:Ljava/lang/String;

    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mWB:I

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mManualWhiteBalance:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_white_balance_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_2
    return-void
.end method

.method public setZoomValue(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mZoomValue:I

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->notifyCameraSettingChanged(II)V

    :cond_0
    return-void
.end method

.method public storeShootingModeBeforeRecording()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mPreviousShootingModeForRecording:I

    return-void
.end method

.method public unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForAllChanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mListenersForSpecifiedChanges:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "CameraSettings"

    const-string v3, "Could not find listener. return."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCameraResolutionForDual()V
    .locals 4

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCameraResolutionForDual : resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_WIDE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_SQUARE_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_NORMAL_PICTURESIZE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCameraResolutionForDual(II)Z

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
