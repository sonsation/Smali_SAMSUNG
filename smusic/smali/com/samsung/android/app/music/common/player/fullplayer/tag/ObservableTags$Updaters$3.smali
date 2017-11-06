.class final enum Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;
.super Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$1;)V

    return-void
.end method

.method private updateMilkSoundQuality(Landroid/content/Context;JLandroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cpQuality"    # J
    .param p4, "ssb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 298
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->STREAM:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;->MILK:Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 299
    const-string v0, "  "

    invoke-virtual {p4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 301
    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getStreamingQualityResId(I)I

    move-result v0

    const-string/jumbo v1, "sec-roboto-light"

    const/4 v2, 0x1

    .line 302
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 300
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 303
    return-void
.end method


# virtual methods
.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 11
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p4, "index"    # I

    .prologue
    const/16 v10, 0x20

    .line 248
    if-nez p2, :cond_0

    .line 249
    const/4 v8, 0x0

    .line 293
    :goto_0
    return v8

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v4, p2

    .line 252
    check-cast v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;

    .line 254
    .local v4, "s":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;
    const/4 v2, 0x1

    .line 255
    .local v2, "needLeadingSpace":Z
    iget v8, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpName:I

    const/high16 v9, 0x10000

    if-eq v8, v9, :cond_1

    iget-boolean v8, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->isDrm:Z

    if-eqz v8, :cond_4

    .line 256
    :cond_1
    iget-boolean v8, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->isDrm:Z

    if-eqz v8, :cond_3

    .line 257
    sget-object v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v8, v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->STREAM:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;

    iget-object v8, v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;->DRM:Ljava/lang/CharSequence;

    invoke-virtual {p3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v9, v9, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->SEPARATOR_BUILDER:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v9, v9, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->STREAM:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;

    iget-object v9, v9, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Stream;->MP3:Ljava/lang/CharSequence;

    .line 258
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 288
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 289
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->addLeadingSpace(Landroid/view/View;)V

    .line 293
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    .line 260
    :cond_3
    const/4 v2, 0x0

    .line 261
    iget-wide v6, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->localQuality:J

    .line 262
    .local v6, "soundQualityData":J
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQuality(J)I

    move-result v3

    .line 263
    .local v3, "quality":I
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getBitDepth(J)I

    move-result v0

    .line 265
    .local v0, "bitDepth":I
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSamplingRate(J)I

    move-result v5

    .line 266
    .local v5, "samplingRate":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 268
    :pswitch_0
    sget-object v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v8, v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->QUALITY:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;

    iget-object v8, v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;->UHQ:Ljava/lang/CharSequence;

    invoke-virtual {p3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 269
    invoke-virtual {p3, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 270
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getBitDepth(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 271
    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 272
    invoke-static {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSamplingRate(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 271
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 275
    :pswitch_1
    sget-object v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v8, v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->QUALITY:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;

    iget-object v8, v8, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags$Quality;->DSD:Ljava/lang/CharSequence;

    invoke-virtual {p3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 276
    invoke-virtual {p3, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    const v9, 0x7f0a048b

    .line 277
    invoke-static {v1, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 278
    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 279
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->convertDsdQuality(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 285
    .end local v0    # "bitDepth":I
    .end local v3    # "quality":I
    .end local v5    # "samplingRate":I
    .end local v6    # "soundQualityData":J
    :cond_4
    iget v8, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpName:I

    const/high16 v9, 0x80000

    if-ne v8, v9, :cond_2

    .line 286
    iget-wide v8, v4, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$StreamType;->cpQuality:J

    invoke-direct {p0, v1, v8, v9, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->updateMilkSoundQuality(Landroid/content/Context;JLandroid/text/SpannableStringBuilder;)V

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;->removeLeadingSpace(Landroid/view/View;)V

    goto :goto_2

    .line 266
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
