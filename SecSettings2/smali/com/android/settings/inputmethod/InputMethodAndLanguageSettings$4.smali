.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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
    .line 1321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1324
    const-string/jumbo v7, "phone_language"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    :cond_0
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1329
    const-string/jumbo v7, "phone_language"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    :cond_1
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v2

    .line 1335
    .local v2, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 1338
    const-string/jumbo v7, "key_user_dictionary_settings"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    :cond_2
    const-string/jumbo v7, "textservices"

    .line 1341
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/TextServicesManager;

    .line 1343
    .local v5, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-static {p1}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v0

    .line 1345
    .local v0, "isInstalledSpellCheckerService":Z
    const-string/jumbo v7, "InputMethodAndLanguageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isInstalledAnySpellCheckerPakcage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1349
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 1351
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v3, :cond_6

    .line 1353
    const-string/jumbo v7, "com.sec.android.inputmethod"

    .line 1354
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1353
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1356
    .local v4, "skipSetSummary":Z
    if-eqz v4, :cond_4

    .line 1357
    if-nez v0, :cond_3

    .line 1358
    const-string/jumbo v7, "spellcheckers_settings"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_3
    if-nez v0, :cond_4

    .line 1361
    const-string/jumbo v7, "key_user_dictionary_settings"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v4    # "skipSetSummary":Z
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.spen_usp"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v6

    .line 1377
    .local v6, "uspLevel":I
    const/4 v7, 0x2

    if-ge v6, v7, :cond_5

    .line 1378
    const-string/jumbo v7, "handwriting_language"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    :cond_5
    return-object v1

    .line 1365
    .end local v6    # "uspLevel":I
    .restart local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_6
    const-string/jumbo v7, "InputMethodAndLanguageSettings"

    const-string/jumbo v8, "cannot find spellcheckerinfo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    if-nez v0, :cond_7

    .line 1367
    const-string/jumbo v7, "spellcheckers_settings"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    :cond_7
    if-nez v0, :cond_4

    .line 1370
    const-string/jumbo v7, "key_user_dictionary_settings"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 1117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v8, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    const v17, 0x7f0b1697

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1122
    .local v14, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 1123
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 1124
    .local v13, "localeNames":Ljava/lang/String;
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1125
    .local v7, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "phone_language"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1126
    const v17, 0x7f0b1699

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1127
    iput-object v13, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1128
    iput-object v13, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1129
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1130
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v13    # "localeNames":Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1135
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "spellcheckers_settings"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1136
    const v17, 0x7f0b192e

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1137
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1138
    const v17, 0x7f0b1a15

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1139
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 1143
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1144
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "user_dict_settings"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1145
    const v17, 0x7f0b16bf

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1146
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1147
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_1
    const-string/jumbo v17, "input_method"

    .line 1174
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 1215
    .local v10, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const-string/jumbo v17, "input"

    .line 1214
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputManager;

    .line 1216
    .local v9, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v4, 0x0

    .line 1218
    .local v4, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 1219
    .local v3, "devices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 1220
    aget v17, v3, v5

    invoke-static/range {v17 .. v17}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 1221
    .local v2, "device":Landroid/view/InputDevice;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1225
    const/4 v4, 0x1

    .line 1227
    invoke-virtual {v2}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v6

    .line 1229
    .local v6, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v9, v6}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v12

    .line 1230
    .local v12, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 1231
    invoke-virtual {v9, v12}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v11

    .line 1234
    .local v11, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    if-eqz v11, :cond_4

    .line 1235
    invoke-virtual {v11}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1240
    .local v15, "summary":Ljava/lang/String;
    :goto_2
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1241
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1242
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1243
    iput-object v15, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1244
    iput-object v15, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1245
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1246
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    .end local v6    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v11    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v12    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v15    # "summary":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1231
    .restart local v6    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v12    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 1237
    .restart local v11    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_4
    const v17, 0x7f0b16bd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "summary":Ljava/lang/String;
    goto :goto_2

    .line 1249
    .end local v2    # "device":Landroid/view/InputDevice;
    .end local v6    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v11    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v12    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v15    # "summary":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 1251
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1252
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "builtin_keyboard_settings"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1254
    const v17, 0x7f0b16e4

    .line 1253
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1255
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1256
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    :cond_6
    new-instance v16, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 1261
    .local v16, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v16 .. v16}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1262
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1263
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "tts_settings"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1264
    const v17, 0x7f0b0081

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1265
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1266
    const v17, 0x7f0b1a17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1267
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    :cond_7
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1272
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "pointer_settings_category"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1273
    const v17, 0x7f0b16b5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1274
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1275
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1278
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "pointer_speed"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1279
    const v17, 0x7f0b16b6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1280
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1281
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap1()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1285
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1286
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "vibrate_input_devices"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1287
    const v17, 0x7f0b16b8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1288
    const v17, 0x7f0b16b9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1289
    const v17, 0x7f0b16b9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1290
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1291
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    :cond_8
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1297
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "keyboard_and_input_methods_category"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1298
    const v17, 0x7f0b16a9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1299
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1300
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1304
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "Virtual_keyboard_settings"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1305
    const v17, 0x7f0b16aa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1306
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1307
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1311
    .restart local v7    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v17, "Physical_keyboard_settings"

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1312
    const v17, 0x7f0b16ae

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1313
    iput-object v14, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1314
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    return-object v8
.end method
