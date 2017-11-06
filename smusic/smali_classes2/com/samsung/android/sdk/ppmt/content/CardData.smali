.class public Lcom/samsung/android/sdk/ppmt/content/CardData;
.super Ljava/lang/Object;
.source "CardData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/content/CardData$Popup;,
        Lcom/samsung/android/sdk/ppmt/content/CardData$Notification;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_APPPARAM:Ljava/lang/String; = "appParam"

.field public static final ACTION_PKG:Ljava/lang/String; = "pkg"

.field public static final ACTION_REF:Ljava/lang/String; = "ref"

.field public static final ACTION_TYPE:Ljava/lang/String; = "type"

.field public static final ACTION_TYPE_API:Ljava/lang/String; = "api"

.field public static final ACTION_TYPE_APP:Ljava/lang/String; = "app"

.field public static final ACTION_TYPE_IGNORE:Ljava/lang/String; = "ignore"

.field public static final ACTION_TYPE_INTENT:Ljava/lang/String; = "intent"

.field public static final ACTION_TYPE_URL:Ljava/lang/String; = "url"

.field public static final ACTION_URL:Ljava/lang/String; = "url"

.field public static final API_CALL_MAX_RETRY:I = 0x5

.field public static final API_CALL_RETRY_DELAY_MILLIS:J = 0x36ee80L

.field public static final CARD_SAVE_TIME_MILLIS:J = 0x240c8400L

.field public static final CCTIME:Ljava/lang/String; = "cctime"

.field public static final COMPONENT_ACTIVITY:I = 0x1

.field public static final COMPONENT_RECEIVER:I = 0x2

.field public static final COMPONENT_SERVICE:I = 0x3

.field public static final CONTENTS:Ljava/lang/String; = "contents"

.field public static final CONTENTS_BASE_URL:Ljava/lang/String; = "bURL"

.field public static final CONTENTS_FILENAME:Ljava/lang/String; = "fname"

.field public static final DATA_TYPE_BOOLEAN:I = 0x1

.field public static final DATA_TYPE_DOUBLE:I = 0x9

.field public static final DATA_TYPE_FLOAT:I = 0xa

.field public static final DATA_TYPE_INT:I = 0x2

.field public static final DATA_TYPE_INT_ARRAY:I = 0x3

.field public static final DATA_TYPE_INT_ARRAYLIST:I = 0x4

.field public static final DATA_TYPE_LONG:I = 0x5

.field public static final DATA_TYPE_SHORT:I = 0xb

.field public static final DATA_TYPE_STRING:I = 0x6

.field public static final DATA_TYPE_STRING_ARRAY:I = 0x7

.field public static final DATA_TYPE_STRING_ARRAYLIST:I = 0x8

.field public static final DEFAULT_FREQ_CAPPING_OFF:I = -0x1

.field public static final DISPLAY_MAX_RETRY:I = 0x5

.field public static final DISPLAY_RETRY_DELAY_MILLIS:J = 0x1b7740L

.field public static final DISPLAY_TIME:Ljava/lang/String; = "cardDisplayTime"

.field public static final EVENT_MSG:Ljava/lang/String; = "event"

.field public static final FREQUENCY_CAPPING:Ljava/lang/String; = "freq"

.field public static final GET_CANCEL_STATUS_MAX_RETRY:I = 0x3

.field public static final IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

.field public static final INTENT_ACTION:Ljava/lang/String; = "action"

.field public static final INTENT_CLASS:Ljava/lang/String; = "cls"

.field public static final INTENT_COMPONENT:Ljava/lang/String; = "comp"

.field public static final INTENT_DATA:Ljava/lang/String; = "data"

.field public static final INTENT_EXTRA:Ljava/lang/String; = "extra"

.field public static final MARKETING_MSG:Ljava/lang/String; = "marketing"

.field public static final MARKETING_TYPE:Ljava/lang/String; = "marketingType"

.field public static final MARKETING_TYPE_NOTI:Ljava/lang/String; = "1"

.field public static final MARKETING_TYPE_POPUP:Ljava/lang/String; = "2"

.field public static final MAX_ACTION_COUNT:I = 0x5

.field public static final MID:Ljava/lang/String; = "mid"

.field public static final MID_MAX_LENGTH:I = 0x20

.field public static final MSGTYPE_MAX_LENGTH:I = 0x14

.field public static final OPTIN_CHECK:Ljava/lang/String; = "optin"

.field public static final PASSIVE_MSG:Ljava/lang/String; = "passive"

.field public static final PHONE_TYPE:Ljava/lang/String; = "type1"

.field public static final PHONE_TYPE_LOCALE:Ljava/lang/String; = "lang1"

.field public static final PLAYSTORE_REFERRER_KEY:Ljava/lang/String; = "referrer"

.field public static final RANDOM_RANGE:Ljava/lang/String; = "random"

.field public static final REFERRER_KEY:Ljava/lang/String; = "ppmtref"

.field public static final REFERRER_KEY_MID:Ljava/lang/String; = "mid"

.field public static final REQUEST_RESOURCE_DELAY_MILLIS:J = 0x36ee80L

.field public static final REQUEST_RESOURCE_MAX_RETRY:I = 0x5

.field public static final RESOURCE_PATH:Ljava/lang/String; = "/ppmt"

.field public static final RESPONSE_CANCEL_STATUS_CODE:I = 0x190

.field public static final RESPONSE_DISPLAY_STATUS_CODE:I = 0xc8

.field public static final RESPONSE_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final RES_IMAGE_PATH:Ljava/lang/String; = "/img"

.field public static final RES_TEXT_FILENAME:Ljava/lang/String; = "text.txt"

.field public static final RES_TEXT_PATH:Ljava/lang/String; = "/txt"

.field public static final STYLE:Ljava/lang/String; = "st"

.field public static final TABLET_TYPE:Ljava/lang/String; = "type2"

.field public static final TABLET_TYPE_LOCALE:Ljava/lang/String; = "lang2"

.field public static final TARGETID:Ljava/lang/String; = "targetid"

.field public static final TARGETID_MAX_LENGTH:I = 0x20

.field public static final TEST_MSG:Ljava/lang/String; = "test"

.field public static final TTL:Ljava/lang/String; = "ttl"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USERDATA:Ljava/lang/String; = "userdata"

.field public static final USERDATA_MAX_LENGTH:I = 0x2800


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JPG"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PNG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BMP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardData;->IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method public static getCardDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ppmt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCardImgFileDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCardTxtFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "text.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
