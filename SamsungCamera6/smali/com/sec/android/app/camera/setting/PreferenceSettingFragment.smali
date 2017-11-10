.class public Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceSettingFragment.java"


# static fields
.field private static final CAMERA_DIM:Ljava/lang/String; = "camera"

.field private static final CAMERA_SETTING:Ljava/lang/String; = "setting"

.field protected static final CONTACT_US_KEY:Ljava/lang/String; = "contact_us"

.field private static final DEPENDENCY_COMMON_KEY:Ljava/lang/String; = "common"

.field private static final DEPENDENCY_FRONT_KEY:Ljava/lang/String; = "front"

.field private static final DEPENDENCY_REAR_KEY:Ljava/lang/String; = "rear"

.field protected static final KEY_FOR_KEYBOARD_COVER_RESOLUTION_DISABLED:Ljava/lang/String; = "keyboard_cover_resolution_disabled"

.field protected static final LIST_KEY_FOR_FRONT_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_resolution_front"

.field protected static final LIST_KEY_FOR_FRONT_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_front"

.field protected static final LIST_KEY_FOR_REAR_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_resolution_rear"

.field protected static final LIST_KEY_FOR_REAR_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_rear"

.field protected static final LIST_KEY_FOR_SHOOTING_METHOD:Ljava/lang/String; = "shooting_method"

.field protected static final LIST_KEY_FOR_TIMER:Ljava/lang/String; = "timer"

.field private static final LIST_SCROLL_ANIMATION_DELAY:I = 0x64

.field private static final LIST_SCROLL_ANIMATION_DURATION:I = 0x190

.field protected static final LIST_TYPE:I = 0x0

.field private static final PREFERENCE_RES_ID:Ljava/lang/String; = "preference_res_id"

.field protected static final SPINNER_KEY_FOR_CAMERA_VOLUME_KEY:Ljava/lang/String; = "camera_volume_key_spinner"

.field protected static final SPINNER_KEY_FOR_FRONT_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_front_resolution_spinner"

.field protected static final SPINNER_KEY_FOR_FRONT_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_front_spinner"

.field protected static final SPINNER_KEY_FOR_REAR_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_rear_resolution_spinner"

.field protected static final SPINNER_KEY_FOR_REAR_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_rear_spinner"

.field protected static final SPINNER_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PrefSettingFragment"

.field private static mDimHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDimArray:[Z

.field private mIsInitialized:Z

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mPreferenceResId:I

.field private mStoragePreference:Landroid/preference/Preference;

.field private onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    new-instance v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method private addPreference(Landroid/preference/Preference;)V
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private getBackCamcorderResolution()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_dual_resolution_key"

    const-string v3, "1920x1080"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_rear_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getBackCameraResolution()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_BACK_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_rear_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_rear_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getDim(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFrontCamcorderResolution()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_dual_resolution_key"

    const-string v3, "1920x1080"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_front_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getFrontCameraResolution()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_FRONT_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_front_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_front_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getSettingDefaultValue(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x7fff

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    sget v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_BACK_CAMCORDER_ANTISHAKE:I

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VIEW_MODE:I

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_4
        0x17 -> :sswitch_0
        0x1a -> :sswitch_3
        0x26 -> :sswitch_0
        0x2a -> :sswitch_0
        0x33 -> :sswitch_0
        0x47 -> :sswitch_0
        0x49 -> :sswitch_5
        0x138 -> :sswitch_2
        0xbbf -> :sswitch_1
    .end sparse-switch
.end method

.method private initialize()Z
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f0e0051

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    move/from16 v25, v0

    if-nez v25, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v25

    const v26, 0x7f0a0221

    invoke-virtual/range {v25 .. v26}, Landroid/app/ActionBar;->setTitle(I)V

    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v25, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "pref_global_camera_fullpreview_key"

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const v25, 0x7f080003

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    move-result-object v16

    const-string v25, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    if-eqz v25, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const-string v25, "camcorder_resolution_rear"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualBackVideoIdList()[I

    move-result-object v6

    :goto_1
    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v5, v0, [Ljava/lang/String;

    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v4, v0, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_2
    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    aget v26, v6, v14

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v5, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    aget v26, v6, v14

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v25, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    array-length v0, v4

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const-string v25, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    const-string v25, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    if-eqz v25, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    const-string v25, "camcorder_resolution_front"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualFrontVideoIdList()[I

    move-result-object v12

    :goto_4
    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v11, v0, [Ljava/lang/String;

    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v10, v0, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_5
    array-length v0, v10

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    aget v26, v12, v14

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v11, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    aget v26, v12, v14

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v6, v4, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setResolutionEntryValues([I[Ljava/lang/String;I)V

    sget-object v25, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    const v25, 0x7f0a00e9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v25, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v12

    goto :goto_4

    :cond_8
    const-string v25, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    array-length v0, v10

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    const-string v25, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_6
    const-string v25, "camera_resolution_rear_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    if-eqz v25, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    const-string v25, "camera_resolution_rear"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    aget v26, v22, v14

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v21, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v12, v10, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setResolutionEntryValues([I[Ljava/lang/String;I)V

    sget-object v25, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    const v25, 0x7f0a00d4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const-string v25, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_c
    const-string v25, "camera_resolution_rear_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setResolutionEntryValues([I[Ljava/lang/String;I)V

    sget-object v25, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    const v25, 0x7f0a00eb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    :cond_d
    :goto_8
    const-string v25, "camera_resolution_front_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    if-eqz v25, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_35

    const-string v25, "camera_resolution_front"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    aget v26, v22, v14

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v21, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_e
    const-string v25, "camera_resolution_rear_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    const-string v25, "camera_resolution_front_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setResolutionEntryValues([I[Ljava/lang/String;I)V

    sget-object v25, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    const v25, 0x7f0a00d6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    :cond_10
    :goto_a
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MOTION_PHOTO:Z

    if-nez v25, :cond_11

    const-string v25, "pref_global_motion_photo_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_11
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-nez v25, :cond_12

    const-string v25, "pref_global_setup_object_trackingaf_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_12
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-nez v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v25

    if-nez v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v25

    if-eqz v25, :cond_14

    :cond_13
    const-string v25, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_14
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v25, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v25

    if-nez v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v25

    if-eqz v25, :cond_16

    :cond_15
    const-string v25, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_16
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_17

    const-string v25, "pref_global_camera_shutter_sound_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_17
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v25, :cond_18

    const-string v25, "pref_global_camera_fullpreview_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_18
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-nez v25, :cond_19

    const-string v25, "pref_global_rear_lens_distortion_correction_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_19
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH:Z

    if-nez v25, :cond_1a

    const-string v25, "pref_global_camera_quick_shot"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_1a
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v25, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_1c

    :cond_1b
    const-string v25, "pref_global_setup_voice_control_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_1c
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->HEART_RATE_SENSOR:Z

    if-nez v25, :cond_1d

    const-string v25, "pref_camera_hrm_shutter_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_1d
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-nez v25, :cond_1e

    const-string v25, "pref_global_setup_floating_camera_button_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_1e
    const-string v25, "pref_global_setup_storage_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v25, :cond_1f

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v25

    if-nez v25, :cond_20

    :cond_1f
    const-string v25, "pref_global_setup_storage_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_20
    const-string v25, "contact_us"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    if-eqz v25, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->isSamsungManagerInstalled()Z

    move-result v25

    if-eqz v25, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->isSamsungManagerVersionSupported()Z

    move-result v25

    if-nez v25, :cond_22

    :cond_21
    const-string v25, "contact_us"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Landroid/preference/Preference;)V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_23

    const-string v25, "pref_camera_qrcode_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_23
    sget-boolean v25, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-nez v25, :cond_24

    const-string v25, "pref_camera_focus_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_24
    const-string v25, "camera_volume_key_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v23, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntryValues([I)V

    sget v25, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "pref_global_camera_volume_key_as"

    sget v27, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static/range {v25 .. v27}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    move/from16 v25, v0

    if-nez v25, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "com.samsung.helphub"

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "com.samsung.helphub"

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_26

    new-instance v13, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v25, 0x7f0a00dc

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v25, "pref_camera_help_key"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreference(Landroid/preference/Preference;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    move-object/from16 v25, v0

    const/16 v26, 0x7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    const/4 v14, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v14, v0, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/preference/PreferenceCategory;

    move/from16 v25, v0

    if-eqz v25, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    const/4 v15, 0x0

    :goto_c
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v15, v0, :cond_4b

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V

    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/preference/ListPreference;

    move/from16 v25, v0

    if-eqz v25, :cond_27

    move-object/from16 v19, v20

    check-cast v19, Landroid/preference/ListPreference;

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_27
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v25, v0

    if-eqz v25, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getSettingDefaultValue(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    const-string v25, "pref_global_camera_quick_shot"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_38

    const v25, 0x7f0a01f1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v25

    if-eqz v25, :cond_37

    move-object/from16 v25, v20

    check-cast v25, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "double_tab_launch"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_36

    const/16 v26, 0x1

    :goto_d
    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_28
    :goto_e
    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->getTitleRes()I

    move-result v25

    const v26, 0x7f0a0203

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    move-object/from16 v25, v0

    if-eqz v25, :cond_29

    const/16 v25, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v25

    if-nez v25, :cond_44

    const/16 v25, 0x1

    :goto_f
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_29
    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2a
    if-eqz v18, :cond_2b

    const-string v25, "contact_us"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2b

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2b
    if-eqz v18, :cond_2e

    const-string v25, "camcorder_resolution_rear"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2c

    const-string v25, "camcorder_resolution_front"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2e

    :cond_2c
    const-string v25, "camcorder_resolution_rear"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_45

    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v26, 0x7f0a00e9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v8

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoFixedResolution()Z

    move-result v25

    if-eqz v25, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAttachVideoFixedResolution()I

    move-result v8

    :cond_2d
    :goto_11
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SettingPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    :cond_2e
    if-eqz v18, :cond_31

    const-string v25, "camera_resolution_rear"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2f

    const-string v25, "camera_resolution_front"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_31

    :cond_2f
    const-string v25, "camera_resolution_rear"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_48

    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v26, 0x7f0a00eb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$8;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v9

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v25

    if-eqz v25, :cond_30

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v25, "keyboard_cover_resolution_disabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_30
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SettingPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    :cond_31
    if-eqz v18, :cond_32

    const-string v25, "timer"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_32

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$10;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$10;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d0009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_32
    if-eqz v18, :cond_34

    const-string v25, "shooting_method"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_34

    const/16 v25, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v25

    if-eqz v25, :cond_33

    const/16 v25, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v25

    if-eqz v25, :cond_33

    const/16 v25, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v25

    if-nez v25, :cond_49

    :cond_33
    const/16 v25, 0x1

    :goto_13
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$11;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$11;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_34
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_c

    :cond_35
    const-string v25, "camera_resolution_front_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_36
    const/16 v26, 0x0

    goto/16 :goto_d

    :cond_37
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v25, v20

    check-cast v25, Landroid/preference/SwitchPreference;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_e

    :cond_38
    const-string v25, "pref_global_setup_review_key"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3a

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isVZWFeature()Z

    move-result v25

    if-eqz v25, :cond_39

    const v25, 0x7f0a0209

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_39
    const v25, 0x7f0a0208

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_3a
    const-string v25, "pref_global_setup_voice_control_key"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3b

    new-instance v25, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/speech/SemSpeechRecognizer;-><init>()V

    const/16 v26, 0x7

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_28

    const v25, 0x7f0a0278

    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v7, v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    aget-object v28, v7, v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    aget-object v28, v7, v28

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    aget-object v28, v7, v28

    aput-object v28, v26, v27

    const/16 v27, 0x4

    const/16 v28, 0x4

    aget-object v28, v7, v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_3b
    const-string v25, "pref_global_setup_floating_camera_button_key"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_28

    const v25, 0x7f0a0177

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_3c
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move/from16 v25, v0

    if-eqz v25, :cond_28

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v25, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3d

    const-string v25, "camcorder_front_resolution_spinner"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3f

    :cond_3d
    const-string v25, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3e

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v8

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v8

    goto :goto_14

    :cond_3f
    const-string v25, "camera_resolution_rear_spinner"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_40

    const-string v25, "camera_resolution_front_spinner"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_43

    :cond_40
    const-string v25, "camera_resolution_rear_spinner"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_42

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v9

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v25

    if-eqz v25, :cond_41

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v25, "keyboard_cover_resolution_disabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v9

    goto :goto_15

    :cond_43
    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_44
    const/16 v25, 0x0

    goto/16 :goto_f

    :cond_45
    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v26, 0x7f0a00d4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$7;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v8

    goto/16 :goto_10

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v25

    if-eqz v25, :cond_47

    sget-object v25, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v8

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v25, "keyboard_cover_resolution_disabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_47
    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->isEnabled()Z

    move-result v25

    if-nez v25, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "pref_overridden_camcorder_resolution"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v27

    invoke-static/range {v25 .. v27}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    goto/16 :goto_11

    :cond_48
    move-object/from16 v25, v20

    check-cast v25, Lcom/sec/android/app/camera/setting/SettingPreference;

    const v26, 0x7f0a00d6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    new-instance v25, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$9;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v9

    goto/16 :goto_12

    :cond_49
    const/16 v25, 0x0

    goto/16 :goto_13

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V

    :cond_4b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b

    :cond_4c
    const/16 v25, 0x1

    return v25
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 3

    new-instance v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "camera"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;I)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 3

    new-instance v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "camera"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "preference_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setDim(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setChecked(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshSummary(Landroid/preference/Preference;)V

    :cond_2
    return-void
.end method

.method private refreshSummary(Landroid/preference/Preference;)V
    .locals 7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v4, p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v4, :cond_6

    const-string v4, "camcorder_rear_resolution_spinner"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "camcorder_front_resolution_spinner"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "camera_resolution_rear_spinner"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "camera_resolution_front_spinner"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "camera_resolution_rear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SettingPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "camera_resolution_front"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SettingPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "camcorder_resolution_rear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "camcorder_resolution_front"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_9
    const-string v4, "camcorder_resolution_rear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoFixedResolution()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAttachVideoFixedResolution()I

    move-result v0

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SettingPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v0

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_CAMCORDER_RESOLUTION:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_d
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "pref_overridden_camcorder_resolution"

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_e
    const-string v4, "timer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private removePreference(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setChecked(Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private setDim(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startScrollAnimation()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "PrefSettingFragment"

    const-string v4, "startScrollAnimation!"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "rear"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "rear"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isFromApplicationSettings()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$12;

    invoke-direct {v3, p0, v2, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$12;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;ILandroid/widget/ListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    new-instance v3, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;

    invoke-direct {v3, p0, v1, v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;Landroid/widget/ListView;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "rear"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "common"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const-string v3, "front"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "common"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public dismissCameraDialog(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected getListType(I)I
    .locals 1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSamsungManagerInstalled()Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v3, "com.samsung.android.voc"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSamsungManagerVersionSupported()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.voc"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0xa220268

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "preference_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    const/16 v5, 0x1770

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    const/16 v4, 0x13e

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    const/16 v3, 0x7f

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->startScrollAnimation()V

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto :goto_3
.end method

.method public onStop()V
    .locals 1

    const/16 v0, 0x1ae

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    const/16 v0, 0x197

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    const/16 v0, 0x1a2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    const/16 v0, 0x1a3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    const/16 v0, 0x19f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(I)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method protected refreshMenu()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreference(Landroid/preference/Preference;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    check-cast v3, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Landroid/preference/Preference;)V

    goto :goto_2
.end method

.method public setGPS(Z)V
    .locals 2

    const-string v1, "pref_global_setup_gps_key"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public showCameraDialog(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(I)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v4, "PrefSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCameraDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v4, "PrefSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCameraDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
