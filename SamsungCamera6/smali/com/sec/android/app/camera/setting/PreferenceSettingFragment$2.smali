.class Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    instance-of v10, p1, Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_a

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    const-string v10, "pref_global_setup_gps_key"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isChinaFeature()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/16 v11, 0x1a1

    const/16 v12, 0x7ea

    invoke-static {v10, v11, v12}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v11, 0x1a3

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/16 v11, 0x1a0

    const/16 v12, 0x7ea

    invoke-static {v10, v11, v12}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v11, 0x1a2

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v11, 0x19f

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const-string v10, "pref_global_setup_object_trackingaf_key"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-static {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;

    move-result-object v11

    const/16 v12, 0x17

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v12, v10}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2, v7}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    const-string v10, "pref_global_camera_quick_shot"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v9, 0x1

    :goto_4
    const-string v10, "PrefSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set Quicklaunch mode. update setting db for double tab launch : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "double_tab_launch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    const-string v10, "pref_global_motion_photo_key"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->setMotionPhotoComposerEnable(Landroid/content/Context;Z)V

    goto :goto_3

    :cond_a
    instance-of v10, p1, Landroid/preference/ListPreference;

    if-eqz v10, :cond_c

    move-object v6, p1

    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v3

    :goto_5
    invoke-virtual {v6, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    :cond_c
    instance-of v10, p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v10, :cond_4

    const-string v10, "camcorder_rear_resolution_spinner"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "camcorder_front_resolution_spinner"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_d
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "camcorder_rear_resolution_spinner"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_camcorder_rear_resolution_key"

    invoke-static {v10, v11, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_6
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v10, p1

    check-cast v10, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    iget-object v11, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_camcorder_front_resolution_key"

    invoke-static {v10, v11, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_6

    :cond_f
    const-string v10, "camera_resolution_rear_spinner"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "camera_resolution_front_spinner"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_10
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "camera_resolution_rear_spinner"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_camera_rear_resolution_key"

    invoke-static {v10, v11, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_camera_dual_rear_resolution_key"

    invoke-static {v10, v11, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_7
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x4

    invoke-static {v10, v8}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_11

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_11
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_12
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-static {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_camera_dual_front_resolution_key"

    invoke-static {v10, v11, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7

    :cond_13
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_camera_front_resolution_key"

    invoke-static {v10, v11, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_camera_dual_front_resolution_key"

    invoke-static {v10, v11, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7

    :cond_14
    const-string v10, "camera_volume_key_spinner"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_global_camera_volume_key_as"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3
.end method
