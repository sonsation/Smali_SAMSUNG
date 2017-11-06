.class public Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;
.super Ljava/lang/Object;
.source "AudioThumbnailCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;
    }
.end annotation


# static fields
.field private static final HIGHLIGHT_OFFSET:Ljava/lang/String; = "highlight_offset"

.field public static final OPEN_ERR_NOT_ENOUGH_MEMORY:I

.field public static final OPEN_ERR_NOT_OPEN_FILE:I

.field public static final OPEN_ERR_UNSUPPORT_FILE_TYPE:I

.field public static final OPEN_SUCCESS:I

.field public static final RESULT_EXTRACT:I

.field private static final TAG:Ljava/lang/String;

.field private static final UNDEFINED:I


# instance fields
.field private mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

.field private mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x3

    const/4 v2, -0x7

    const/4 v1, 0x0

    .line 12
    const-class v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->RESULT_EXTRACT:I

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_SUCCESS:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    :cond_1
    sput v3, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_UNSUPPORT_FILE_TYPE:I

    .line 29
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_4

    :goto_1
    sput v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_NOT_ENOUGH_MEMORY:I

    .line 32
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    :cond_2
    sput v2, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_NOT_OPEN_FILE:I

    return-void

    .line 19
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 29
    :cond_4
    const/4 v1, -0x2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    new-instance v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioThumbnailCompat() UnsatisfiedLinkError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioThumbnailCompat() NoClassDefFoundError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_2
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioThumbnailCompat() Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-direct {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getResultIntent(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "offset"    # I

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    if-lez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "highlight_offset"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 128
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->close()V

    goto :goto_0
.end method

.method public extractHighlight(Ljava/lang/String;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;

    .prologue
    const/4 v2, 0x1

    .line 66
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-virtual {v1, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->checkFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-interface {p2, v2}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractStarted(Z)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    new-instance v2, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;Ljava/lang/String;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_UNSUPPORT_FILE_TYPE:I

    invoke-interface {p2, v1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractError(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->open(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 106
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractStarted(Z)V

    .line 107
    invoke-interface {p2, v0}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractError(I)V

    goto :goto_0

    .line 93
    :pswitch_0
    invoke-interface {p2, v2}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractStarted(Z)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    new-instance v2, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;-><init>(Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->doExtract(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
