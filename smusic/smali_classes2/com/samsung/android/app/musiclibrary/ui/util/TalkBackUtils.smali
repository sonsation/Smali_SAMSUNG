.class public final Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;
.super Ljava/lang/Object;
.source "TalkBackUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;
    }
.end annotation


# static fields
.field public static final COMMA:Ljava/lang/String; = ", "

.field private static sDurationDescriptions:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

.field private static sPlayingItemDescriptionCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlayingItemDescriptionSearchKey:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

.field private static sTitleNowPlaying:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sPlayingItemDescriptionSearchKey:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    .line 24
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sPlayingItemDescriptionCache:Landroid/util/LruCache;

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;

    const/16 v1, 0x258

    const-string v2, "DurationDescriptions"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sDurationDescriptions:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getTimeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResId"    # I

    .prologue
    .line 148
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_named_button:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 152
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_named_button:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonPercentDescription(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResId"    # I
    .param p2, "value"    # I

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResId"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secs"    # I

    .prologue
    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sDurationDescriptions:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->getValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayingItemDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 186
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sPlayingItemDescriptionSearchKey:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;->assign(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sPlayingItemDescriptionCache:Landroid/util/LruCache;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sPlayingItemDescriptionSearchKey:Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sTitleNowPlaying:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 195
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_title_nowplaying:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sTitleNowPlaying:Ljava/lang/String;

    .line 197
    :cond_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sTitleNowPlaying:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sPlayingItemDescriptionCache:Landroid/util/LruCache;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$PlayingItemDescriptionCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method public static getSeekBarDescription(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentTime"    # I
    .param p2, "totalTime"    # I

    .prologue
    .line 131
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seekbar_n_of_n:I

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 133
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 134
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 132
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getSeekBarDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSeekBarDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 123
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_slider:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "ttsSeekBar":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "ttsSeekBar":Ljava/lang/String;
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seekbar:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ttsSeekBar":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSelectAllDescription(Landroid/content/Context;ZI)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isChecked"    # Z
    .param p2, "checkCount"    # I

    .prologue
    .line 166
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_n_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "selectedCount":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 169
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_double_tap_to_deselect_all:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "selectAll":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 171
    .end local v0    # "selectAll":Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    .line 172
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_nothing_selected:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_1
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_double_tap_to_select_all:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "selectAll":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getStateButtonDescription(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResId"    # I
    .param p2, "stateStringResId"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I
    .param p2, "timeType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "timeString":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 117
    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    if-ne p1, v2, :cond_0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_1_second:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_1
    goto :goto_0

    .line 103
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seconds:I

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 107
    :pswitch_1
    if-ne p1, v2, :cond_1

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_1_minute:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_2
    goto :goto_0

    .line 107
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_minutes:I

    .line 108
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 111
    :pswitch_2
    if-ne p1, v2, :cond_2

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_1_hour:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_3
    goto :goto_0

    .line 111
    :cond_2
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_hours:I

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "isTalkBackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "accessibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 212
    const-string v2, "(?i).*TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 214
    :cond_0
    return v1
.end method

.method public static onLocaleChanged()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sTitleNowPlaying:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sPlayingItemDescriptionCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 182
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->sDurationDescriptions:Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->clear()V

    .line 183
    return-void
.end method

.method public static setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stringResId"    # I

    .prologue
    .line 65
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stringResId"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    if-nez p3, :cond_0

    .line 87
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_dimmed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    return-void
.end method

.method public static setContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stringResId"    # I

    .prologue
    .line 58
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static setStateButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stringResId"    # I
    .param p3, "stateStringResId"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method
