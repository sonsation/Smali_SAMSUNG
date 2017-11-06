.class public Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;
.super Ljava/lang/Object;
.source "AdaptSound.java"


# static fields
.field public static final ACTION_INTENT_ADAPT_SOUND_CHECKED:Ljava/lang/String; = "com.sec.hearingadjust.checkmusic"

.field public static final ACTION_INTENT_LAUNCH_HEARING_ADJUST:Ljava/lang/String; = "com.sec.hearingadjust.launch"

.field private static final ADAPT_SOUND_EACH_SIDE_RESULT_LENGTH:I = 0x6

.field public static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field private static final CLASSNAME:Ljava/lang/String;

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final POPUP_UI_RECEIVER_CLASS:Ljava/lang/String; = "com.sec.android.app.popupuireceiver"

.field public static final POPUP_UI_RECEIVER_DISABLE_APP_CLASS:Ljava/lang/String; = "com.sec.android.app.popupuireceiver.DisableApp"

.field private static final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String; = "hearing_musiccheck"

.field private static final SETTING_ADAPTSOUND_DIAGNOSIS:Ljava/lang/String; = "hearing_diagnosis"

.field private static final SETTING_ADAPTSOUND_PARAMETERS:Ljava/lang/String; = "hearing_parameters"


# instance fields
.field private final mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "priority"    # I
    .param p3, "audioSessionId"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    .line 66
    return-void
.end method

.method private getAnalyzedGain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "hearing_parameters"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAdaptSoundOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "hearing_musiccheck"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isAlreadyDiagnosed(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "hearing_diagnosis"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static setAdaptSoundOn(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bIschecked"    # Z

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "hearing_musiccheck"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateGain()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->getAnalyzedGain()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "param":Ljava/lang/String;
    new-array v1, v9, [I

    .line 75
    .local v1, "left":[I
    new-array v4, v9, [I

    .line 77
    .local v4, "right":[I
    if-eqz v3, :cond_2

    .line 78
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "str":[Ljava/lang/String;
    array-length v2, v5

    .line 81
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 82
    if-ge v0, v9, :cond_0

    .line 83
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v0

    .line 84
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    add-int/lit8 v6, v0, -0x6

    aget-object v7, v5, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    .line 87
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v0, -0x6

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-virtual {v6, v1, v4}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->setGain([I[I)V

    .line 92
    .end local v0    # "i":I
    .end local v2    # "len":I
    .end local v5    # "str":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->updateGain()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->setEnabled(Z)I

    .line 107
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->release()V

    .line 114
    return-void
.end method
