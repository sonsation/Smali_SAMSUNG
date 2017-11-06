.class public Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
.super Ljava/lang/Object;
.source "SeslPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslPreferenceManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mNextId:J

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mNextId:J

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mStorage:I

    .line 101
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 309
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .prologue
    .line 387
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 387
    invoke-static {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 389
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .prologue
    const/4 v4, 0x0

    .line 421
    const-string v3, "_has_set_default_values"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 424
    .local v0, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string v3, "_has_set_default_values"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    :cond_0
    new-instance v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 426
    .local v2, "pm":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setSharedPreferencesMode(I)V

    .line 428
    const/4 v3, 0x0

    invoke-virtual {v2, p0, p3, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "_has_set_default_values"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 433
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->getInstance()Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 435
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pm":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    :cond_1
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 2
    .param p1, "noCommit"    # Z

    .prologue
    .line 469
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 470
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->getInstance()Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 472
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mNoCommit:Z

    .line 473
    return-void
.end method


# virtual methods
.method public createPreferenceScreen(Landroid/content/Context;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    .local v0, "preferenceScreen":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->onAttachedToHierarchy(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;)V

    .line 137
    return-object v0
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 453
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOnDisplayPreferenceDialogListener()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnDisplayPreferenceDialogListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;

    return-object v0
.end method

.method public getOnNavigateToScreenListener()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnNavigateToScreenListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnPreferenceTreeClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 284
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mStorage:I

    packed-switch v1, :pswitch_data_0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mContext:Landroid/content/Context;

    .line 293
    .local v0, "storageContext":Landroid/content/Context;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 297
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v1

    .line 286
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 287
    .restart local v0    # "storageContext":Landroid/content/Context;
    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateFromResource(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setNoCommit(Z)V

    .line 124
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceInflater;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceInflater;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;)V

    .line 125
    .local v0, "inflater":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceInflater;
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceInflater;->inflate(ILcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object p3

    .end local p3    # "rootPreferences":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    check-cast p3, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .line 126
    .restart local p3    # "rootPreferences":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    invoke-virtual {p3, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->onAttachedToHierarchy(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;)V

    .line 129
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setNoCommit(Z)V

    .line 131
    return-object p3
.end method

.method public isStorageDefault()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 252
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mStorage:I

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageDeviceProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mStorage:I

    if-ne v2, v0, :cond_0

    .line 270
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 268
    goto :goto_0

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public setOnDisplayPreferenceDialogListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;)V
    .locals 0
    .param p1, "onDisplayPreferenceDialogListener"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnDisplayPreferenceDialogListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;

    .line 491
    return-void
.end method

.method public setOnNavigateToScreenListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnNavigateToScreenListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;

    .line 526
    return-void
.end method

.method public setOnPreferenceTreeClickListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnPreferenceTreeClickListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;

    .line 512
    return-void
.end method

.method public setPreferences(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    if-eq p1, v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->onDetached()V

    .line 341
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mPreferenceScreen:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .line 342
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferencesMode:I

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 195
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 172
    return-void
.end method

.method public setStorageDefault()V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mStorage:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 206
    :cond_0
    return-void
.end method

.method public setStorageDeviceEncrypted()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setStorageDeviceProtected()V

    .line 242
    return-void
.end method

.method public setStorageDeviceProtected()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mStorage:I

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 233
    :cond_0
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnDisplayPreferenceDialogListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->mOnDisplayPreferenceDialogListener:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    .line 502
    :cond_0
    return-void
.end method
