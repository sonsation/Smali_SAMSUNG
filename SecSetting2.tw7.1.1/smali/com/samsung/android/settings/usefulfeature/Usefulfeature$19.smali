.class final Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2942
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3089
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3092
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v12

    .line 3091
    if-eqz v12, :cond_0

    .line 3093
    const-string/jumbo v12, "smartscreen_stay"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3097
    const-string/jumbo v12, "direct_share"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3101
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 3102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 3101
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    .line 3104
    .local v5, "isRestrictedUser":Z
    const-string/jumbo v12, "com.samsung.android.game.gametools"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3105
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v12

    .line 3104
    if-nez v12, :cond_2

    if-nez v5, :cond_2

    .line 3106
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap2(Landroid/content/Context;)Z

    move-result v12

    .line 3104
    if-eqz v12, :cond_3

    .line 3107
    :cond_2
    const-string/jumbo v12, "game_home"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3109
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3110
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    .line 3111
    const-string/jumbo v13, "CscFeature_Common_EnableAirMessage"

    .line 3110
    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3114
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3116
    const-string/jumbo v12, "com.samsung.android.myeventcenter"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3117
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v12

    .line 3114
    if-eqz v12, :cond_6

    .line 3118
    :cond_5
    const-string/jumbo v12, "key_festival_effect"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3120
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-nez v12, :cond_7

    .line 3121
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap5(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-nez v12, :cond_8

    .line 3122
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    .line 3125
    const-string/jumbo v13, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    .line 3122
    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3126
    const-string/jumbo v13, "SMARTMANAGER"

    .line 3122
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 3120
    if-eqz v12, :cond_9

    .line 3127
    :cond_8
    const-string/jumbo v12, "identify_unsaved_numbers"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3129
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_b

    .line 3130
    :cond_a
    const-string/jumbo v12, "identify_unsaved_numbers"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3132
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 3133
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    .line 3136
    const-string/jumbo v13, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    .line 3133
    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3137
    const-string/jumbo v13, "SMARTMANAGER"

    .line 3133
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 3138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_d

    .line 3139
    :cond_c
    const-string/jumbo v12, "call_message_spam_filter"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    :cond_d
    const-string/jumbo v12, "com.samsung.android.app.scrollcapture"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 3142
    const-string/jumbo v12, "com.samsung.android.app.smartcapture"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 3145
    :cond_e
    :goto_1
    const-string/jumbo v12, "com.sec.app.screenrecorder"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 3146
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 3149
    :goto_2
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_3
    if-ge v12, v14, :cond_13

    aget-object v9, v13, v12

    .line 3150
    .local v9, "motionFeature":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 3151
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3149
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3112
    .end local v9    # "motionFeature":Ljava/lang/String;
    :cond_10
    const-string/jumbo v12, "display_airmessage"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3143
    :cond_11
    const-string/jumbo v12, "smart_capture"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3147
    :cond_12
    const-string/jumbo v12, "screen_recorder"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3154
    :cond_13
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    .line 3155
    const-string/jumbo v13, "CscFeature_Setting_ConfigMotionType"

    .line 3154
    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3156
    .local v1, "Motion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 3157
    const-string/jumbo v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3158
    .local v2, "NotSupportMotion":[Ljava/lang/String;
    array-length v8, v2

    .line 3159
    .local v8, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v8, :cond_14

    .line 3160
    aget-object v12, v2, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3167
    .end local v2    # "NotSupportMotion":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v8    # "length":I
    :cond_14
    const/4 v7, 0x0

    .line 3168
    .local v7, "knoxCustomSettingsState":I
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v6

    .line 3169
    .local v6, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v6, :cond_15

    .line 3170
    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v7

    .line 3172
    :cond_15
    and-int/lit8 v12, v7, 0x8

    if-eqz v12, :cond_16

    .line 3173
    const-string/jumbo v12, "multi_window_setting"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3176
    :cond_16
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-nez v12, :cond_17

    .line 3177
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    .line 3176
    if-eqz v12, :cond_18

    .line 3178
    :cond_17
    const-string/jumbo v12, "onehand_operation_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3180
    :cond_18
    const-string/jumbo v12, "com.samsung.android.app.galaxylabs"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 3181
    :cond_19
    const-string/jumbo v12, "galaxy_labs"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3184
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "double_tab_launch_component"

    .line 3183
    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-set0(Ljava/lang/String;)Ljava/lang/String;

    .line 3185
    const-string/jumbo v12, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 3186
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get0()Ljava/lang/String;

    move-result-object v13

    .line 3185
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 3187
    const-string/jumbo v12, "quick_camera_launch"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3189
    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 3190
    const-string/jumbo v12, "assist_and_voice_input_advanced"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3192
    :cond_1c
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13()Z

    move-result v12

    if-nez v12, :cond_1d

    .line 3193
    const-string/jumbo v12, "accelerate_hongbao_receiving"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3195
    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1e

    .line 3196
    const-string/jumbo v12, "hongbao_assistant"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3198
    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 3201
    :cond_1f
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v12

    if-nez v12, :cond_20

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 3202
    :cond_20
    const-string/jumbo v12, "galaxy_labs"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3212
    :goto_6
    const-string/jumbo v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_22

    .line 3213
    :cond_21
    const-string/jumbo v12, "safetycare_help"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3216
    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v12

    if-eqz v12, :cond_30

    .line 3217
    const-string/jumbo v12, "key_safety_assistance"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3222
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 3223
    const-string/jumbo v12, "key_safety_assistance"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3229
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_24

    .line 3230
    const-string/jumbo v12, "dock_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3232
    :cond_24
    const-string/jumbo v12, "applock"

    invoke-static {v12}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_31

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-eqz v12, :cond_31

    .line 3235
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v12

    if-nez v12, :cond_25

    .line 3236
    const-string/jumbo v12, "active_key_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    :cond_25
    const-string/jumbo v12, "increse_touch_sensetivity"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3241
    const-string/jumbo v12, "com.samsung.android.quickassist"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_26

    .line 3242
    const-string/jumbo v12, "quick_dial"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3244
    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_27

    sget v12, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v13, 0x138e4

    if-ge v12, v13, :cond_28

    .line 3245
    :cond_27
    const-string/jumbo v12, "swipe_to_call_or_send_messages"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3247
    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v11

    .line 3248
    .local v11, "sdam":Lcom/samsung/android/app/SemDualAppManager;
    if-eqz v11, :cond_29

    invoke-virtual {v11}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v12

    if-eqz v12, :cond_2a

    :cond_29
    if-nez v11, :cond_2b

    .line 3249
    :cond_2a
    const-string/jumbo v12, "dual_app"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3251
    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap6(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_2c

    .line 3252
    const-string/jumbo v12, "finger_sensor_gesture"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3254
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x112006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3255
    .local v3, "hasSoftkey":Z
    if-eqz v3, :cond_32

    .line 3256
    const-string/jumbo v12, "quick_camera_launch"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3261
    :goto_9
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 3262
    const-string/jumbo v12, "quick_camera_launch_power"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3264
    :cond_2d
    return-object v10

    .line 3199
    .end local v3    # "hasSoftkey":Z
    .end local v11    # "sdam":Lcom/samsung/android/app/SemDualAppManager;
    :cond_2e
    const-string/jumbo v12, "pen_settings_title"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3204
    :cond_2f
    const-string/jumbo v12, "pen_settings_title"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3205
    const-string/jumbo v12, "dock_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3206
    const-string/jumbo v12, "smartscreen_stay"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3207
    const-string/jumbo v12, "key_panic_mode"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3208
    const-string/jumbo v12, "key_safety_assistance"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3209
    const-string/jumbo v12, "safetycare_help"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3219
    :cond_30
    const-string/jumbo v12, "key_panic_mode"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 3233
    :cond_31
    const-string/jumbo v12, "key_applock"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3258
    .restart local v3    # "hasSoftkey":Z
    .restart local v11    # "sdam":Lcom/samsung/android/app/SemDualAppManager;
    :cond_32
    const-string/jumbo v12, "quick_camera_launch_power"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3259
    const-string/jumbo v12, "assist_and_voice_input_advanced"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2961
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2963
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 2965
    .local v15, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2966
    const/4 v2, 0x0

    .line 2967
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2968
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "active_key_settings"

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2969
    const-class v17, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2970
    const v17, 0x7f0b03f3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2971
    const v17, 0x7f0b03f3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 2972
    const v17, 0x7f0b04c4

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2973
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2974
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2978
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2979
    :cond_1
    const/4 v2, 0x0

    .line 2980
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2981
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "multi_window_setting"

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2982
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2983
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2987
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-nez v17, :cond_3

    .line 2988
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap4()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2997
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2998
    const-string/jumbo v17, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2999
    const/4 v3, 0x0

    .line 3000
    .local v3, "data1":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v3    # "data1":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3001
    .local v3, "data1":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "safetycare_help"

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3002
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3003
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3006
    .end local v3    # "data1":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_4
    const/4 v6, 0x0

    .line 3007
    .local v6, "data2":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v6, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v6    # "data2":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3008
    .local v6, "data2":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "onehand_operation_settings"

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3009
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v6, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3010
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3012
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x112006b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 3013
    .local v14, "hasSoftkey":Z
    if-eqz v14, :cond_8

    .line 3014
    const/4 v7, 0x0

    .line 3015
    .local v7, "data3":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "data3":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3016
    .local v7, "data3":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "quick_camera_launch_power"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3017
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3018
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3027
    :goto_1
    const/4 v8, 0x0

    .line 3028
    .local v8, "data4":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v8, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v8    # "data4":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3029
    .local v8, "data4":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "palm_swipe_switch"

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3030
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v8, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3031
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3033
    const/4 v9, 0x0

    .line 3034
    .local v9, "data5":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v9    # "data5":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3035
    .local v9, "data5":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "pick_up_switch"

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3036
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v9, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3037
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3039
    const/4 v10, 0x0

    .line 3040
    .local v10, "data6":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v10    # "data6":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3041
    .local v10, "data6":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "smart_capture"

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3042
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v10, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3043
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3045
    const/4 v11, 0x0

    .line 3046
    .local v11, "data7":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v11, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v11    # "data7":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3047
    .local v11, "data7":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "smartscreen_stay"

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3048
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3049
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3051
    const/4 v12, 0x0

    .line 3052
    .local v12, "data8":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v12, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v12    # "data8":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3053
    .local v12, "data8":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "merged_mute_or_pause_switch"

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3054
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3055
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3057
    const/4 v13, 0x0

    .line 3058
    .local v13, "data9":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v13    # "data9":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3059
    .local v13, "data9":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "pick_up_to_call_out_switch"

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3060
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v13, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3061
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3063
    const/4 v4, 0x0

    .line 3064
    .local v4, "data10":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v4, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v4    # "data10":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3065
    .local v4, "data10":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "screen_recorder"

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3066
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v4, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3067
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3069
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3070
    :cond_5
    const/4 v5, 0x0

    .line 3071
    .local v5, "data11":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v5    # "data11":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3072
    .local v5, "data11":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "pen_settings_title"

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3073
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3074
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3078
    .end local v4    # "data10":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v5    # "data11":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v6    # "data2":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v7    # "data3":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v8    # "data4":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v9    # "data5":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v10    # "data6":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v11    # "data7":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v12    # "data8":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v13    # "data9":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v14    # "hasSoftkey":Z
    :cond_6
    const/4 v2, 0x0

    .line 3079
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3080
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "finger_sensor_gesture"

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3081
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3082
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3084
    return-object v16

    .line 2989
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    :cond_7
    const/4 v2, 0x0

    .line 2990
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2991
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "identify_unsaved_numbers"

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2992
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2993
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3020
    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    .restart local v6    # "data2":Lcom/android/settings/search/SearchIndexableRaw;
    .restart local v14    # "hasSoftkey":Z
    :cond_8
    const/4 v7, 0x0

    .line 3021
    .local v7, "data3":Lcom/android/settings/search/SearchIndexableRaw;
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "data3":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 3022
    .local v7, "data3":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "quick_camera_launch"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 3023
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 3024
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2948
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2950
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const-class v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2951
    const v2, 0x7f080143

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2953
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2955
    return-object v0
.end method
