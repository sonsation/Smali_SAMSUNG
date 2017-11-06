.class public Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;
.super Ljava/lang/Object;
.source "SearchManagerCompat.java"


# static fields
.field public static final SUGGEST_COLUMN_GROUP:Ljava/lang/String;

.field public static final SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

.field public static final SUGGEST_PARAMETER_END_TIME:Ljava/lang/String;

.field public static final SUGGEST_PARAMETER_START_TIME:Ljava/lang/String;

.field public static final SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "search_suggest_regex_query"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "suggest_target_type"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "suggest_group"

    :goto_2
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_GROUP:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "stime"

    :goto_3
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_PARAMETER_START_TIME:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_4

    const-string v0, "etime"

    :goto_4
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_PARAMETER_END_TIME:Ljava/lang/String;

    return-void

    .line 9
    :cond_0
    const-string/jumbo v0, "search_suggest_regex_query"

    goto :goto_0

    .line 13
    :cond_1
    const-string/jumbo v0, "suggest_target_type"

    goto :goto_1

    .line 17
    :cond_2
    const-string/jumbo v0, "suggest_group"

    goto :goto_2

    .line 21
    :cond_3
    const-string/jumbo v0, "stime"

    goto :goto_3

    .line 25
    :cond_4
    const-string v0, "etime"

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
