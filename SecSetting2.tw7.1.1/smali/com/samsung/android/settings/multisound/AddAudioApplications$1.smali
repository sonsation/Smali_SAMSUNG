.class Lcom/samsung/android/settings/multisound/AddAudioApplications$1;
.super Ljava/lang/Object;
.source "AddAudioApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/AddAudioApplications;->loadAppsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/AddAudioApplications;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/AddAudioApplications;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 101
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.MAIN"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v14, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 109
    .local v10, "pi":Landroid/content/pm/ResolveInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v13, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 110
    .local v13, "uid":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 111
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v13    # "uid":I
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v15, "AddAudioApplications"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to find "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "pi":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v15, Lcom/samsung/android/settings/multisound/AddAudioApplications$AlphaComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/samsung/android/settings/multisound/AddAudioApplications$AlphaComparator;-><init>(Lcom/samsung/android/settings/multisound/AddAudioApplications;)V

    invoke-static {v2, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "packageName$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 122
    .local v8, "packageName":Ljava/lang/String;
    new-instance v12, Lcom/samsung/android/settings/notification/RadioPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;)V

    .line 126
    .local v12, "pref":Lcom/samsung/android/settings/notification/RadioPreference;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get0(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/media/AudioManager;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/media/AudioManager;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 129
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 130
    .local v7, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 131
    const/16 v16, 0x1

    .line 130
    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 137
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v7}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v12, v4}, Lcom/samsung/android/settings/notification/RadioPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v12, v8}, Lcom/samsung/android/settings/notification/RadioPreference;->setKey(Ljava/lang/String;)V

    .line 140
    new-instance v15, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;-><init>(Lcom/samsung/android/settings/multisound/AddAudioApplications$1;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get4(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 132
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "label":Ljava/lang/CharSequence;
    :catch_1
    move-exception v3

    .line 133
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v15, "AddAudioApplications"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to find "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 164
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v12    # "pref":Lcom/samsung/android/settings/notification/RadioPreference;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get4(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/preference/PreferenceScreen;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get3(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/app/ProgressDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v15}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get3(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/app/ProgressDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->dismiss()V

    .line 100
    :cond_4
    return-void
.end method
