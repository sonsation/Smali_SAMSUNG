.class public final Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;
.super Ljava/lang/Object;
.source "SoundQualityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils$Apea;,
        Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils$Uhqa;,
        Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils$Dsda;,
        Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils$Quality;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44

.field private static final MAX_BIT_DEPTH_VALUE:I = 0x7fffff

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static convertDsdQuality(I)Ljava/lang/String;
    .locals 1
    .param p0, "samplingRate"    # I

    .prologue
    .line 224
    const v0, 0xac44

    div-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBitDepth(J)I
    .locals 2
    .param p0, "soundQualityData"    # J

    .prologue
    .line 117
    const-wide/32 v0, 0x7fffff

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static getBitDepth(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitDepth"    # I

    .prologue
    .line 156
    if-lez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->n_bit:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSamplingRate(J)I
    .locals 4
    .param p0, "soundQualityData"    # J

    .prologue
    .line 113
    const/16 v0, 0x18

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getSamplingRate(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "samplingRate"    # I

    .prologue
    .line 149
    if-lez p1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->n_khz:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p1, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSoundQuality(J)I
    .locals 2
    .param p0, "soundQualityData"    # J
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils$Quality$Def;
    .end annotation

    .prologue
    .line 109
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getSoundQualityData(I)J
    .locals 3
    .param p0, "quality"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x5L
        .end annotation
    .end param

    .prologue
    .line 104
    int-to-long v0, p0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getSoundQualityData(IILjava/lang/String;)J
    .locals 7
    .param p0, "samplingRate"    # I
    .param p1, "bitDepth"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v6, 0x18

    .line 77
    const v1, 0x7fffff

    if-le p1, v1, :cond_0

    .line 78
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundQualityData(), could not allow the given bit depth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-wide/16 v2, 0x0

    .line 99
    :goto_0
    return-wide v2

    .line 82
    :cond_0
    if-gez p0, :cond_1

    .line 83
    const/4 p0, 0x0

    .line 85
    :cond_1
    if-gez p1, :cond_2

    .line 86
    const/4 p1, 0x0

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    .local v0, "quality":I
    const v1, 0x2b1100

    if-lt p0, v1, :cond_5

    const-string v1, "audio/x-dsf"

    .line 91
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "audio/x-dff"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    :cond_3
    const/16 v0, 0x16

    .line 99
    :cond_4
    :goto_1
    int-to-long v2, v0

    const/16 v1, 0x38

    shl-long/2addr v2, v1

    int-to-long v4, p0

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    int-to-long v4, p1

    or-long/2addr v2, v4

    goto :goto_0

    .line 93
    :cond_5
    const v1, 0xac44

    if-lt p0, v1, :cond_7

    if-lt p1, v6, :cond_7

    const-string v1, "audio/flac"

    .line 94
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "audio/x-wav"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    :cond_6
    const/16 v0, 0x15

    goto :goto_1

    .line 96
    :cond_7
    const-string v1, "audio/x-ape"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResId"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isApe(J)Z
    .locals 2
    .param p0, "soundQualityData"    # J

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDsd(J)Z
    .locals 2
    .param p0, "soundQualityData"    # J

    .prologue
    .line 129
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHighQuality(J)Z
    .locals 2
    .param p0, "soundQualityData"    # J

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPlaySpeed(J)Z
    .locals 2
    .param p0, "soundQualityData"    # J

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->isDsd(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->isApe(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUhq(J)Z
    .locals 2
    .param p0, "soundQualityData"    # J

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSoundQualityTag(Landroid/widget/TextView;J)Z
    .locals 3
    .param p0, "tag"    # Landroid/widget/TextView;
    .param p1, "soundQualityData"    # J

    .prologue
    .line 171
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v0

    .line 172
    .local v0, "soundQuality":I
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->setTagBadge(Landroid/widget/TextView;I)Z

    move-result v1

    return v1
.end method

.method public static setTag(Landroid/widget/TextView;Landroid/widget/TextView;J)V
    .locals 4
    .param p0, "badge"    # Landroid/widget/TextView;
    .param p1, "details"    # Landroid/widget/TextView;
    .param p2, "soundQualityData"    # J

    .prologue
    .line 163
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v2

    .line 164
    .local v2, "soundQuality":I
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSamplingRate(J)I

    move-result v1

    .line 165
    .local v1, "samplingRate":I
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getBitDepth(J)I

    move-result v0

    .line 166
    .local v0, "bitDepth":I
    invoke-static {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->setTagBadge(Landroid/widget/TextView;I)Z

    .line 167
    invoke-static {p1, v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->setTagDetails(Landroid/widget/TextView;III)V

    .line 168
    return-void
.end method

.method private static setTagBadge(Landroid/widget/TextView;I)Z
    .locals 4
    .param p0, "badge"    # Landroid/widget/TextView;
    .param p1, "soundQuality"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    if-nez p0, :cond_0

    .line 195
    :goto_0
    return v1

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 194
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :pswitch_0
    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->uhq:I

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_uhq:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v2

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->dsd:I

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 189
    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_dsd:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v2

    .line 191
    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setTagDetails(Landroid/widget/TextView;III)V
    .locals 4
    .param p0, "details"    # Landroid/widget/TextView;
    .param p1, "soundQuality"    # I
    .param p2, "samplingRate"    # I
    .param p3, "bitDepth"    # I

    .prologue
    const/4 v3, 0x0

    .line 201
    if-nez p0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 218
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 208
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getBitDepth(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSamplingRate(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->convertDsdQuality(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
